package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.model.Register;

public class DatabaseConnectionFactory {
	 static Connection con;
	 PreparedStatement ps;
	 int i;
	
	public static Connection createConnection()
	{
		
		try{
			try {
				   Class.forName("oracle.jdbc.OracleDriver");
				}
				catch(ClassNotFoundException ex) {
				   System.out.println("Error: unable to load driver class!");
				   System.exit(1);
				}			
		     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");
		   }
		  catch(SQLException sqe){ System.out.println("Error: While Creating connection to database");sqe.printStackTrace();}
		return con;
	}
	
	
	public List<Register> getAllData() {
    	List<Register> lst = new LinkedList<Register>();
    	 con = createConnection();
    	try {
    		Statement s = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
    		ResultSet rs = s.executeQuery("select * from users");
    		while(rs.next()) {
    			Register a = new Register();
    			a.setUsername(rs.getString(1));
    			a.setEmail(rs.getString(2));
    			a.setPassword(rs.getString(3));
    			lst.add(a);
    		}
    	}catch(Exception e) {
    		System.out.println(e);
    	}
    	return lst;
    }


	public int Delete(String uname) {
		try {
			 con = createConnection();
		    ps = con.prepareStatement("delete from users where username=?");
			ps.setString(1, uname);
			i=ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return i;
	}
		
	}
    



