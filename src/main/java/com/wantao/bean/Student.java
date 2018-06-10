package com.wantao.bean;

public class Student {
   private String studentId;
   private String studentName;
   private String password;
   private Integer score;
   private String sclass;//class
public String getStudentId() {
	return studentId;
}
public void setStudentId(String studentId) {
	this.studentId = studentId;
}
public String getStudentName() {
	return studentName;
}
public void setStudentName(String studentName) {
	this.studentName = studentName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Integer getScore() {
	return score;
}
public void setScore(Integer score) {
	this.score = score;
}
public String getSclass() {
	return sclass;
}
public void setSclass(String sclass) {
	this.sclass = sclass;
}
@Override
public String toString() {
	return "Student [studentId=" + studentId + ", studentName=" + studentName + ", password=" + password + ", score="
			+ score + ", sclass=" + sclass + "]";
}
}
