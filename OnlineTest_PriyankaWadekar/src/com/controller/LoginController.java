package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DatabaseConnectionFactory;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/checkLogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");				
		Connection con=DatabaseConnectionFactory.createConnection();		
		ResultSet set=null;
		int i=0;
		try
		{
		 Statement st=con.createStatement();
		 String sql = "Select * from  users where username='"+username+"' and password='"+password+"' ";
		 set=st.executeQuery(sql);
		 while(set.next())
		 {
			 i=1;
		 }
		 if(i!=0)
		 {  
			 if(username.equals("admin") && password.equals("admin123")){
				 HttpSession session=request.getSession();
			     session.setAttribute("user",username);
				 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsps/welcome1.jsp");
				 rd.forward(request, response);
			 }
			 else{
				 HttpSession session=request.getSession();
			     session.setAttribute("user",username);
				 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsps/home.jsp");
				 rd.forward(request, response); 
			 }
		 }
		 else
		 {   request.setAttribute("errorMessage","Invalid username or password");
			 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsps/login.jsp");
			 rd.forward(request, response);
		 }
		}catch(SQLException sqe){System.out.println("Error : While Fetching records from database");}
		try
		{
		 con.close();	
		}catch(SQLException se){System.out.println("Error : While Closing Connection");}
	}
		
		
	

}
