package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;

import com.dao.JdbcOps;
import com.model.Post;


public class ListAllPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JdbcOps db = new JdbcOps();
		Post p = new Post();
		
		ArrayList<Post> lst = db.getAllPosts();
		
		request.setAttribute("allPostData", lst);
		RequestDispatcher view = request.getRequestDispatcher("Home.jsp");
		view.forward(request, response);
		
		/*
		request.setAttribute("allPostData", lst);
		this.getServletContext().getRequestDispatcher("Home.jsp").
	    forward(request, response);
	    */
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
