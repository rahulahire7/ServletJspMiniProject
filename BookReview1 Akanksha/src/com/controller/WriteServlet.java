package com.controller;

import java.io.IOException;

import java.util.LinkedList;
import java.util.List;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doa.JdbcApplication;
import com.model.Review;


/**
 * Servlet implementation class WriteServlet
 */
//@WebServlet("/WriteServlet")
public class WriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteServlet() {
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
		String bookId=request.getParameter("bookId");
		String category=request.getParameter("category");
		String uname=request.getParameter("uname");
		String review=request.getParameter("review");
		
		PrintWriter pw= response.getWriter();
		
		Review rw=new Review();
		rw.setBookId(bookId);
		rw.setCategory(category);
		rw.setUname(uname);
		rw.setReview(review);
		
		JdbcApplication db= new JdbcApplication();
		List<Review>lst=new LinkedList<Review>();
		lst.add(rw);
		
		int i=db.saveReview(lst);
		System.out.println("value of i "+i);
		if(i>0)
		{
			request.setAttribute("addreview",lst);
			RequestDispatcher dispatcher = request.getRequestDispatcher("reviewBean.jsp");
			
			dispatcher.forward(request,response);
		}

		
		
	}

}
