package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Registrationjdbc;
import com.model.Registration;


public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegistrationServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("save1");

		String s1=request.getParameter("name");
		String s2=request.getParameter("email");
		String s3=request.getParameter("username");
		String s4=request.getParameter("password1");
		String s5=request.getParameter("password2");
		System.out.println("in registration servlet"+s3+"  "+s5);
		System.out.println("save 2");
		Registration r= new Registration(); 
		System.out.println("save 3");
		r.setName(s1);
		r.setEmail(s2);
		r.setUsername(s3);
		r.setPassword1(s4);
		r.setPassword2(s5);
		
		List<Registration>lst = new LinkedList<Registration>();
		lst.add(r);
		System.out.println("save 4");
		
		Registrationjdbc db= new Registrationjdbc();
		int i=db.saveData(lst);
		System.out.println("save 5");
		db.displayData();
		if(i>0)
		{
		HttpSession pro = request.getSession(true);
	    pro.setAttribute("email", s2);
		response.sendRedirect("Login.jsp");
		}
		doGet(request, response);
	}

}
