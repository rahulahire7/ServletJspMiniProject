package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserJdbc;
import com.model.User;

/**
 * Servlet implementation class WithdrawServlet
 */
@WebServlet("/WithdrawServlet")
public class WithdrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public WithdrawServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		System.out.println("servlet");
       	int money=Integer.parseInt(request.getParameter("money"));
	  
		User u=new User();	
		UserJdbc uj = new UserJdbc();
		HttpSession session=request.getSession();
		String uname=(String)session.getAttribute("str");
		int amount=uj.checkbalance(uname);
		if(amount-money<0) {
			out.println("Balance Insufficiant");
		}
		else {
        boolean i=uj.withdraw(money,uname);
        
        if(i) out.println("Amount withdrawn successfully "); 
        else out.println("Sorry Transaction could not be Completed");
        
        out.println("amount is: "+amount);
		}
        
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
