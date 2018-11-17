package com.model;

import java.sql.*;
import java.util.List;

public class Jdbc {
	Connection conn;
	int i;
	PreparedStatement ps;
	Statement st;
	ResultSet rs;
	public Connection myConnection() {
		try {
			//connect to database
			Class.forName("oracle.jdbc.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","NewUser123");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	//insert record into Register database
	public int saveData(List<Signup> lst) {
		try {
			conn = myConnection();
			ps=conn.prepareStatement("insert into Yoga_Register values(?,?,?)" );	
			Signup s=lst.get(0);
			ps.setString(1,s.getName());
			ps.setString(2,s.getEmail());
			ps.setString(3,s.getPassword());
			
		 i=ps.executeUpdate();
			conn.close();
			
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		return i;
	}
	//return user details
	public String[] login()
	{
		String uname = null;
		String password=null;
		
		try {
			conn=myConnection();
			st=conn.createStatement();
			rs=st.executeQuery("select name, password from yoga_Register");
			while(rs.next())
			{
				uname=rs.getString(1);
				password=rs.getString(2);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new String[] {uname,password};
	}
	
	// insert record into courses
	public int insertCourse(List<Courses> lst)
	{
		try
		{
		conn = myConnection();
		ps=conn.prepareStatement("insert into Courses (course_name,duration,hrs_per_week,hrs_per_day,user_name) values(?,?,?,?,?)" );	
		Courses c=lst.get(0);
		ps.setString(1,c.getCourse_name());
		ps.setInt(2,c.getDuration());
		ps.setInt(3,c.getHrs_per_week());
		ps.setInt(4, c.getHrs_per_day());
		ps.setString(5, c.getUser_name());
		
		
	 i=ps.executeUpdate();
		conn.close();
			
	} catch (SQLException ex) {
		// TODO Auto-generated catch block
		ex.printStackTrace();
	}
	return i;
	}
	
	//update password of user
	public int updatePass(String pass, String email)
	{
		try
		{
		conn = myConnection();
		ps=conn.prepareStatement("update Register set password=? where email=?" );	
		
		ps.setString(1,pass);
		ps.setString(2,email);
		
		
	 i=ps.executeUpdate();
		conn.close();
			
	} catch (SQLException ex) {
		// TODO Auto-generated catch block
		ex.printStackTrace();
	}
	return i;
	}
	
	

}


