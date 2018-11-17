

package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;


import java.util.Objects;

import com.model.Appt;
import com.model.Registration;
/**
 * 
 * @author vshadmin
 *
 */
public class DBApplication {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
int i;
	public Connection myConnection()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Newuser123");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			System.out.println("catch connection 1");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			System.out.println("catch connection 2");
		}
		
		
		return con;
	}/*
	public int saveData(LinkedList<Registration> lst)
	{
		System.out.println("dbsave1");
		int i=0;
		//Account a=lst.get(0);
		Registration r=null;
		con=myConnection();
	try
		{
			Iterator<Registration> itr=lst.iterator();
			System.out.println("dbsave2");
			while(itr.hasNext())
			{
				System.out.println("dbsave3");
				r=itr.next();
				ps=con.prepareStatement("insert into Registration values(?,?,?,?,?)");
				ps.setString(1, r.getName());
				ps.setString(2, r.getEmail());
				ps.setString(3, r.getUsername());
				ps.setString(4, r.getPassword1());
				ps.setString(5, r.getPassword2());
				i= ps.executeUpdate();
			con.close();
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
	
	
	public List<Registration>displayData()
	{

	List<Registration> lst=new LinkedList<Registration>();
	con=myConnection();
	
	try {
		Statement s=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
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
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return lst;
}
	
	


	
	public boolean validateUser(Appt l)
	{
		myConnection();
		List<Registration> lst=displayData();
		boolean b=false;
		for(Registration r:lst)
		{
			if(Objects.equals(r.getUsername(), l.getUsername()))
			{
				if(Objects.equals(r.getPassword1(), l.getPassword1()))
				{
					b=true;
					break;
				}
			}
		}
		return b;
	}*/
		/**
		 * 
		 * 
		 * @param l
		 * @return int i  
		 */
		public int saveData(ArrayList<Registration> l){
			try {
				Iterator<Registration> it = l.iterator();
				while(it.hasNext()) 
				{
				 Registration r =(Registration)it.next();
				con=myConnection();
				ps=con.prepareStatement("insert into Registration values(?,?,?,?,?)");
				ps.setString(1, r.getName());
				ps.setString(2, r.getEmail());
				ps.setString(3, r.getUsername());
				ps.setString(4, r.getPassword1());
				ps.setString(5, r.getPassword2());
				i= ps.executeUpdate();
				}
			con.close();
				}
				catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("test11");
				e.printStackTrace();
			}
			catch(Exception e){
				System.out.println("global.."+e);
			}
			return i;
		}
		public ArrayList<Registration> displayData()
		{     
			ArrayList<Registration> lst=new ArrayList<Registration>();
			con=myConnection();
			try
			{
			Statement s=con.createStatement
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
		
		public boolean validateUser(Appt lo)
		 {
			System.out.println(lo.getUsername());
			System.out.println(lo.getPassword1());
			myConnection();
		    ArrayList<Registration> lst=displayData();
			boolean b=false;
			
			for(Registration r:lst)
			{
				if(Objects.equals(r.getUsername(), lo.getUsername()))
				{
					if(Objects.equals(r.getPassword1(), lo.getPassword1()))
					{
						b=true;
						break;
					}
				}
			}
			return b;


	     }
}
