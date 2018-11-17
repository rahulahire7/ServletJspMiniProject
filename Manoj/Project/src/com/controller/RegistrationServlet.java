package com.controller;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.Register;

/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 102831973239L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("saveserv1");
	String s1=request.getParameter("name");
	String s2=request.getParameter("org");
	String s3=request.getParameter("email");
	String s4=request.getParameter("mob");
	String s5=request.getParameter("usnm");
	String s6=request.getParameter("pass");
	System.out.println("saveserv2");
	System.out.println(s4);
	long mob=Long.parseLong(s4);
	
	Register r=new Register();
	System.out.println("saveserv3");
	r.setName(s1);
	r.setOrg(s2);
	r.setEmail(s3);
	r.setMob(mob);
	
	r.setUsnm(s5);
	r.setPass(s6);
	System.out.println(s3);
	System.out.println("saveserv4");
	
	DBApplication db=new DBApplication();
	List<Register> lst=new LinkedList<Register>();
	lst.add(r);
	System.out.println("test1");
	int i=db.saveData(lst);
	System.out.println("test2 in value"+i);
	//creating session
		HttpSession session=request.getSession(true);
		session.setAttribute("reg", r);
		
	if(i>0)
	{
		System.out.println("test3");
		response.sendRedirect("Login.jsp");
	}
	System.out.println("test4");		
	}
}
