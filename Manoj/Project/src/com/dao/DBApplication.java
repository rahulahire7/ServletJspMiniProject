//package test1;
package com.dao;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import com.model.Login;
import com.model.Product;
import com.model.Register;
public class DBApplication 
{
	Connection con;			//variable for setting DB connection
	PreparedStatement ps;	//variable to store prepared statement
	ResultSet rs;			//variable to store value returned by resultset
	
	public Connection myConnection()			//method to establish connection
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","Newuser123");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	public int saveData(List<Register> lst)		//method to save data to DB
	{
		System.out.println("dbsave1");
		int i=0;
		Register a=null;
		con=myConnection();
		try
		{
			Iterator<Register> itr=lst.iterator();	//for iteration
			System.out.println("dbsave2");
			while(itr.hasNext())
			{
				System.out.println("dbsave3");
				a=itr.next();
				ps=con.prepareStatement("insert into Registration values (?,?,?,?,?,?)");	//set values to DB
				ps.setString(1,a.getName());
				ps.setString(2,a.getOrg());
				ps.setString(3,a.getEmail());
				ps.setLong(4,a.getMob());
				ps.setString(5,a.getUsnm());
				ps.setString(6,a.getPass());
				i = ps.executeUpdate();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			try
			{
				con.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return i;
	}
	public List<Register> getAllData()		//method to display data
	{
		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		try
		{
			Statement s=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Registration");		//get values from DB
			while(rs.next())
			{
				Register a=new Register();
				a.setName(rs.getString(1));
				a.setOrg(rs.getString(2));
				a.setEmail(rs.getString(3));
				a.setMob(4);
				a.setUsnm(rs.getString(5));
				a.setPass(rs.getString(6));
				lst.add(a);
				System.out.println("cnt");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return lst;
	}
	public boolean validateUser(Login l)
	{
		myConnection();
		List<Register> lst=getAllData();
		boolean b=false;
		for(Register r:lst)
		{
			if(r.getUsnm().equals(l.getuno()))					//validate username
			{
				if(r.getPass().equals(l.getPass()))		//validate password
				{
					b=true;
					break;
				}
			}
		}
		System.out.println(b);
		return b;
	}
	
	public List<Product> prodgetAllData( List<Product> lst)		//method to display data
	{
		//List<Product> lst=new LinkedList<Product>();
		 con=myConnection();
		
		try
		{
			Statement s=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Product");		//get values from DB
			while(rs.next())
			{
				Product a=new Product();
				a.setProdnm(rs.getString(1));
				a.setPrice(rs.getInt(2));
				a.setStock(rs.getInt(3));
				lst.add(a);
				System.out.println("cnt");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return lst;
	}
	
	public List<Product> produpdate()
	{
		con=myConnection();
		List<Product> lst=new LinkedList<Product>();
		try
		{
			Statement s=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("update Product set Stock='?' where Prodnm='?'");		//get values from DB
			while(rs.next())
			{
				Product a=new Product();
				//a.setProdnm(rs.getString(1));
				a.setStock(rs.getInt(3));
				lst.add(a);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return lst;
	}
		
	
}
