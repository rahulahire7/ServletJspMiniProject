package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;


import com.model.Login;
import com.model.Registration;

public class Registrationjdbc {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public Connection myConnection()
	{
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","newuser123");
			} catch (ClassNotFoundException | SQLException | NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return con;
	}
	public int saveData(List<Registration>lst)
	{
		Registration r=(Registration)lst.get(0);
		int i=0;
	{
	try {
	con=myConnection();
	ps=con.prepareStatement("insert into Registration values(?,?,?,?,?)");
	ps.setString(1, r.getName());
	ps.setString(2, r.getEmail());
	ps.setString(3, r.getUsername());
	ps.setString(4, r.getPassword1());
	ps.setString(5, r.getPassword2());
	System.out.println(r.getPassword1()+r.getUsername());
	i= ps.executeUpdate();
con.close();
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	}
		return i;
	}
	
	public List<Registration>displayData()
	{

	List<Registration> lst=new LinkedList<Registration>();
	con=myConnection();
	try
	{
	Statement s=
				con.createStatement
				(ResultSet.TYPE_SCROLL_SENSITIVE,
						ResultSet.CONCUR_READ_ONLY);
		rs=s.executeQuery("select * from Registration");
		while(rs.next())
		{
			Registration r=new Registration();
			r.setName(rs.getString(1));
			r.setEmail(rs.getString(2));
			r.setUsername(rs.getString(3));
			r.setPassword1(rs.getString(4));
			r.setPassword2(rs.getString(5));
			lst.add(r);
			System.out.println("cnt");
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return lst;
}
	
	public List<Registration> displayAll()
	 {
      List<Registration> lst = new LinkedList<Registration>();
     
      String str = "Select Name, Email, Username, Phoneno from Student";
      
      try {
		con = myConnection();
		   Statement st =con.createStatement();
		   ResultSet rs = st.executeQuery(str);
		   while(rs.next()){
			   //r= new Register(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4)); 
			   Registration r=new Registration();
				r.setName(rs.getString(1));
				r.setEmail(rs.getString(2));
				r.setUsername(rs.getString(3));
				r.setPassword1(rs.getString(4));
				r.setPassword2(rs.getString(5));
				lst.add(r);
			   
			   
			   
		   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     
      return lst;
      
	 }
	public boolean validateUser(Login l)
	{
		myConnection();
		List<Registration> lst=displayData();
		boolean b=false;
		for(Registration r:lst)
		{
			System.out.println(r.getUsername()+" "+l.getUsername());
			System.out.println(r.getPassword1()+" "+l.getPassword1());
			if(r.getUsername().equals(l.getUsername()))
			{
				if(r.getPassword1().equals(l.getPassword1()))
				{
					b=true;
					break;
				}
			}
		}
		return b;
	}
}
