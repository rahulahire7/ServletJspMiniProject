package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

//import javax.security.auth.message.callback.PrivateKeyCallback.Request;
//import javax.servlet.http.HttpSession;

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
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","newuser123");
			System.out.println("connection to db");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
	
	/////////////////////////////////////////////////////////////////////////
	
	public boolean addmoney(int money,String email)
	{  
		int i=-1;
		con=myConnection();
		try {
			ps=con.prepareStatement("update registration set BALANCE=balance+? where EMAIL=?");
			ps.setInt(1, money);
			ps.setString(2, email);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(i>0)
			return true;
		
		return false;
		
		
	}
	
	////////////////////////////////////////////
	public int checkbalanace(String email)
	{  
		int i=-1;
		con=myConnection();
		
		try {
			ps=con.prepareStatement("select BALANCE from registration where EMAIL=?");
			ps.setString(1, email);
			
			ResultSet rs=ps.executeQuery();
			
			   rs.next();
			   i=rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	       
	       return i;
				
		
	}
	///////////////////////////////////////////
	
	public boolean deductbalance(int money,String email)
	{
		int i=-1;
		con=myConnection();
		int balance=checkbalanace(email);
		if((balance-money)<0)
			return false;
		try {
			ps=con.prepareStatement("update registration set BALANCE=BALANCE-? where EMAIL=?");
			ps.setInt(1, money);
			ps.setString(2, email);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(i>0) return true;
		
		return false;
		
	}
	
	
	
	////////////////////////////////////////////
	public int updateData(List<Register> lst)
	{
		int j=0;
		//Account a=lst.get(0);
		Register a=null;
		con=myConnection();
		try
		{
			Iterator<Register> itr=lst.iterator();
			System.out.println("dbsave2");
			while(itr.hasNext())
			{
				//System.out.println("dbsave3");
				a=itr.next();
				ps=con.prepareStatement("update registration set fname=?,lname=?,email=?,bal=? where rno=?");
				ps.setString(1,a.getFname());
				ps.setString(2,a.getLname());
				ps.setString(3,a.getEmail());
				ps.setDouble(4,a.getBal());
				ps.setInt(5, a.getRno());
				//System.out.println("saveData");
				j = ps.executeUpdate();
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
		return j;
	}
	public int saveData(List<Register> lst)
	{
		/*System.out.println("dbsave1");*/
		int i=0;
		//Account a=lst.get(0);
		Register a=null;
		con=myConnection();
		try
		{
			Iterator<Register> itr=lst.iterator();
			System.out.println("dbsave2");
			while(itr.hasNext())
			{
				//System.out.println("dbsave3");
				a=itr.next();
				ps=con.prepareStatement("insert into Registration values(?,?,?,?,?,?,?)");
				ps.setInt(1,a.getRno());
				ps.setString(2,a.getFname());
				ps.setString(3,a.getLname());
				ps.setString(4,a.getEmail());
				ps.setString(5, a.getPass());
				ps.setDouble(6, a.getBal());
				ps.setInt(6, 0);
				//System.out.println("saveData");
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
	
	public LinkedList<Object> getObject(LinkedList<String> lstd) {
		
		con=myConnection();
		LinkedList<Object> info = new LinkedList<Object>();
		String fname = null;
		String email= lstd.get(0);
		List<Register> lst=getAllData();
		for(Register r:lst) {
			
			
			if(r.getEmail().equals(email)) {
				System.out.println("found");
				int rno = r.getRno();
			    fname = r.getFname();
			    String pass=r.getPass();
			    String lname = r.getLname();
			    email = r.getEmail();
			    double sal = r.getBal();
			    rno = r.getRno();
			    info.add(fname);
			    info.add(lname);
			    info.add(email);
			    info.add(sal);
			    info.add(rno);
			    info.add(pass);
			}
		}
		
		return info;
	}
	public List<Register> getAllData()
	{

		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		try
		{
		Statement s=con.createStatement (ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Registration");
			while(rs.next())
			{
				Register a=new Register();
				a.setRno(rs.getInt(1));
				a.setFname(rs.getString(2));
				a.setLname(rs.getString(3));
				a.setEmail(rs.getString(4));
				a.setPass(rs.getString(5));
				a.setBal(rs.getDouble(6));
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
		con=myConnection();
		List<Register> lst=getAllData();
		boolean b=false;
		for(Register r:lst)
		{
			
			if(r.getEmail().equals(l.getEmail()))
			{
				if(r.getPass().equals(l.getPass()))
				{
					b=true;
					break;
				}
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