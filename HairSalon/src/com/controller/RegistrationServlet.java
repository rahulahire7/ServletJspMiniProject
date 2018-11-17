package com.controller;
import com.dao.DBApplication;
import java.io.IOException;
import java.util.ArrayList;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Registration;


/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
       
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
// TODO Auto-generated method stub

}

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 /* System.out.println("save1");

String s1=request.getParameter("name");
String s2=request.getParameter("email");
String s3=request.getParameter("username");
String s4=request.getParameter("password1");
String s5=request.getParameter("password2");
System.out.println("save 2");
Registration r= new Registration(); 
System.out.println("save 3");
r.setName(s1);
r.setEmail(s2);
r.setUsername(s3);
r.setPassword1(s4);
r.setPassword2(s5);
DBApplication db= new DBApplication();
List<Registration>lst = new LinkedList<Registration>();
lst.add(r);
System.out.println("save 4");

int i=db.saveData(lst);
System.out.println("save 5");
//db.displayData();
if(i>0)
{
response.sendRedirect("Appt.jsp");
}
}*/

	doGet(request, response);
	String s1=request.getParameter("name");
	String s2=request.getParameter("email");
	String s3=request.getParameter("username");
	String s4=request.getParameter("password1");
	String s5=request.getParameter("password2");
	System.out.println("save 2");
	Registration r= new Registration(); 
	System.out.println("save 3");
	r.setName(s1);
	r.setEmail(s2);
	r.setUsername(s3);
	r.setPassword1(s4);
	r.setPassword2(s5);
	DBApplication db= new DBApplication();

	    ArrayList<Registration> lst = new ArrayList<Registration>();
	    lst.add(r);
	    int i=db.saveData(lst);
	    System.out.println("save 5");
	    if(i>0)
	    {
	    	System.out.println("data inserted");
	    	response.sendRedirect("Appt.jsp");
	    }
	    else {
	    	System.out.println("not inserted");
	    }
	    
}


}


