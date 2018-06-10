package com.wantao.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wantao.bean.Subject;
import com.wantao.dao.SubjectMapper;

@Service
public class SubjectDaoImpl implements SubjectMapper {
	@Autowired
	SubjectMapper subjectMapper;

	public void addSubject(Subject subject) {
		subjectMapper.addSubject(subject);
	}

	public List<Subject> findAllSubject() {
		return subjectMapper.findAllSubject();
	}

	public Subject findSubjectById(int subjectId) {
		return subjectMapper.findSubjectById(subjectId);
	}

	public List<Integer> findAllSubjectId() {
		return subjectMapper.findAllSubjectId();
	}

	public void updateSubject(Subject subject) {
		subjectMapper.updateSubject(subject);
	}

	public void deleteSubject(int subjectId) {
		subjectMapper.deleteSubject(subjectId);
	}

	public List<Subject> findSubjectBySubjectTitle(String subjectTitle) {
		return subjectMapper.findSubjectBySubjectTitle(subjectTitle);
	}

	public List<Subject> randomFindSubject() {
		return subjectMapper.randomFindSubject();
	}

}
