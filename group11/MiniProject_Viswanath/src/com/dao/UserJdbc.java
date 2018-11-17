package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import com.model.Login;
import com.model.User;

public class UserJdbc {
PreparedStatement ps;
	
	Connection con;
	
	
	public Connection myconnection()
	{
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("check connection ....1");
		}
		try {
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("check connection ....2");
		}
		return con;
	}
	
	public int AddData(ArrayList<User>lst)
	{
		Iterator<User> it=lst.iterator();
		con=myconnection();
		int i=0;
		while(it.hasNext())
		{
		
			User u=it.next();
			
	    
	         try {
				 ps=con.prepareStatement("Insert into user_details values (?,?,?,?,?,?)");
				 ps.setString(1, u.getName());
				 ps.setString(2, u.getEmail());
				 ps.setInt(3, u.getAge());
				 ps.setLong(4, u.getContact());
				 ps.setString(5, u.getPass());
				 ps.setDouble(6, u.getBalance());
				
				 i=ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	   
		}
		
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
	
	public ArrayList<User> DisplayData() {
		
		ArrayList<User>lst=new ArrayList<User>();
		con=myconnection();
		Statement st=null;
		try {
			st=con.createStatement();
			ResultSet rs=null;
			rs=st.executeQuery("Select * from user_details");
			while(rs.next())
			{
				User u = new User();
				u.setName(rs.getString(1)); 
				u.setEmail(rs.getString(2));
				u.setAge(rs.getInt(3)); 
				u.setContact(rs.getLong(4));
				u.setPass(rs.getString(5));
				u.setBalance(rs.getDouble(6));
				lst.add(u);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return lst;
		}
	
	public boolean validate(User l) {
		
		con=myconnection();
	    try {
			ps=con.prepareStatement("Select *from user_details");
			ResultSet rs=null;
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				if(l.getName().equals(rs.getString(1)) && l.getPass().equals(rs.getString(5)))
					return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    return false;
		
	}
	
	public ArrayList<User> search(String str)
	{
		ArrayList<User> lst=new ArrayList<User>();
		con=myconnection();
	      	
	    		ResultSet rs=null;
			try {
				ps=con.prepareStatement("Select* from Customer where name=?");
				ps.setString(1, str);
				
				rs=ps.executeQuery();
				System.out.println("jdbc");
				while(rs.next())
				{   
					System.out.println("inside while");
					User u=new User();
					u.setName(rs.getString(1));
				    u.setPass(rs.getString(2));
				    u.setEmail(rs.getString(3));
				    u.setAge(rs.getInt(4));
				    u.setContact(rs.getLong(5)); 
				    u.setBalance(rs.getDouble(6));
				    lst.add(u);  
					System.out.println("inside while"+u.getAge());

					
     }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		return lst;
	}

  
	public boolean withdraw( int money,String uname)
	{
		int i=0;
		con=myconnection();
		
		try {
			ps=con.prepareStatement("update user_details set balance=balance-? where name=?");
			ps.setInt(1, money);
			ps.setString(2, uname);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(i>0) return true;
		
		return false;
		
		
	}
	
	//////////////////////////////////////////////////////////////////////////////
	
	public int checkbalance(String uname)
	{
		int i=0;
		con=myconnection();
		try {
			ps=con.prepareStatement("select balance from user_details where name=?");
			ps.setString(1, uname);
			ResultSet rs=null;
			rs=ps.executeQuery();
			 rs.next();
			
				i= rs.getInt(1);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
	
}
