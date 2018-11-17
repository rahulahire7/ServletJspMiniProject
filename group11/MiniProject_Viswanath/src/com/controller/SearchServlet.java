package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserJdbc;
import com.model.User;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String name=request.getParameter("str");
         UserJdbc uj=new UserJdbc();
         
         ArrayList<User> lst=uj.search(name);
         out.print("<table border='2px' cellspacing='2px' cellpadding='2px'><tr><th>Name</th><th>Password</th><th>Email</th><th>Age</th><th>Contact</th></tr>");
         
         //out.println("Printing");
         
         Iterator<User> it=lst.iterator(); 
         User u=new User();
         
         if(it.hasNext())
         {
        	 while(it.hasNext())
        	 {
        		 u=it.next();
        		 
           out.println("<tr><td>"+u.getName()+"</td><td>"+u.getPass()+"</td><td>"+u.getEmail()+"</td><td>"+u.getAge()+"</td><td>"+u.getContact()+"</td></tr>");
        	 }
        	 response.setHeader("Refresh", "10; URL=http://localhost:9090/YourBank/Welcome.jsp");
         }
         else 
        	 {
        	 out.println("<h1>No Data Found</h1>");
        	 response.setHeader("Refresh", "10; URL=http://localhost:9090/YourBank/Welcome.jsp");
        	 }
         out.println("</table>");

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
