package com.controller;
import com.dao.*;
import com.jdbc.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DisplayServelet
 */
public class DisplayServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Data> lst=new ArrayList<Data>();
		PersonJdbc pj =new PersonJdbc();
		lst=pj.displayall();
		
		request.setAttribute("lst",lst);
		RequestDispatcher view = request.getRequestDispatcher("Display.jsp");   // Handing control to Display page with request attribute
		//System.out.println("test2");
		view.forward(request, response);

		
	/*	PrintWriter out=response.getWriter();
		out.print("<table border='2px'><tr><th>Name</th><th>Password</th><th>Email</th><th>Age</th><th>Contact</th></tr>");
		Iterator<Data> it=lst.iterator();
		Data dt=new Data();
		
		if(it.hasNext())
		{
			while(it.hasNext())
			{   
				dt=it.next();

out.println("<tr><td>"+dt.getName()+"</td><td>"+dt.getPass()+"</td><td>"+dt.getEmail()+"</td><td>"+dt.getAge()+"</td><td>"+dt.getContact()+"</td></tr>");
			}
		}
		
		else out.println("<h1>No Data Found</h1>");
		
		out.println("</table>");   */
		
		response.setHeader("Refresh", "10; URL=http://localhost:9090/NoBank/WelcomeAdmin.jsp");
		//response.sendRedirect("WelcomeAdmin.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
