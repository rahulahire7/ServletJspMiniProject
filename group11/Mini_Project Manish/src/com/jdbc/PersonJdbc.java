package com.jdbc;

import com.dao.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

//import javax.swing.text.html.HTMLDocument.Iterator;
import java.util.Iterator;

public class PersonJdbc {

	PreparedStatement ps;
	
	Connection con;
	
	
	public Connection myconnection()
	{
	
		try {
			Class.forName("oracle.jdbc.OracleDriver");    // Specifying Drivers used
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
			System.out.println("check connection ....1");
		}
		try {
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");    //connection creation
		} catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("check connection ....2");
		}
		return con;      //returning connection reference
		
		
		
	}
	
	public int InsertData(ArrayList<Data>lst)
	{
		Iterator<Data> it=lst.iterator();
		con=myconnection();
		int i=0;
		while(it.hasNext())      // looping over the result set of our query
		{
		
			Data dt=it.next();
			
	    
	         try {
				ps=con.prepareStatement("Insert into member1 values (?,?,?,?,?,?)");   //Performing the SQL query
				 ps.setString(1, dt.getName());  //setting values in pojo class
				 ps.setString(2, dt.getPass());
				 ps.setString(3, dt.getEmail());
				 ps.setInt(4, dt.getAge());
				 ps.setLong(5, dt.getContact());
				 ps.setInt(6, 0);
				 i=ps.executeUpdate();    //running sql query
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	   
		}
		
		try {
			con.close();                      // closing connection
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;    //returning the success or failure value of executing the query
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////
	
	public boolean validate(Data dt)
	{
		con=myconnection();
	  Statement st=null;
	  try {
		st=con.createStatement();       // creating sql statement for DQL query
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  ResultSet rs=null;
	try {
		rs = st.executeQuery("Select email,password from member1");    //result stored in resultset
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  try {
		while(rs.next())           // looping over result set  and checking the validity
		  {
			  if(dt.getName().equals(rs.getString(1)) && dt.getPass().equals(rs.getString(2))) return true;
		  }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return false;              
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public ArrayList<Data> search(String str)
	{
		ArrayList<Data> lst=new ArrayList<Data>();
		con=myconnection();
	      	
	     System.out.println("ENTERED search function");
		ResultSet rs=null;
			try {
				ps=con.prepareStatement("Select* from member1 where name=?");            //running DQL query
				ps.setString(1, str);
				
				rs=ps.executeQuery();
				
				while(rs.next())                    //Looping over to set the values of pojo class and store in result array list
				{   
					
						Data dt=new Data();
						dt.setName(rs.getString(1));
					
				    dt.setPass(rs.getString(2));
				    dt.setEmail(rs.getString(3));
				    dt.setAge(rs.getInt(4));
				    dt.setContact(rs.getLong(5));  
				    lst.add(dt);  
					
					
     }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		return lst;
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public ArrayList<Data> displayall()
	{
		ArrayList<Data>lst=new ArrayList<Data>();
		con=myconnection();
		Statement st=null;
		try {
			st=con.createStatement();
			ResultSet rs=null;
			rs=st.executeQuery("Select * from member1");
			
			while(rs.next())              //Looping over to set the values of pojo class and store in result array list
			{
				Data dt=new Data();
dt.setAge(rs.getInt(4)); dt.setContact(rs.getLong(5)); dt.setEmail(rs.getString(3)); dt.setName(rs.getString(1)); dt.setPass(rs.getString(2));	
			   lst.add(dt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return lst;
	}
	
	//////////////////////////////////////////////////////////////////////////////////////
	
	public Data admin()
	{
		con=myconnection();
		Data dt=new Data();
		Statement st=null;
		try {
			st=con.createStatement();
			ResultSet rs=null;
			rs=st.executeQuery("Select *from admin");
			while(rs.next())
			{
				dt.setName(rs.getString(1));
				dt.setPass(rs.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		                                                     //returning value of admin credentials
		return dt;
	}
	
	////////////////////////////////////////////////////////////////////////////////////////
	
	public int checkbalance(String email)
	{   
		int i=-1;
		 ResultSet rs=null;
		con=myconnection();
	    try {
			ps=con.prepareStatement("Select amount from member1 where email=? ");  //selecting specific value of user 
			ps.setString(1, email);
			rs=ps.executeQuery();
			rs.next();
			i=rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return i;
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////
	public boolean deduct_balance(int plan,String email)
	{   
		int i=-1;
		con=myconnection();
		try {
			ps=con.prepareStatement("update member1 set amount=amount-? where email=?");      // deducting th amount from user account
			ps.setInt(1, plan);
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
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////
	
	public boolean addmoney(int money,String email)
	{
		int i=-1;
		con=myconnection();
		
		try {
			ps=con.prepareStatement("update member1 set amount=amount+? where email=?");  //adding money to user account
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
	
	
}