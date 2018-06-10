package com.wantao.bean;

public class Teacher {
	private String teacherId;
	private String password;
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Teacher [teacherId=" + teacherId + ", password=" + password + "]";
	}

}
