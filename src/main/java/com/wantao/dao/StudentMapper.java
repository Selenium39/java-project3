package com.wantao.dao;

import java.util.List;

import com.wantao.bean.Student;

public interface StudentMapper {
  void addStudent(Student studnet);
  Student findStudentByStudentId(String studentId);
  List<Student>findAllStudent();
  List<String>findAllStudentId();
  void updateStudent(Student student);
  void deleteStudent(String studentId);
}
