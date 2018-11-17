package com.controller;
import com.dao.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.dao.Data;
import com.jdbc.*;
public class RegisterServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       	  
		PrintWriter out=response.getWriter();
		
     	String name=request.getParameter("uname");                    //parsing values
     	String pass=request.getParameter("password");
     	int age=Integer.parseInt(request.getParameter("age"));
     	long contact=Long.parseLong(request.getParameter("contact"));  
     	String email=request.getParameter("email");
     	
     	Data dt=new Data();
     	dt.setAge(age); dt.setContact(contact); dt.setEmail(email); dt.setName(name); dt.setPass(pass);   //setting pojo class values
     	
     	ArrayList<Data> lst=new ArrayList<Data>();
     	lst.add(dt);
     	
     	PersonJdbc pj=new PersonJdbc();
     	int i=pj.InsertData(lst);
     	
     	if(i>0) {
     		out.println("\"<h1>You have been registered Successfully</h1>\"");
     		response.setHeader("Refresh", "4; URL=http://localhost:9090/NoBank/login.jsp"); 
     	}
     		else out.println("\"<h1> Data Can't be Inserted</h1>\"");
     	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
