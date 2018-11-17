package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.RegisterJdbc;
import com.model.Login;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	private static final long serialVersionUID = 102831973239L;

       
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
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		com.model.Login l = new com.model.Login();
		l.setUname(uname);
		l.setPassword(password);
		List<Login> ls = new ArrayList<Login>();
		ls.add(l);
		RegisterJdbc rj = new RegisterJdbc();
		boolean b = rj.validateData(ls);
		PrintWriter pw = response.getWriter();
		if(b)
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("data",ls);
			response.sendRedirect("LoggedUserServlet");
			//pw.println("<h1>Login successful</h1>");
			//response.sendRedirect("DisplayServlet");
			//response.sendRedirect("BuyServlet");
		}
		else
		{
			response.sendRedirect("Loginerror.jsp");
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
