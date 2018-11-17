package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserJdbc;
import com.model.User;



@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
PrintWriter out=response.getWriter();
		
	String name=request.getParameter("uname");
	String pass=request.getParameter("password");
	int age=Integer.parseInt(request.getParameter("age"));
	long contact=Long.parseLong(request.getParameter("contact"));
	String email=request.getParameter("email");
	double balance = Double.parseDouble(request.getParameter("balance"));
	User u=new User();
	u.setAge(age);
	u.setContact(contact);
	u.setEmail(email);
	u.setName(name);
	u.setPass(pass);
	u.setBalance(balance);
	
	ArrayList<User> lst=new ArrayList<User>();
	lst.add(u);
	
	UserJdbc uj = new UserJdbc();
 	int i = uj.AddData(lst);
 	
 	if(i>0) 
 		response.sendRedirect("Login.jsp"); 
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
