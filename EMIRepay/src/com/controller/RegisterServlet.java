package com.controller;
import java.util.*;

import java.sql.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DBApplication;
import com.model.User;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 102831973239L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd=null;
		
		String name = request.getParameter("inputName");
		String gender = request.getParameter("inputGender");
//		String dob = request.getParameter("inputDob");
//		String mobile = request.getParameter("inputMobile");
		String pan = request.getParameter("inputPan");
//		String aadhar = request.getParameter("inputAadhar");
		String email = request.getParameter("inputEmail");
		String password = request.getParameter("inputPassword");
		String city = request.getParameter("inputCity");
//		long ano = Integer.parseInt(aadhar);
//		int mob = Integer.parseInt(mobile);
		/*
//		java.util.Date dateofbirth = null;
		
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
//		try {
//			dateofbirth = sdf.parse(dob);
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		java.sql.Date sqlDate = java.sql.Date.valueOf(dateofbirth);
 * 
 */
		
		User x = new User();
		x.setInputName(name);
		x.setInputGender(gender);
//		x.setInputDob(sqlDate);
//		x.setInputMobile(mob);
		x.setInputPan(pan);
//		x.setInputAadhar(ano);
		x.setInputEmail(email);
		x.setInputPassword(password);
		x.setInputCity(city);
		
		List<User> lst = new LinkedList<User>();
		lst.add(x);
		System.out.println("added to list");
		DBApplication db = new DBApplication();
		int i=db.saveData(lst);
		if(i>0) {
				response.sendRedirect("login.jsp");
		}
		else {
			System.out.println("Failed to redirect");
		}
	}

}
