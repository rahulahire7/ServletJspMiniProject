package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.EmiDetail;
import com.model.Login;
import com.model.User;
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("Inside Post");
		String inputEmail = request.getParameter("inputEmail");
		String inputPassword = request.getParameter("inputPassword");
		System.out.println("form email "+inputEmail);
		System.out.println("form password "+inputPassword);
		DBApplication db = new DBApplication();
		Login l = new Login();
		l.setInputEmail(inputEmail);
		l.setInputPassword(inputPassword);
		boolean log = db.validateUser(l);
		if(log) {
			System.out.println("Login Validated");
			HttpSession session = request.getSession();
			List<User> lst = new LinkedList<User>();
			List<EmiDetail> elst = new ArrayList<EmiDetail>();
			lst = db.getAllData();
			for(User r:lst) {
				System.out.println("Table email on check: ");
				if(r.getInputEmail().equalsIgnoreCase(l.getInputEmail())) {
					System.out.println("Email Match Found");
					session.setAttribute("cname",r.getInputName());
					System.out.println("user id sent to fetch emi data"+r.getCid());
					elst = db.getEmiData(r.getCid());
					session.setAttribute("id", r.getCid());
					for(EmiDetail e: elst) {
						
						session.setAttribute("total_installments", e.getTotal_installments());
						session.setAttribute("principal", e.getPrincipal());
						session.setAttribute("total_interest", e.getInterest());
						session.setAttribute("payback", e.getPayback());
						session.setAttribute("emi", e.getEmi());
						System.out.println("Session Created");
						response.sendRedirect("home.jsp");
					}
				}
			}
			
		}
		else {
			response.sendRedirect("login.jsp");
		}
		
	}

}
