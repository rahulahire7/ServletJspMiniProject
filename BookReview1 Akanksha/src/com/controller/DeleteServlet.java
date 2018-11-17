package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import com.doa.JdbcApplication;
import com.model.Book;
import com.model.SignUp;
/**
 * Servlet implementation class DeleteServlet
 */
//@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("uname");
		//String uname=session.getAttribute(uname);
		System.out.println("dsplayserv1");
		JdbcApplication db=new JdbcApplication();
		int i=db.deleteUser(uname);
		System.out.println("dsplayserv2 "+i);
		if(i>0)
		{
			System.out.println("deleted account");
			response.sendRedirect("home.jsp");
		}
		else {
			System.out.println("not deleted");
			response.sendRedirect("delete.jsp");
		}

	}

}
