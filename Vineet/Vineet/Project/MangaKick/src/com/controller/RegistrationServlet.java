package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DBApplication;
import com.model.Register;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("test1");
		String s1=request.getParameter("inputName");
		String s2=request.getParameter("inputEmail1");
		String s3=request.getParameter("inputPassword1");
		
//		System.out.println(s1+"\t"+s2+"\t"+s3);
		
		Register r=new Register();
		List<Register> lst=new LinkedList<Register>();
		DBApplication db=new DBApplication();
		System.out.println("test3");
		r.setName(s1);
		r.setEmail(s2);
		r.setPassword(s3);
		lst.add(r);
//		System.out.println(r.getName()+"\t"+r.getEmail()+"\t"+r.getPassword());
		int i=db.saveData(lst);
		System.out.println("test5");
		if(i>0) {
			System.out.println("test6");
			response.sendRedirect("login.jsp");
		}
	}

}
