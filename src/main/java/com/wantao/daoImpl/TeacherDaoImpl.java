package com.wantao.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wantao.bean.Teacher;
import com.wantao.dao.TeacherMapper;
@Service
public class TeacherDaoImpl implements TeacherMapper { 
	@Autowired
	TeacherMapper teacherMapper;
	public Teacher findTeacherById(String teacherId) {
		return teacherMapper.findTeacherById(teacherId);
	}

}
