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
import com.model.Register;

public class DataJdbc {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public Connection myConnection()
	{
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				con=(Connection) DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","newuser123");
			} catch (ClassNotFoundException | SQLException | NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return con;
	}
	public int saveData(List<Register>lst)
	{
		Register r=(Register)lst.get(0);
		int i=0;
	{
	try {
	con=myConnection();
	ps=con.prepareStatement("insert into Student values(?,?,?,?,?,?)");
	ps.setString(1, r.getName());
	ps.setString(2, r.getEmail());
	ps.setString(3, r.getUsername());
	ps.setString(4, r.getPwd1());
	ps.setString(5, r.getPwd2());
	ps.setLong(6, r.getPhoneno());
	i= ps.executeUpdate();
con.close();
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	}
		return i;
	}
	
	public List<Register> CompleteInfo()
	{
		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		try
		{
		Statement s=
					con.createStatement
					(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from Student");
			while(rs.next())
			{
				Register a=new Register();
				a.setName(rs.getString(1));
				a.setEmail(rs.getString(2));
				a.setUsername(rs.getString(3));
				a.setPwd1(rs.getString(4));
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
	public boolean validateData(Login l)
	{
		myConnection();
		List<Register> lst=CompleteInfo();
		
		System.out.println("inside validate date");
		System.out.println(l.getUsername()+" "+l.getPwd1());
		boolean b=false;
		for(Register r1:lst)
		{
			System.out.println("inside validate date");
			System.out.println(l.getUsername()+" "+l.getPwd1());
			System.out.println(r1.getUsername()+" "+r1.getPwd1());
			if(r1.getUsername().equals(l.getUsername()))
			{
				if(r1.getPwd1().equals(l.getPwd1()))
				{
					b=true;
					break;
				}
			}
		}
		return b;
	}
	 public List<Register> displayAll()
 	 {
       List<Register> lst = new LinkedList<Register>();
      
       String str = "Select Name, Email, Username, Phoneno from Student";
       
       try {
		con = myConnection();
		   Statement st =con.createStatement();
		   ResultSet rs = st.executeQuery(str);
		   while(rs.next()){
			   //r= new Register(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4)); 
			   Register a=new Register();
				a.setName(rs.getString(1));
				a.setEmail(rs.getString(2));
				a.setUsername(rs.getString(3));
				a.setPhoneno(rs.getLong(4));
			   
			   lst.add(a);
			   
			   
		   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
       return lst;
       
	 }

	

	
	public void displayData()
	{
	String str="select name,email,username,pwd1,pwd2,Phoneno from Student";
	try { 
	con=myConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(str);
	ResultSetMetaData rsmd=rs.getMetaData();
	for(int i=1;i<=rsmd.getColumnCount();i++)
	{
	System.out.println(rsmd.getColumnName(i)+"\t");
	}
	System.out.println("\n--------------");
	while(rs.next())
	{
	System.out.println(rs.getString(1)+"\t"+
	rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)+
	"\t"+rs.getString(5)+rs.getString(6));
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	}
	}
	

