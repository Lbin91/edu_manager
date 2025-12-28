# Supabase Server Setup Guide

이 문서는 **EduManager** 프로젝트를 위한 Supabase 백엔드 설정 방법을 안내합니다.

## 1. Supabase 프로젝트 생성

1. [Supabase 대시보드](https://supabase.com/dashboard)에 접속하여 로그인합니다.
2. **New Project**를 클릭하여 새로운 프로젝트를 생성합니다.
3. **Organization**을 선택하고, **Project Name** (예: `edu_manager`)을 입력합니다.
4. **Database Password**를 설정하고 안전한 곳에 저장합니다.
5. **Region**을 선택합니다 (서비스 대상 지역과 가까운 곳, 예: `Seoul`).
6. **Create new project**를 클릭하고 프로젝트가 준비될 때까지 기다립니다.

## 2. 데이터베이스 스키마 설정

프로젝트가 생성되면, SQL 에디터를 사용하여 데이터베이스 테이블과 정책을 생성해야 합니다.

1. Supabase 대시보드 왼쪽 메뉴에서 **SQL Editor**를 클릭합니다.
2. **New query**를 클릭합니다.
3. 프로젝트 루트의 `database/schema.sql` 파일 내용을 복사하여 쿼리 에디터에 붙여넣습니다.
4. **Run** 버튼을 클릭하여 스키마를 적용합니다.

> **참고**: `database/schema.sql` 파일에는 다음 테이블들이 정의되어 있습니다:
> - `users` (사용자 정보)
> - `academies` (학원 정보)
> - `students` (원생 정보)
> - `master_stops` (기본 정류장)
> - `shuttle_routes` (셔틀 노선)
> - `daily_attendance` (출결 기록)
>
> 또한, 기본적인 RLS(Row Level Security) 정책이 포함되어 있습니다.

## 3. Authentication 설정

### 3.1 이메일 로그인 (기본)
- 기본적으로 활성화되어 있습니다.

### 3.2 소셜 로그인 (Google / Apple)
앱에서 소셜 로그인을 지원하려면 Supabase Auth 설정이 필요합니다.

1. 대시보드 왼쪽 메뉴에서 **Authentication** > **Providers**를 선택합니다.
2. **Google** 및 **Apple** 프로바이더를 각각 활성화하고 필요한 Client ID 및 Secret을 입력합니다.
   - [Google 로그인 설정 가이드](https://supabase.com/docs/guides/auth/social-login/auth-google)
   - [Apple 로그인 설정 가이드](https://supabase.com/docs/guides/auth/social-login/auth-apple)

## 4. 환경 변수 설정 (.env)

Flutter 앱에서 Supabase에 연결하려면 API URL과 Anon Key가 필요합니다.

1. 대시보드 왼쪽 메뉴에서 **Project Settings** (톱니바퀴 아이콘) > **API**를 선택합니다.
2. **Project URL**과 **Project API keys (anon, public)** 값을 확인합니다.
3. 프로젝트 루트 디렉토리에 `.env` 파일이 없다면 생성합니다 (또는 기존 파일 수정).
4. 아래와 같이 값을 입력합니다:

```env
SUPABASE_URL=https://your-project-id.supabase.co
SUPABASE_ANON_KEY=your-anon-key-here
```

## 5. (선택 사항) Edge Functions 및 기타
- 초대 코드 검증이나 복잡한 비즈니스 로직이 필요한 경우 Supabase Edge Functions를 사용할 수 있습니다.
- 현재 스키마는 기본적인 데이터 구조와 RLS를 포함하고 있으며, 추가적인 트리거 함수나 프로시저는 필요에 따라 SQL 에디터에서 추가할 수 있습니다.

---
**설정 완료!** 이제 앱을 실행하여 Supabase 백엔드와 통신할 수 있습니다.
