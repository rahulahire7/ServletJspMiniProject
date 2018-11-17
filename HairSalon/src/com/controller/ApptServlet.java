package com.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.DBApplication;
import com.model.Appt;



/**
 * Servlet implementation class ApptServlet
 */
public class ApptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**s
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	/*String s1 =request.getParameter("username");
	String s2 =request.getParameter("password1"); 
	
	String Str =null;
	Appt l= new Appt();

	DBApplication db= new DBApplication();
	l.setUsername(s1);
	l.setPassword1(s2);
	
	boolean b=db.validateUser(l);
	if(b)	{
		response.sendRedirect("Member.jsp");
		
	}
	else
	{
		response.sendRedirect("Error.jsp");

	}
	
	}*/
		
		  String s1 =request.getParameter("username");
		  String s2 =request.getParameter("password1"); 
          Appt l=new Appt();
          l.setUsername(s1);
          l.setPassword1(s2);
          DBApplication db= new DBApplication();
          boolean b=db.validateUser(l);
          System.out.println(b);
          if(b) {
          //ArrayList<Appt> ls=new ArrayList<Appt>();
         // ls.add(l);
                  // int i=db.saveData(ls);
          //if(i>0) {
       	  // System.out.println("data entered in log  table");
         // }else
         // {
       	   //System.out.println("data did not inserteds");
        	  response.sendRedirect("DisplayServlet");
          }
              
          
          else
          {
       	   response.sendRedirect("Error.jsp");
          }
doGet(request, response);

}
	          
}
