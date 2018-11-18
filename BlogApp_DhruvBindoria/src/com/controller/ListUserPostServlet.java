package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JdbcOps;
import com.model.Post;
import com.model.User;

public class ListUserPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//HttpSession session = request.getSession();
		//User u = (User)session.getAttribute("userdata");

		HttpSession session = request.getSession(false);
		User u = (User)session.getAttribute("userdata");
		System.out.println(u);
		JdbcOps db = new JdbcOps();
		ArrayList<Post> lst = db.getAllUserCreatedPosts(u.getUserid());		
		System.out.println(lst);
		if(lst == null) {
			response.sendRedirect("Profile.jsp");
			System.out.println("Post list is empty");
		}
		else {

			session.setAttribute("userPostData", lst);
			response.sendRedirect("Profile.jsp");

			/*
			//for doing the same with RequestDispatcher.. don't forget to change sessionScope to requestScope in the Profile.jsp file
			request.setAttribute("userPostData", lst);
			RequestDispatcher view = request.getRequestDispatcher("Profile.jsp");
			view.forward(request, response); 
			 */
		}

	}

}
