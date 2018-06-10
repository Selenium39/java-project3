package com.wantao.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wantao.bean.Subject;
import com.wantao.daoImpl.SubjectDaoImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring.xml" })
@Component
public class SubjectDaoImplTest {
	@Autowired
	SubjectDaoImpl subjectDaoImpl;
	@Autowired
	Subject subject;

	// @Test
	public void test1() {
		subjectDaoImpl.addSubject(subject);
	}

	// @Test
	public void test2() {
		List<Subject> subjects = subjectDaoImpl.findAllSubject();
		for (Subject subject : subjects) {
			System.out.println(subject.toString());
		}
	}

	//@Test
	public void test3() {
		Subject subject = subjectDaoImpl.findSubjectById(1);
		System.out.println(subject.toString());
	}

	//@Test
	public void test4() {
		List<Integer> ids = subjectDaoImpl.findAllSubjectId();
		for(int id:ids) {
			System.out.println(id);
		}
	}
	//@Test
	public void test5() {
		subjectDaoImpl.deleteSubject(26);
	}
	//@Test
	public void test6() {
		List<Subject>subjects=subjectDaoImpl.findSubjectBySubjectTitle("二进制");
		for (Subject subject : subjects) {
			System.out.println(subject.toString());
		}
		
	}
	@Test
	public void test7() {
	   List<Subject>subjects=subjectDaoImpl.randomFindSubject();
	   for (Subject subject : subjects) {
			System.out.println(subject.toString());
		}
	}

}
