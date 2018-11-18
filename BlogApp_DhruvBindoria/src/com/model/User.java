package com.model;

public class User {
	
	private int userid;
	private String uname;
	private String email;
	private double mobno;
	private String pass;
	
	public int getUserid() {
		return userid;
	}
	
	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUname() {
		return uname;
	}
	
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public double getMobno() {
		return mobno;
	}
	
	public void setMobno(double mobno) {
		this.mobno = mobno;
	}
	
	public String getPass() {
		return pass;
	}
	
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	@Override
	public String toString() {
		return "User [userid=" + userid + ", uname=" + uname + ", email=" + email + ", mobno=" + mobno + ", pass="
				+ pass + "]";
	}
}
