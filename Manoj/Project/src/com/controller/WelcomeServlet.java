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
import com.model.Product;
import com.model.Register;

/**
 * Servlet implementation class WelcomeServlet
 */
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("prod");
		String s1=request.getParameter("Prodnm");
		String s2=request.getParameter("price");
		String s3=request.getParameter("stock");
		
		int price=Integer.parseInt(s2);
		int stock=Integer.parseInt(s3);
		
		Product p=new Product();
		System.out.println("prodsaveserv3");
		p.setProdnm(s1);
		p.setPrice(price);
		p.setStock(stock);
		
		DBApplication db=new DBApplication();
		List<Product> lst=new LinkedList<Product>();
		lst.add(p);
		System.out.println("prodtest1");
		
		List<Product> i=db.prodgetAllData(lst);
		System.out.println("prodtest2 in value"+i);
		//creating session
		String s=request.getParameter("qty");
		int qty=Integer.parseInt(s);
		
			HttpSession session=request.getSession(true);
			session.setAttribute("qty", qty);
			response.sendRedirect("Product.jsp");
			
	
		
	}
}
	


