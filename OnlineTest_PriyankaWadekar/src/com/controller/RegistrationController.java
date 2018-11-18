package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DatabaseConnectionFactory;
import com.model.User;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/checkRegister")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Connection con=DatabaseConnectionFactory.createConnection();
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String repassword=request.getParameter("repassword");
		User user=new User();
		boolean status=user.validateRegister(username, email, password, repassword);
		if(status){
			
			
			try
			{
			 Statement st=con.createStatement();
			 String sql = "INSERT INTO users values ('"+username+"','"+email+"','"+password+"')";
			 		System.out.println(sql);
			 st.executeUpdate(sql);
			}catch(SQLException sqe){System.out.println("Error : While Inserting record in database");}
			try
			{
			 con.close();	
			}catch(SQLException se){System.out.println("Error : While Closing Connection");}
	        request.setAttribute("username",username);
			RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/jsps/regSuccess.jsp");
			dispatcher.forward(request, response);
		}
		else{
			
			request.setAttribute("username", username);
			request.setAttribute("email", email);
			request.setAttribute("msg1", user.getMsg1());
			request.setAttribute("msg2", user.getMsg2());
			request.setAttribute("msg3", user.getMsg3());
			request.setAttribute("msg4", user.getMsg4());
			request.getRequestDispatcher("/WEB-INF/jsps/register.jsp").forward(request, response);
		}
		
				
	}
	
	
	

}
