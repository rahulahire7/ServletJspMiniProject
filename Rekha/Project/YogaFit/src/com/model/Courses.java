package com.model;

public class Courses {
	private String Course_name;
	private String user_name;
	private int duration;
	private int hrs_per_week;
	private int hrs_per_day;
	
	//setter and getter
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getCourse_name() {
		return Course_name;
	}
	public void setCourse_name(String course_name) {
		Course_name = course_name;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getHrs_per_week() {
		return hrs_per_week;
	}
	public void setHrs_per_week(int hrs_per_week) {
		this.hrs_per_week = hrs_per_week;
	}
	public int getHrs_per_day() {
		return hrs_per_day;
	}
	public void setHrs_per_day(int hrs_per_day) {
		this.hrs_per_day = hrs_per_day;
	}
	

}
