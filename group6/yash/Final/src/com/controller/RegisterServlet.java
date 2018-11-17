package com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegisterJdbc;
import com.model.Register;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String mobile=request.getParameter("mobile");
		String course=request.getParameter("course");
		String email=request.getParameter("email");
		com.model.Register r = new Register();
		r.setName(name);
		r.setUname(uname);
		r.setPassword(password);
		r.setGender(gender);
		r.setState(state);
		r.setCity(city);
		r.setMobile(mobile);
		r.setCourse(course);
		r.setEmail(email);
		List<Register> lst = new ArrayList<Register>();
		lst.add(r);
		
		RegisterJdbc rj = new RegisterJdbc();
		rj.saveData(lst);
		PrintWriter pw = response.getWriter();
		//pw.println("data entered");
		response.sendRedirect("Login.jsp");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//rj.getAllData();
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
