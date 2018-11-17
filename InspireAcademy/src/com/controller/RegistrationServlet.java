package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DataJdbc;
import com.model.Register;


/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1=request.getParameter("name");
		String s2=request.getParameter("email");
		String s3=request.getParameter("username");
		String s4=request.getParameter("pwd1");
		String s5=request.getParameter("pwd2");
		Register r= new Register(); 
		System.out.println("save 3");
		r.setName(s1);
		r.setEmail(s2);
		r.setUsername(s3);
		r.setPwd1(s4);
		r.setPwd2(s5);
		List<Register>lst = new LinkedList<Register>();
		lst.add(r);
		System.out.println("save 4");
		DataJdbc db= new DataJdbc();
		int i=db.saveData(lst);
		System.out.println("save 5");
		db.displayData();
		if(i>0)
		{
		response.sendRedirect("Login.jsp");
		}
		else
		{
			System.out.println("Hello");
		}
		}




	}


