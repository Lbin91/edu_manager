import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/student.dart';
import '../providers/student_controller.dart';

class StudentFormScreen extends ConsumerStatefulWidget {
  final Student? student; // If null, it's Add mode. If not, Edit mode.

  const StudentFormScreen({super.key, this.student});

  @override
  ConsumerState<StudentFormScreen> createState() => _StudentFormScreenState();
}

class _StudentFormScreenState extends ConsumerState<StudentFormScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _schoolController;
  late TextEditingController _parentPhoneController;
  late TextEditingController _studentPhoneController;
  late TextEditingController _addressController;
  int _grade = 1;

  @override
  void initState() {
    super.initState();
    final s = widget.student;
    _nameController = TextEditingController(text: s?.name);
    _schoolController = TextEditingController(text: s?.schoolName);
    _parentPhoneController = TextEditingController(text: s?.parentPhone);
    _studentPhoneController = TextEditingController(text: s?.studentPhone);
    _addressController = TextEditingController(text: s?.address);
    _grade = s?.grade ?? 1;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _schoolController.dispose();
    _parentPhoneController.dispose();
    _studentPhoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_formKey.currentState!.validate()) {
      final student =
          widget.student?.copyWith(
            name: _nameController.text,
            schoolName: _schoolController.text,
            grade: _grade,
            parentPhone: _parentPhoneController.text,
            studentPhone: _studentPhoneController.text,
            address: _addressController.text,
          ) ??
          Student(
            id: '', // Will be generated in Repo
            name: _nameController.text,
            schoolName: _schoolController.text,
            grade: _grade,
            parentPhone: _parentPhoneController.text,
            studentPhone: _studentPhoneController.text,
            address: _addressController.text,
          );

      if (widget.student == null) {
        await ref.read(studentControllerProvider.notifier).addStudent(student);
      } else {
        await ref
            .read(studentControllerProvider.notifier)
            .updateStudent(student);
      }

      if (mounted) context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.student != null;
    return Scaffold(
      appBar: AppBar(title: Text(isEditing ? '원생 정보 수정' : '원생 등록')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: '이름',
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.isEmpty ? '이름을 입력하세요' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<int>(
                value: _grade,
                decoration: const InputDecoration(
                  labelText: '학년',
                  border: OutlineInputBorder(),
                ),
                items: List.generate(13, (index) {
                  // 0: 유치부, 1~12: 초중고
                  String label = index == 0 ? '유치부' : '$index학년';
                  return DropdownMenuItem(value: index, child: Text(label));
                }),
                onChanged: (val) => setState(() => _grade = val!),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _schoolController,
                decoration: const InputDecoration(
                  labelText: '학교/유치원',
                  border: OutlineInputBorder(),
                ),
                validator: (v) => v!.isEmpty ? '학교를 입력하세요' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _parentPhoneController,
                decoration: const InputDecoration(
                  labelText: '학부모 연락처',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (v) => v!.isEmpty ? '연락처를 입력하세요' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _studentPhoneController,
                decoration: const InputDecoration(
                  labelText: '학생 연락처 (선택)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: '주소 (선택)',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: FilledButton(onPressed: _save, child: const Text('저장')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
