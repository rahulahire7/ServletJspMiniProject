package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegisterJdbc;
import com.model.Register;


/**
 * Servlet implementation class registerServlet
 */
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String add = request.getParameter("add");
		String bldgrp = request.getParameter("bldgrp");
		long number = Long.parseLong(request.getParameter("number"));
		String email = request.getParameter("email");
		Register r=new Register();
		r.setUname(uname);
		r.setPass(pass);
		r.setAdd(add);
		r.setBldgrp(bldgrp);
		r.setNumber(number);
		r.setEmail(email);
		
		RegisterJdbc db=new RegisterJdbc();
		List<Register> lst=new LinkedList<Register>();
		lst.add(r);
		
		int i=db.saveData(lst);
		
		if(i>0)
		{
			
			response.sendRedirect("Login.jsp");
		}
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
