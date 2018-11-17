package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.*;
import com.jdbc.*;
public class SearchServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name=request.getParameter("uname");
         PersonJdbc pj=new PersonJdbc();
         out.println("<h1>Printing before</h1>");
         ArrayList<Data> lst=pj.search(name);
         out.println("<h1>After</h1>");
         
         //out.println("Printing");
         
         Iterator<Data> it=lst.iterator(); 
         Data dt=new Data();
         
         if(it.hasNext())       //printing values if there is some record   
         {
        	 while(it.hasNext())
        	 {
        		 dt=it.next();
        		 
           out.println("<tr><td>"+dt.getName()+"</td><td>"+dt.getPass()+"</td><td>"+dt.getEmail()+"</td><td>"+dt.getAge()+"</td><td>"+dt.getContact()+"</td></tr>");
        	 }
        	 response.setHeader("Refresh", "10; URL=http://localhost:9090/NoBank/WelcomeAdmin.jsp");
         }
         else 
        	 {
        	 out.println("<h1>No Data Found</h1>");
        	 response.setHeader("Refresh", "10; URL=http://localhost:9090/NoBank/WelcomeAdmin.jsp");
        	 }
         
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
