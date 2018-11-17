package com.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.*;
/**
 * Servlet implementation class SignupServlet
 */
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("hii");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		
		String password=request.getParameter("password");
		System.out.println(name);
	Signup s=new Signup();
	s.setName(name);
	s.setEmail(email);
	s.setPassword(password);
	
	List<Signup> lst=new ArrayList<Signup>(); //List created of type Signup
	lst.add(s);
	Jdbc jd=new Jdbc();
	int i=jd.saveData(lst); //insert row into Register table
	if(i>0)
	{
		System.out.println(i+ "inserted");
		response.sendRedirect("index.jsp"); //redirect to index.jsp
	}
	}

}
