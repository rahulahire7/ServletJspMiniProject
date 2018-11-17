package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.EmiDetail;

/**
 * Servlet implementation class EmiPayServlet
 */
public class EmiPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmiPayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int i=0;
		List<EmiDetail> lst = new ArrayList<EmiDetail>();
		DBApplication db = new DBApplication();
		HttpSession session = request.getSession();
		long id = (Long)session.getAttribute("id");
		i = db.updatePayment(id);
		if(i>0) {
//			lst = db.getEmiData(id);
			lst = db.getEmiData(id);
			for(EmiDetail ed:lst) {
				session.setAttribute("total_installments", ed.getTotal_installments());
				session.setAttribute("payback", ed.getPayback());
			}
			response.sendRedirect("home.jsp");
		}
		
		
	}

}
