package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegisterJdbc;
import com.model.Register;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			RegisterJdbc db = new RegisterJdbc();
			Register u = new Register();
			u.setUname(request.getParameter("uname"));
			
			java.util.List<Register> ls = db.getUser(u);
			Iterator<Register> itr = ls.iterator();
			u = itr.next();
			PrintWriter pw = response.getWriter();
			pw.println("Name" + "\t" + "User name" + "\t" + "Course");
			pw.println(u.getName() + "\t" + u.getUname() + "\t" + u.getCourse() + "\t" );
			}
		 catch (Exception e) {
			response.sendRedirect("Search.jsp");
			e.printStackTrace();
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
