package login.adi.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginRegister() {
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		CustomerDAO cd=new CustomerDAOImpl();
		String userName=request.getParameter("userName");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String submitType=request.getParameter("submit");
		Customer c=cd.getCustomer(userName, password);
		if(submitType.equals("login") && c!=null && c.getName()!=null) {
			request.setAttribute("message",c.getName());
			request.getRequestDispatcher("welcome.jsp").forward(request,response);
			
		}else if(submitType.equals("register")) {
			c.setName(request.getParameter("name"));
			c.setPassword(request.getParameter("passowrd"));
			c.setUsername(request.getParameter("username"));
			cd.insertCustomer(c);
			request.setAttribute("successmessage","Registration done pls proceed to log in");
			request.getRequestDispatcher("login.jsp").forward(request,response);
			
		}else {
			request.setAttribute("message","Data Not Found");
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
			
		
	}

}