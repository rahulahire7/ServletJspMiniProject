package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doa.JdbcApplication;
import com.model.Book;
import com.model.Review;

/**
 * Servlet implementation class DisplayReview
 */
//@WebServlet("/DisplayReview")
public class DisplayReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayReview() {
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
		Review rw=new Review();
		JdbcApplication db= new JdbcApplication();
		List<Review> lst=db.getAllReviews(bookId);
		/*PrintWriter pw= response.getWriter();
		pw.println("<body background=bg0.jpg>");
		pw.println("<font color=WHITE>");
		pw.println("<h2 style=\"font-family:Times New Roman ;font size:24px\"><center>All book reviews for Book Id: "+bookId+"</center></h2><hr>");
		pw.print("<table border=2>");
		pw.print("<h3><tr style=\"color: white;\"><td>Book Id</td><td>Category</td><td>Username</td><td>Review</td></tr></h3>");
			for(Review b:lst)
			{	
		pw.print("<tr style=\"color: white;\"><td>"+b.getBookId()+"</td><td>"+b.getCategory()+"</td><td>"+b.getUname()+"</td><td>"+b.getReview()+"</td></tr>");
			}
			pw.println("</table>");
			pw.println("<p><a href=\"EnterBI.jsp\" style=\"color: white; display: inline-block; hover {background-color: GREEN}\">Go Back</a></p>");
	
	*/
		request.setAttribute("listreviews",lst );
		RequestDispatcher dispatcher = request.getRequestDispatcher("reviewDisplay.jsp");
		
		dispatcher.forward(request,response);
	}

}
