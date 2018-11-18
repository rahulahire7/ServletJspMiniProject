package com.model;

public class Post {
	private int postid;
	private int userid;
	private String title;
	private String paragraph;
	
	public int getPostid() {
		return postid;
	}

	public void setPostid(int postid) {
		this.postid = postid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getUserid() {
		return userid;
	}

	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getParagraph() {
		return paragraph;
	}
	
	public void setParagraph(String paragraph) {
		this.paragraph = paragraph;
	}

	@Override
	public String toString() {
		return "Post [postid=" + postid + ", userid=" + userid + ", title=" + title + ", paragraph=" + paragraph + "]";
	}
	
}
