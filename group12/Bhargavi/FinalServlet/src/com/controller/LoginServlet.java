package com.controller;
import com.model.*;
import com.dao.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		
		System.out.println("in login servlet");
		System.out.println(user+" "+pass);
		
		Login l = new Login();
		l.setUsername(user);
		l.setPassword(pass);
		
		List<Login> lst = new ArrayList<>();
		lst.add(l);
		
		HttpSession ses = request.getSession();
		ses.setAttribute("userName", l.getUsername());
		ses.setAttribute("err", "Please enter valid credentials"); 

		
		Jdbc x = new Jdbc();
		if(x.searchRecord(lst)) {
			
			
			response.sendRedirect("Welcome.jsp");
		}
		else {
			response.sendRedirect("Login.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}