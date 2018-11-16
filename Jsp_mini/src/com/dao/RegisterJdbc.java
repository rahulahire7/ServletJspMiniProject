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
import com.model.Register;

public class RegisterJdbc {

	private Connection con;
	private PreparedStatement ps;
	private Statement st;
	private ResultSet rs;
	private int i;
	
	public Connection myConnection() {
		try {
			//Database connectivity
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Newuser123");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		return con;
	}
	
	public int saveData(List<Register> lst)
	{
		
		int i=0;
		Register a=null;
		con=myConnection();
		try
		{
			//To insert the data in register table
			Iterator<Register> itr=lst.iterator();
			while(itr.hasNext())
			{
				a=itr.next();
				ps=con.prepareStatement("insert into Register values(?,?,?,?,?,?)");
				ps.setString(1,a.getUname());
				ps.setString(2,a.getPass());
				ps.setString(3, a.getAdd());
				ps.setString(4, a.getBldgrp());
				ps.setLong(5,a.getNumber());
				ps.setString(6, a.getEmail());
				
				
				
				i = ps.executeUpdate();
			}
		}
		catch(Exception e)
		{
			//System.out.println(e);
		}
		finally
		{
			try
			{
				con.close();
			} 
			catch (SQLException e) 
			{
				//e.printStackTrace();
			}
		}
		return i;
	}
	public List<Register> getAllData()
	{
		//Using List to store the objects of Register model
		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		try
		{
		Statement s=
					con.createStatement
					(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Register");
			while(rs.next())
			{
				Register a=new Register();
				a.setUname(rs.getString(1));
				a.setPass(rs.getString(2));
				a.setAdd(rs.getString(3));
				a.setBldgrp(rs.getString(4));
				a.setNumber(rs.getLong(5));
				a.setEmail(rs.getString(6));
				
				lst.add(a);
				//System.out.println("cnt");
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
			System.out.println(l.getUname());
			System.out.println(r.getUname());
			System.out.println(l.getPass());
			System.out.println(r.getPass());
			if(r.getUname()==l.getUname())
			{
				System.out.println("checkkk");
				if(r.getPass().equals(l.getPass()))
				{
					b=true;
					System.out.println("checkkk");
					break;
				}
			}
		}
		return b;
	}
	
}
