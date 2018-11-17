package com.doa;

import java.sql.*;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.LinkedList;
import java.util.Random;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.SignupServlet;
import com.model.Login;
import com.model.SignUp;
import com.model.Book;
import com.model.Review;


public class JdbcApplication {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	boolean b;
	int i;
	
	public Connection myConnection() {
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Newuser123");
			System.out.println("Connected to db...");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("class not found");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("sqlexception");
		}
		return con;
	}
	
	
	public int saveData(List<SignUp> lst)
	{   int i=0;
	
	    try {
			SignUp a=null; 
			

			con=myConnection();
			Iterator<SignUp> itr=lst.iterator();
			
			while(itr.hasNext())
			{
			
				a=itr.next();
				ps=con.prepareStatement("insert into signup values (?,?,?,?,?,?,?,?)");
				ps.setString(1,a.getFname());
				ps.setString(2,a.getLname());
				ps.setString(3,a.getGender());
				ps.setString(4,a.getNation());
				ps.setString(5,a.getBday());
				ps.setString(6,a.getEmail());
				ps.setString(7,a.getUname());
				ps.setString(8,a.getPsw());
				i=ps.executeUpdate();
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
		return i;
	}
	public int saveReview(List<Review> lst)
	{   int i=0;
	
	    try {
			Review a=null; 
			

			con=myConnection();
			Iterator<Review> itr=lst.iterator();
			
			while(itr.hasNext())
			{
			
				a=itr.next();
				ps=con.prepareStatement("insert into bookreview values (?,?,?,?)");
				//ps.setString(1,a.getFname());
				ps.setString(1,a.getBookId());
				ps.setString(2,a.getCategory());
				ps.setString(3, a.getUname());
				ps.setString(4,a.getReview());
				i=ps.executeUpdate();
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
		return i;
	}
	

		public int deleteUser(String uname)
		{   i=0;
			try {
				con=myConnection();
				String str="delete from signup where uname=?";
				ps=con.prepareStatement(str);
				ps.setString(1, uname);
				i=ps.executeUpdate();
				/*Statement st=con.createStatement();
				int i=st.executeUpdate("DELETE FROM signup WHERE uname="+uname);*/
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return i;
		}
		
		public List<SignUp> getAllData()
		{
			List<SignUp> lst=new LinkedList<SignUp>();
			con=myConnection();
			try
			{
			Statement s=
						con.createStatement
						(ResultSet.TYPE_SCROLL_SENSITIVE,
								ResultSet.CONCUR_READ_ONLY);
				rs=s.executeQuery("select * from signup");
				while(rs.next())
				{
					SignUp a=new SignUp();
					//a.setRno(rs.getInt(1));
					a.setFname(rs.getString(1));
					a.setLname(rs.getString(2));
					a.setGender(rs.getString(3));
					a.setNation(rs.getString(4));
					a.setBday(rs.getString(5));
					a.setEmail(rs.getString(6));
					a.setUname(rs.getString(7));
					a.setPsw(rs.getString(8));
					lst.add(a);
					System.out.println("cnt");
				}
				con.close();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			
			return lst;
		}
		
		public boolean validateUser(Login l)
		{

			try {
				con=myConnection();
				List<SignUp> lst=getAllData();
				b = false;
				for(SignUp r:lst)
				{
					if(r.getUname().equals(l.getUname()))
					{
						if(r.getPsw().equals(l.getPsw()))
						{
							b=true;
							System.out.println("b is true");
							break;
						}
					}
				}
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return b;
		}
		
		public List<Book> getAllBooks()
		{
			List<Book> lst=new LinkedList<Book>();
			con=myConnection();
			try
			{
			Statement s=
						con.createStatement
						(ResultSet.TYPE_SCROLL_SENSITIVE,
								ResultSet.CONCUR_READ_ONLY);
				rs=s.executeQuery("select * from book");
				while(rs.next())
				{
					Book a=new Book();
					//a.setRno(rs.getInt(1));
					a.setBookId(rs.getString(1));
					a.setBookName(rs.getString(2));
					a.setAuthor(rs.getString(3));
					a.setCategory(rs.getString(4));
					lst.add(a);
					System.out.println("cnt2");
				}
				con.close();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return lst;
		}
		
		public List<Review> getAllReviews(String bookId)
		{   int i;
			List<Review> lst=new LinkedList<Review>();
			con=myConnection();
			try
			{
			Statement s=
						con.createStatement
						(ResultSet.TYPE_SCROLL_SENSITIVE,
								ResultSet.CONCUR_READ_ONLY);
			String str= "select * from bookreview where bookId=?";
			ps=con.prepareStatement(str);
			ps.setString(1, bookId);
			rs=ps.executeQuery();
			
			while (rs.next()) {
				Review a=new Review();
				//a.setRno(rs.getInt(1));
				a.setBookId(rs.getString(1));
				a.setCategory(rs.getString(2));
				a.setUname(rs.getString(3));
				a.setReview(rs.getString(4));
				lst.add(a);
				System.out.println("cnt2");
			  }
			
			
				con.close();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return lst;
		}
}
