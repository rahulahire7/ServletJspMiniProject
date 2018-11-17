package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
//import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import com.model.*;

public class DBApplication {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public Connection myConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Newuser123");
		}
		catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}
	
	public int saveData(List<Register> lst) {
		int i=0;
		Register r=null;
		conn=myConnection();
		r=lst.get(0);
//		System.out.println(r.getName()+"\t"+r.getEmail()+"\t"+r.getPassword());
		try {
			ps=conn.prepareStatement("insert into Registration1 values(?,?,?)");
			ps.setString(1, r.getName());
			ps.setString(2, r.getEmail());
			ps.setString(3, r.getPassword());
			i=ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		finally {
			try {
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return i;
	}
	
	public  List<Register> getAllData()
	{
		List<Register> lst=new LinkedList<Register>();
		conn=myConnection();
		try
		{
		Statement s=
					conn.createStatement
					(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Registration1");
			while(rs.next())
			{
				Register a=new Register();
				a.setName(rs.getString(1));
				a.setEmail(rs.getString(2));
				a.setPassword(rs.getString(3));
				lst.add(a);
				System.out.println(a.getEmail()+"\t"+a.getPassword());
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return lst;
	}
	
	public Register getUserData(Login l) {
		conn=myConnection();
		Register r=new Register();
		rs=null;
		
		try {
			System.out.println(l.getEmail()+"\t"+l.getPassword());
			ps=conn.prepareStatement("select * from registration1 where email=? and pwd=?");
			ps.setString(1, l.getEmail());
			ps.setString(2, l.getPassword());
			rs =ps.executeQuery();
			System.out.println(l.getEmail()+"\t"+l.getPassword());
			rs.next();
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			r.setName(rs.getString(1));
			r.setEmail(rs.getString(2));
			r.setPassword(rs.getString(3));
			System.out.println(r.getName()+"\t"+r.getEmail()+"\t"+r.getPassword());
		}
		catch(Exception e) {
//			System.out.println(e);
			e.printStackTrace();
		}
		return r;
	}
	
	public boolean validateUser(Login l)
	{
		myConnection();
		System.out.println(l.getEmail()+"\t"+l.getPassword());
		DBApplication db = new DBApplication();
		List<Register> lst=db.getAllData();
		System.out.println(lst.get(0).getEmail()+"\t"+lst.get(0).getName());
		boolean b=false;
		for(Register r:lst)
		{
			if(r.getEmail().equals(l.getEmail()))
			{
				if(r.getPassword().equals(l.getPassword()))
				{
					b=true;
					break;
				}
			}
		}
		return b;
	}
}
