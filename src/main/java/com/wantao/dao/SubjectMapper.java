package com.wantao.dao;

import java.util.List;

import com.wantao.bean.Subject;

public interface SubjectMapper {
	void addSubject(Subject subject);

	List<Subject> findAllSubject();

	Subject findSubjectById(int subjectId);

	List<Integer> findAllSubjectId();
	
	void updateSubject(Subject subject);
	
	void deleteSubject(int subjectId);
	
	List<Subject>findSubjectBySubjectTitle(String subjectTitle);
	
	List<Subject>randomFindSubject();
}
