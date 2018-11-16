package com.controller;
import java.sql.*;
import com.dao.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Jdbc;

/**
 * Servlet implementation class Forgot
 */
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgot() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try
{
	Jdbc jd  = new Jdbc();
	Connection con = jd.myConnection();
	
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	PreparedStatement ps=con.prepareStatement("Update reg set password=? where userid=?");
	ps.setString(2,user);
	ps.setString(1,pass);
	int i=ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("update.jsp");
		
	}
	else 
	{
		response.sendRedirect("error.jsp");
	}
}
catch(Exception e)
{
e.printStackTrace();

	
}
		
		
		
		
		
		doGet(request, response);
	}

}
