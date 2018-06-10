package com.wantao.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wantao.bean.Student;
import com.wantao.dao.StudentMapper;
@Service
public class StudentDaoImpl implements StudentMapper {
	@Autowired
    StudentMapper studentMapper;
	public void addStudent(Student student) {
      studentMapper.addStudent(student);
	}
	public Student findStudentByStudentId(String studentId) {
		return studentMapper.findStudentByStudentId(studentId);
	}
	public List<Student> findAllStudent() {
		return studentMapper.findAllStudent();
	}
	public List<String> findAllStudentId() {
		return studentMapper.findAllStudentId();
	}
	public void updateStudent(Student student) {
        studentMapper.updateStudent(student);		
	}
	public void deleteStudent(String studentId) {
		studentMapper.deleteStudent(studentId);
		
	}

}
