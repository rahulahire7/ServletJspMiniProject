package com.controller;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.LinkedList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.doa.JdbcApplication;
import com.model.SignUp;
//import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
/**
 * Servlet implementation class SignupServlet
 */
//@WebServlet("/SignupServlet")
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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String gender=request.getParameter("gender");
		String nation=request.getParameter("nation");
		String bday=request.getParameter("bday");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String psw=request.getParameter("psw");
		
		SignUp sup=new SignUp();
		sup.setFname(fname);
		sup.setLname(lname);
		sup.setGender(gender);
		sup.setNation(nation);
		sup.setBday(bday);
		sup.setEmail(email);
		sup.setUname(uname);
		sup.setPsw(psw);
		

		JdbcApplication db= new JdbcApplication();
		//List<SignUp> lst=new LinkedList<SignUp>();
		
		List<SignUp>lst=new LinkedList<SignUp>();
		lst.add(sup);
		
		int i=db.saveData(lst);
		System.out.println("value of i "+i);
		if(i>0)
		{
			System.out.println("Data saved successfully!");
			request.setAttribute("signupBean", lst);
			response.sendRedirect("signupBean.jsp");
		}

		

	}

}
