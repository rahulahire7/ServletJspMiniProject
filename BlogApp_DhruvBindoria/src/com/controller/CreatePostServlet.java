package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JdbcOps;
import com.model.Post;
import com.model.User;

public class CreatePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Post p = new Post();
		JdbcOps db = new JdbcOps();
		ArrayList<Post> lst = new ArrayList<Post>();
		
		HttpSession session = request.getSession(false);
		
		User u = (User)session.getAttribute("userdata");
		
		p.setUserid(u.getUserid());
		p.setTitle(request.getParameter("title"));
		p.setParagraph(request.getParameter("paragraph"));
		
		
		lst.add(p);
		
		
		int i = db.insertIntoPostInfo(lst);
		
		
		if(i > 0)
			response.sendRedirect("ListUserPostServlet");
		else
			response.sendRedirect("CreatePost.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
