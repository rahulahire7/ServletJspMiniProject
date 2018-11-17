package com.model;

public class Registration {

	
	private String name;
	private String email;
	private String username;
	private String password1;
	private String password2;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword1() {
		return password1;
	}
	@Override
	public String toString() {
		return "Registration [name=" + name + ", email=" + email + ", username=" + username + ", password1=" + password1
				+ ", password2=" + password2 + "]";
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	



	}

