package com.model;

public class Book {

	private String bookId;
	private String bookName;
	private String author;
	private String category;
	
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	public String getBookId() {
		return bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public String getAuthor() {
		return author;
	}
	public String getCategory() {
		return category;
	}
	
}
