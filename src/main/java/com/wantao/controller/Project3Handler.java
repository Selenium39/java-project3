package com.wantao.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wantao.bean.Student;
import com.wantao.bean.Subject;
import com.wantao.bean.Teacher;
import com.wantao.daoImpl.StudentDaoImpl;
import com.wantao.daoImpl.SubjectDaoImpl;
import com.wantao.daoImpl.TeacherDaoImpl;

@Controller
public class Project3Handler {
	@Autowired
	StudentDaoImpl studentDaoImpl;
	@Autowired
    TeacherDaoImpl teacherDaoImpl;
	@Autowired
	SubjectDaoImpl subjectDaoImpl;
	@Autowired
	PageHelper pageHelper;
	
	/*
	 * 1.登录注册逻辑
	 * */
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(Student student) {// 可以直接通过javaBean对象传递
		studentDaoImpl.addStudent(student);
		return "index";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String userId, String password, String role) {
		if (role.equals("student")) {//学生登录
			Student student = studentDaoImpl.findStudentByStudentId(userId);
			if (student == null || !(student.getPassword().equals(password))) {
				return "loginError";
			}
			return "redirect:studentIndex.jsp";
		}
		if(role.equals("teacher")) {//老师登录
			Teacher teacher=teacherDaoImpl.findTeacherById(userId);
			if (teacher == null || !(teacher.getPassword().equals(password))) {
				return "loginError";
			}
			return "teacherIndex";
		}
		return "redirect:login.jsp";
	}
	
	/*
	 * 2.老师后台管理逻辑
	 * */
	
	@RequestMapping("/addSubject")
	public String addSubject(Subject subject,HttpSession session) {
		session.setAttribute("url","/addSubject");
		subjectDaoImpl.addSubject(subject);
		return "redirect:success.jsp";
		
	}
	@RequestMapping("/controlSubject")
	public String controlSubject(@RequestParam(value="pn",defaultValue="1") Integer pn,HttpSession session) {
		int pageSize=10;
		pageHelper.startPage(pn, pageSize);
		//只有startPage后面的第一条select才会被分页之后的需要再次startPage
		List<Subject>subjects=subjectDaoImpl.findAllSubject();
		List<Integer>ids=subjectDaoImpl.findAllSubjectId();
		PageInfo pageInfo=new PageInfo(subjects);//没想明白这个subjects怎么在spring.xml中得到，就直接new了
		session.setAttribute("PageInfo",pageInfo);
		session.setAttribute("ids",ids);
		return "redirect:controlSubject.jsp";
	}
	@RequestMapping("/showSubject")
	 public String showSubject(@RequestParam(value="num",defaultValue="1")int num,HttpSession session) {
		 Subject subject=subjectDaoImpl.findSubjectById(num);
		 if(subject==null) {
			return "controlSubject"; 
		 }
		 session.setAttribute("subject", subject);
		 return "redirect:showSubject.jsp";
	 }
	@RequestMapping(value="/beforeUpdateSubject")
	public String updateSubject(@RequestParam(value="num",defaultValue="1")int num,HttpSession session) {
		Subject subject=subjectDaoImpl.findSubjectById(num);
		 if(subject==null) {
			return "controlSubject"; 
		 }
		 session.setAttribute("subject", subject);
		 return "redirect:updateSubject.jsp";
	}
	@RequestMapping("/updateSubject")
	public String updateSubject(@RequestParam(value="num",defaultValue="1")int num,Subject subject,HttpSession session) {
		subject.setSubjectId(num);
		subjectDaoImpl.updateSubject(subject);
		session.setAttribute("url", "/updateSubject");
		return "redirect:success.jsp";
	}
	@RequestMapping("/deleteSubject")
	public String deleteSubject(@RequestParam(value="num",defaultValue="1")int num,HttpSession session) {
		subjectDaoImpl.deleteSubject(num);
		session.setAttribute("url","/deleteSubject");
		return "redirect:success.jsp";
	}
	@RequestMapping(value="/findSubject",method=RequestMethod.POST)
	public String findSubject(String subjectTitle,@RequestParam(value="pn",defaultValue="1")int pn,HttpSession session) {
        int pageSize=10;
        pageHelper.startPage(pn, pageSize);
        List<Subject>subjects=subjectDaoImpl.findSubjectBySubjectTitle(subjectTitle); 
        List<Integer>ids=subjectDaoImpl.findAllSubjectId();
        PageInfo pageInfo=new PageInfo(subjects);
        session.setAttribute("PageInfo",pageInfo);
		session.setAttribute("ids",ids);
		return "redirect:findSubjectResult.jsp";
	}
	@RequestMapping(value="/findStudent")
	public String findStudent(@RequestParam(value="pn",defaultValue="1")int pn,HttpSession session) {
		int pageSize=10;
        pageHelper.startPage(pn, pageSize);
        List<Student>students=studentDaoImpl.findAllStudent();
        List<String>ids=studentDaoImpl.findAllStudentId();
        PageInfo pageInfo=new PageInfo(students);
        session.setAttribute("PageInfo",pageInfo);
		session.setAttribute("ids",ids);
		return "redirect:findStudent.jsp";	
	}
	@RequestMapping("/beforeUpdateStudent")
	public String beforeUpdateStudent(@RequestParam("num")String num,HttpSession session) {
		Student student=studentDaoImpl.findStudentByStudentId(num);
		session.setAttribute("student",student);
		return "redirect:updateStudent.jsp";
	}
	@RequestMapping("/updateStudent")
	public String updateStudent(@RequestParam("num")String num,HttpSession session,Student student) {
		student.setStudentId(num);
		studentDaoImpl.updateStudent(student);
		session.setAttribute("url","/updateStudent");
		return "redirect:success.jsp";
	}
	@RequestMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("num")String num,HttpSession session) {
		studentDaoImpl.deleteStudent(num);
		session.setAttribute("url","/deleteStudent");
		return "redirect:success.jsp";
	}
	
	/*
	 * 3.学生后台管理逻辑
	 * */
	@RequestMapping("/exam")
	public String exam(@RequestParam(value="pn",defaultValue="1")int num ,HttpSession session) {
		int pageSize=10;
		List<Subject>subjects=subjectDaoImpl.randomFindSubject();
		List<Integer>subjectIds=new ArrayList<Integer>();
		for(Subject subject:subjects) {
		   subjectIds.add(subject.getSubjectId());
		}
		session.setAttribute("subjects",subjects);
		session.setAttribute("subjectIds", subjectIds);
		return "redirect:exam.jsp";
	}
	@RequestMapping(value="/getScore",method=RequestMethod.POST)
	public String getScore(HttpServletRequest request,HttpSession session) {
		int score=0;
		List<Integer>subjectIds=(List<Integer>) session.getAttribute("subjectIds");
		List<String> userAnswers=new ArrayList<String>();
		List<String> subjectAnswers=new ArrayList<String>();
		for(int i=0;i<20;i++) {//获取用户选择
			userAnswers.add(request.getParameter("subjectOption-"+subjectIds.get(i)));
		}
		for(int i=0;i<20;i++) {//从数据库中获取答案
			subjectAnswers.add(subjectDaoImpl.findSubjectById(subjectIds.get(i)).getSubjectAnswer());
		}
		for(int i=0;i<20;i++) {
			if((userAnswers.get(i)).equals(subjectAnswers.get(i))) {
				score+=5;
			}
			else {
				score+=0;
			}
		}
		session.setAttribute("score",score);
		return "redirect:score.jsp";
		
	}

}
