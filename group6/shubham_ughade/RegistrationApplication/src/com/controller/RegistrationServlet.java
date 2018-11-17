package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegistrationJdbc;
import com.model.Registration;

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
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RegistrationJdbc rj = new RegistrationJdbc();
		String s1=request.getParameter("regNo");
		String s2=request.getParameter("uname");
		String s3=request.getParameter("pass");
		String s4=request.getParameter("bal");
		int regNo=Integer.parseInt(s1);
		double bal = Double.parseDouble(s4);
		Registration r = new Registration();
		r.setRegNo(regNo);
		r.setUname(s2);
		r.setPass(s3);
		r.setBal(bal);
		
		LinkedList<Registration> lst = new LinkedList<Registration>();
		lst.add(r);
		rj.saveData(lst);
		response.sendRedirect("login.jsp");
		doGet(request, response);
	}

}
