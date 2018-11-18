package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DatabaseConnectionFactory;
import com.model.Register;


public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    DatabaseConnectionFactory dc=new DatabaseConnectionFactory();
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action"); 
		if(action==null){
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}else{
			doPost(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action"); 
		if(action.equals("display_students_details")){
			List <Register> list=dc.getAllData();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/WEB-INF/jsps/Display_students_details.jsp").forward(request, response);
		}
		else if(action.equals("delete_students_details")){
			
			request.getRequestDispatcher("/WEB-INF/jsps/delete_details.jsp").forward(request, response);
		}
		else if(action.equals("delete_record")) {
			
			int i=dc.Delete(request.getParameter("uname"));
			if(i>0) {
				request.getRequestDispatcher("/WEB-INF/jsps/delete_details_success.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("/WEB-INF/jsps/delete_details.jsp").forward(request, response);
			}
		}
	}

}
