package com.wantao.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wantao.bean.Student;
import com.wantao.daoImpl.StudentDaoImpl;
@RunWith(SpringJUnit4ClassRunner.class)//自动创建spring上下文
@ContextConfiguration({"classpath:spring/spring.xml"})//加载spring的配置文件
@Component
public class StudentDaoImplTest {
	@Autowired(required=true)
	Student student;//通过xml注册的bean
	@Autowired(required=true)
	StudentDaoImpl studentDaoImpl;//通过注解@Service注册的bean
	/*@Test
	public void test1() {
		studentDaoImpl.addStudent(student);
		
	}*/
	//@Test
	public void test2() {
		String studentId="161003530106";
		System.out.println(studentDaoImpl.findStudentByStudentId(studentId).toString());
	}
	//@Test
	public void test3() {
		List<Student> students=studentDaoImpl.findAllStudent();
		for(Student student:students) {
			System.out.println(student.toString());
		}
	}
	@Test
	public void test4() {
		List<String>ids=studentDaoImpl.findAllStudentId();
		for(String id:ids) {
			System.out.println(id);
		}
	}
}
