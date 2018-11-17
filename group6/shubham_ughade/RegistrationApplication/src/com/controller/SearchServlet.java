package com.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.w3c.dom.ls.LSException;

import com.dao.RegistrationJdbc;
import com.model.Registration;

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
		
	
		RegistrationJdbc rj = new RegistrationJdbc();
		String s1=request.getParameter("regNo");
		List<Registration> ls= rj.search(s1);
	    Registration r = new Registration();
	   /* Iterator<Registration> ir = ls.iterator();
	    while(ir.hasNext()) {
	    	r.setRegNo(ir.next().getRegNo());
	    	r.setUname(ir.next().getUname());
	    	r.setBal(ir.next().getBal());
	    }
	    
	    HttpSession session = request.getSession();
	    session.setAttribute("object", r);
	    */
	    request.setAttribute("searchList",ls);
	    RequestDispatcher view = request.getRequestDispatcher("show.jsp");
	    view.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
