# 🍎 에듀패스 (EduManager) - 스마트 원생 & 차량 관리 시스템

> **6.5년 차 iOS 개발자의 역량을 담은 서버리스 기반의 학원 운영 최적화 솔루션**
> 
> 학원 현장에서 발생하는 복잡한 원생 관리, 출결 체크, 그리고 실시간 차량 배차 문제를 해결하기 위한 모바일 전용 서비스입니다.

---

## 1. 프로젝트 개요
- **개발 기간**: 2026.01 ~ (진행 중)
- **주요 목적**: 
    - 학원 원생의 등/하원 및 차량 탑승 상태 실시간 관리
    - 선생님 및 차량 기사 간의 즉각적인 정보 공유 (푸시 알림)
    - **초대 코드 기반의 폐쇄형 커뮤니티** (보안 및 권한 관리 강화)
- **타겟 사용자**: 
    - **학원 관리자(Admin)**: 원장님 (계정 승인 및 전반적 관리)
    - **선생님(Teacher)**: 원생 관리 및 출결 확인
    - **차량 담당(Driver)**: 셔틀 운행 및 탑승 체크
    - **(제외)**: 학부모 및 학생용 앱은 현재 버전(MVP)에 포함하지 않음.

---

## 2. 주요 기능 (MVP)

### � 인증 및 권한 관리 (Auth & RBAC)
- **소셜 로그인**: Google, Apple 로그인만 지원.
- **초대 코드 시스템**:
    1. 소셜 로그인 완료.
    2. '초대 코드 입력' 화면 진입.
    3. 코드 검증 성공 시 가입 요청 상태로 전환.
    4. 관리자(Admin) 승인 후 서비스 이용 가능.
- **역할(Role)**: Admin, Teacher, Driver.

### 🚌 차량 운행 시스템 (Shuttle)
- **노선 관리**:
    - **고정 노선 (Fixed Route)**: 정해진 시간표대로 모든 정류장 경유.
    - **변형 노선 (Dynamic Route)**: 해당 회차에 탑승/하차 예정인 학생이 없는 정류장은 자동으로 건너뜀 (활성화 되지 않음).
- **운행 모드 (Driver App)**:
    - 기사님은 앱에서 '운행 시작' 후 정류장별 학생 목록 확인.
    - 학생 탑승 시 '탑승 완료' 버튼 터치 -> 즉시 서버 동기화.
    - 해당 회차 운행 종료 기능.

### � 출결 및 스케줄링 (Attendance & Schedule)
- **출결 기준**: 차량 이용 학생의 경우, **차량 탑승 시점**을 등원으로 간주.
- **스케줄 관리**:
    - 요일별 고정 등/하원 시간 설정.
    - **변동 스케줄(Temporary Schedule)**: 보강, 결석 등으로 인한 일회성 시간 변경 지원.

### 🔔 알림 (Notification)
- **내부 커뮤니케이션용**: 선생님 및 기사님에게만 발송.
    - 예: 차량 출발/도착 알림, 스케줄 변경 사항 등.
- 학부모 알림(SMS/Push)은 MVP 제외.

---

## 3. 기술 스택 (Tech Stack)

### Client
- **Framework**: Flutter (Cross-platform)
- **Language**: Dart
- **State Management**: Riverpod (Recommended) or BLoC
- **Local DB**: Isar / Hive (NoSQL based, fast) or SQLite

### Backend (Firebase Serverless)
- **Auth**: Firebase Auth (Google, Apple)
- **Database**: Firestore (NoSQL)
- **Functions**: Cloud Functions (초대 코드 검증, 알림 트리거, 노선 최적화 로직)
- **Storage**: Firebase Storage (프로필 사진 등)

---

## 4. 데이터 구조 설계 (Supabase PostgreSQL Schema)

> **Note**: 모든 테이블은 `created_at`, `updated_at` 타임스탬프를 포함합니다.

### Table: `users` (사용자 정보)
- `id`: UUID (PK, References `auth.users.id`)
- `email`: String (Not Null)
- `name`: String
- `role`: Enum ("admin", "teacher", "driver", "pending")
- `academy_id`: UUID (FK, References `academies.id`)
- `fcm_token`: String
- `social_provider`: String ("google", "apple") - *UI 표시용 (Option)*

### Table: `academies` (학원 정보)
- `id`: UUID (PK)
- `name`: String
- `invite_code`: String (Unique, Index)

### Table: `students` (원생 정보)
- `id`: UUID (PK)
- `academy_id`: UUID (FK)
- `name`: String
- `school_name`: String
- `grade`: Integer
- `parent_phone_primary`: String (Not Null)
- `parent_phone_secondary`: String (Nullable)
- `sibling_ids`: UUID[] (Array of Student IDs, Nullable) - *형제/자매 연결*
- `address`: String

### Table: `master_stops` (기본 정류장 정보)
- `id`: UUID (PK)
- `academy_id`: UUID (FK)
- `name`: String (Not Null)
- `lat`: Double (Nullable)
- `lng`: Double (Nullable)

### Table: `shuttle_routes` (통합 노선 및 스케줄)
- `id`: UUID (PK)
- `academy_id`: UUID (FK)
- `name`: String (e.g., "1호차 A코스")
- `driver_id`: UUID (FK, References `users.id`)
- `car_number`: String
- `departure_time`: Time (e.g., "14:50")
- `stops`: JSONB (Array of Stop Objects)
    - `stop_id`: UUID (References `master_stops.id`)
    - `name`: String (Snapshot/Override)
    - `scheduled_time`: Time
    - `sequence_order`: Integer

### Table: `daily_attendance` (일일 출결/탑승 기록)
- `id`: UUID (PK)
- `date`: Date (Index)
- `student_id`: UUID (FK)
- `route_id`: UUID (FK, References `shuttle_routes.id`)
- `stop_id`: UUID (References `master_stops.id`)
- `status`: Enum ("waiting", "boarded", "dropoff", "absent")
- `check_in_time`: Timestamp
- `check_out_time`: Timestamp

---

## 5. 단계별 개발 계획
1. **프로젝트 초기화**: Xcode 프로젝트 생성, Firebase 연동, TCA 세팅.
2. **인증 시스템**: 소셜 로그인 UI + 초대 코드 로직 구현.
3. **데이터 관리 (Admin)**: 학생, 선생님, 차량 노선 등록/수정 기능.
4. **차량 운행 (Driver)**: 운행 리스트 뷰, 탑승 체크 액션 개발.
5. **출결 대시보드 (Teacher)**: 실시간 탑승 현황 조회 뷰.
6. **테스트 및 배포**: TestFlight 배포 및 현장 테스트.