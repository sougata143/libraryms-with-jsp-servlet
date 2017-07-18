package com.library.bean;

public class IssueBook {
	
	private int id,studentid;
	private String bookcallno,studentname,studentcontact,issueddate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStudentid() {
		return studentid;
	}
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}
	public String getBookcallno() {
		return bookcallno;
	}
	public void setBookcallno(String bookcallno) {
		this.bookcallno = bookcallno;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getStudentcontact() {
		return studentcontact;
	}
	public void setStudentcontact(String studentcontact) {
		this.studentcontact = studentcontact;
	}
	public String getIssueddate() {
		return issueddate;
	}
	public void setIssueddate(String issueddate) {
		this.issueddate = issueddate;
	}

}
