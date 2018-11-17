package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Courses;
import com.model.Jdbc;
import com.model.Signup;

/**
 * Servlet implementation class ApplyCourse
 */
public class ApplyCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplyCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String course_name=request.getParameter("courses"); 
		int duration=Integer.parseInt(request.getParameter("duration"));
		int hrs_per_week=Integer.parseInt(request.getParameter("hrs_per_week"));
		
		int hrs_per_day=Integer.parseInt(request.getParameter("hrs_per_day"));
		
		HttpSession session=request.getSession(); //session created
		
		Courses c=new Courses();
		c.setUser_name((String)session.getAttribute("user_name")); //setting session
		c.setCourse_name(course_name);
		c.setDuration(duration);
		c.setHrs_per_week(hrs_per_week);
		c.setHrs_per_day(hrs_per_day);
		List<Courses> lst=new ArrayList<Courses>(); //created list of type Courses
		lst.add(c);
		Jdbc jd=new Jdbc();
		int i=jd.insertCourse(lst); //insert into database Courses
		if(i>0)
		{
			System.out.println(i+ "inserted");
			response.sendRedirect("Welcome.jsp"); //redirect to welcome.jsp
		}
		
		

	}

}
