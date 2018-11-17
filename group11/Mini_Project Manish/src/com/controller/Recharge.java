package com.controller;

import com.jdbc.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Recharge extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Recharge() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("str");     
	   int plan=Integer.parseInt(request.getParameter("plan"));
	   PersonJdbc pj=new PersonJdbc();                  
	   int balance=pj.checkbalance(email);              
	   /**
	    *         checking balance           
	    */
	   if(plan>balance) { out.println("You dont have sufficient balance");}
	   else {
		   boolean i=pj.deduct_balance(plan,email);                            // deducting balance if possible
		   
		   if(i)
		   out.println("Your Transaction have been performed Successfully");
		   else 
			   out.println("Your Transaction could not be completed");
		   }
	   
	   response.setHeader("Refresh", "4; URL=http://localhost:9090/NoBank/welcome.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
