package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import com.model.Login;
import com.model.Register;

public class DBApplication {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public Connection myConnection()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Newuser123");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	public int saveData(List<Register> lst)
	{
		
		int i=0;
		//Account a=lst.get(0);
		Register a=null;
		con=myConnection();
		try
		{
			Iterator<Register> itr=lst.iterator();
			
			while(itr.hasNext())
			{
				
				a=itr.next();
				ps=con.prepareStatement("insert into Registration values(?,?,?,?)");
				ps.setInt(1,a.getRno());
				ps.setString(2,a.getFname());
				ps.setString(3,a.getPass());
				ps.setDouble(4,a.getBal());
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
	
	public List<Register> getAllData()
	{
		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		try
		{
		Statement s = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Registration");
			while(rs.next())
			{
				Register a=new Register();
				a.setRno(rs.getInt(1));
				a.setFname(rs.getString(2));
				a.setPass(rs.getString(3));
				a.setBal(rs.getDouble(4));
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
			if(l.getFname().equals(r.getFname()) && l.getPass().equals(r.getPass()))
			{
					b=true;
					break;
			}
		}
		return b;
	}
	
	public List<Register> getUser(Register u){
		List<Register> lst = new ArrayList<Register>();
		try {
			con = myConnection();
			ps = con.prepareStatement("select * from Registration where rno=?");
			ps.setInt(1, u.getRno());
			rs = ps.executeQuery();
			while(rs.next())
			{
				u.setRno(rs.getInt("rno"));
				u.setFname(rs.getString("fname"));
				u.setPass(rs.getString("pass"));
				u.setBal(rs.getInt("bal"));
				lst.add(u);
				System.out.println("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;	
	}
}
