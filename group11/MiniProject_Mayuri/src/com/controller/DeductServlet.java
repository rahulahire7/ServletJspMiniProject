package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;

/**
 * Servlet implementation class DeductServlet
 */
public class DeductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int money=Integer.parseInt(request.getParameter("money"));
		HttpSession session=request.getSession();
		String email = (String)session.getAttribute("name");
		DBApplication db=new DBApplication();
		
	    boolean i=db.deductbalance(money,email);
	    
	    PrintWriter out=response.getWriter();
	    if(i) out.println("Order Placed Successfully");
	    else out.println("Could not place your order");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
