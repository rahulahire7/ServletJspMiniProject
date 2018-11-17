package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserJdbc;
import com.model.User;


@WebServlet("/DisplayServlet")
public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DisplayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/*ArrayList<User> lst=new ArrayList<User>();
		UserJdbc uj =new UserJdbc();
		lst=uj.DisplayData();
		
		PrintWriter out=response.getWriter();
		out.print("<table border='1px'><tr><th>Name</th><th>Password</th><th>Email</th><th>Age</th><th>Contact</th><th>Balance</th></tr>");
		Iterator<User> it=lst.iterator();
		User u=new User();
		
		if(it.hasNext())
		{
			while(it.hasNext())
			{   
				u=it.next();

				out.println("<tr><td>"+u.getName()+"</td><td>"+u.getPass()+"</td><td>"+u.getEmail()+"</td><td>"+u.getAge()+"</td><td>"+u.getContact()+"</td><td>"+u.getBalance()+"</td></tr>");
			}
		}
				
		out.println("</table>");
		
		response.setHeader("Refresh", "5; URL=http://localhost:9090/YourBank/Welcome.jsp");

		
		//response.sendRedirect("display.jsp");*/
		
		try {
			System.out.println("test");
			UserJdbc uj = new UserJdbc();
			ArrayList<User> lst = uj.DisplayData();
			System.out.println(lst);
			request.setAttribute("usrList",lst);
			System.out.println("test1");
			RequestDispatcher view = request.getRequestDispatcher("Display.jsp");
			//System.out.println("test2");
			view.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
