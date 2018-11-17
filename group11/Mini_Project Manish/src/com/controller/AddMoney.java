package com.controller;

import com.jdbc.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddMoney extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddMoney() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();            //accessing the session value 
		String email=(String)session.getAttribute("str");
		int paisa=Integer.parseInt(request.getParameter("paisa"));  //parsing the value
		PersonJdbc pj=new PersonJdbc();
		
		boolean i=pj.addmoney(paisa,email);       //calling the money adding function
		
		if(i) out.println("Money has beeen added Successfully");
		else out.println("Transaction could not be performed");
		
		response.setHeader("Refresh", "4; URL=http://localhost:9090/NoBank/welcome.jsp");   //returning back to previous page
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
