package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DBApplication;
import com.model.Register;


public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public SearchServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String s1 = request.getParameter("rno");	
		int rno = Integer.parseInt(s1);
		DBApplication db = new DBApplication();
		Register u = new Register();
		//u.setUname(request.getParameter("uname"));
		u.setRno(rno);
		List<Register> ls = db.getUser(u);
		Iterator<Register> itr = ls.iterator();
		u = itr.next();
		PrintWriter pw = response.getWriter();
		pw.println("R No" + "\t" + "User name" + "\t" + "Password" + "\t" + "Balance" + "\t");
		pw.println(u.getRno() + "\t" + u.getFname() + "\t" + u.getPass() + "\t" + u.getBal() + "\t");
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
