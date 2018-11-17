package com.controller;

import java.io.IOException;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import com.doa.JdbcApplication;
import com.model.Book;
import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class DisplayServlet
 */
//s@WebServlet("/DisplayServlet")
public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		System.out.println("dsplayserv1");
		JdbcApplication db=new JdbcApplication();
		List<Book> lst=db.getAllBooks();
		System.out.println("dsplayserv2");
	/*PrintWriter pw= response.getWriter();
	pw.println("<body background=bg0.jpg>");
	pw.println("<font color=WHITE>");
	pw.println("<h2 style=\"font-family:Times New Roman ;font size:24px\"><center>All books are listed below</center></h2><hr>");
	pw.print("<table border=2>");
	pw.print("<h3><tr style=\"color: white;\"><td>Book Id</td><td>Book Name</td><td>Author</td><td>Category</td></tr></h3>");
		for(Book b:lst)
		{	
	pw.print("<tr style=\"color: white;\"><td>"+b.getBookId()+"</td><td>"+b.getBookName()+"</td><td>"+b.getAuthor()+"</td><td>"+b.getCategory()+"</td></tr>");
		}
		pw.println("</table>");
		pw.println("<p><a href=\"welcome.jsp\" style=\"color: white; display: inline-block; hover {background-color: GREEN}\">Go Back</a></p>");
		
		*/
		request.setAttribute("listbooks",lst );
		RequestDispatcher dispatcher = request.getRequestDispatcher("bookDisplay.jsp");
		
		dispatcher.forward(request,response);

		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
