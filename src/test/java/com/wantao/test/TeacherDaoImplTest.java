package com.wantao.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wantao.daoImpl.TeacherDaoImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring.xml" })
@Component
public class TeacherDaoImplTest {
	@Autowired
	TeacherDaoImpl teacherDaoImpl;

	@Test
	public void test1() {
		System.out.println(teacherDaoImpl.findTeacherById("1"));
	}
}
