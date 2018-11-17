package com.dao;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import com.model.Login;
//import com.model.Login;
import com.model.Register;
public class RegisterJdbc {
	Connection con;
	PreparedStatement ps;
	int i;
	public Connection myConnection(){
		//1.load driver
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");
			System.out.println("Connection to db..");
	} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("catch connection..");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("catch connection..2");
			e.printStackTrace();
		} 
		return con;
	}
	public int saveData(List<com.model.Register> lst){
		try {
			con=myConnection();
			com.model.Register e = new com.model.Register();
			ps=con.prepareStatement("insert into member3 values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, lst.get(0).getName());
			ps.setString(2, lst.get(0).getUname());
			ps.setString(3, lst.get(0).getPassword());
			ps.setString(4, lst.get(0).getGender());
			ps.setString(5, lst.get(0).getState());
			ps.setString(6, lst.get(0).getCity());
			ps.setString(7, lst.get(0).getMobile());
			ps.setString(8, lst.get(0).getCourse());
			ps.setString(9, lst.get(0).getEmail());
			i = ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			System.out.println("test11");
			e.printStackTrace();
		}
		catch(Exception e){
			System.out.println("global.."+e);
		}
		return i;
	}
	
	
	public boolean validateData(List<Login> ls) {
		List<Register> lr = getAllData();
		int flag=0;
		Iterator<Register> itr = lr.iterator();
		while(itr.hasNext()){
			Register r = itr.next();
			if(ls.get(0).getUname().equals(r.getUname()) && ls.get(0).getPassword().equals(r.getPassword())) {
				flag=1;	
				break;
				}
			else {
				continue;
			}
		}
		if(flag==1)
			return true;
		else
			return false;
		}

	
	public List<Register> getAllData()
	{
		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		try
		{
		Statement s=
					con.createStatement
					(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			ResultSet rs=s.executeQuery("select * from member3");
			while(rs.next())
			{
				Register u=new Register();
				u.setName(rs.getString("name"));
				u.setUname(rs.getString("uname"));
				u.setPassword(rs.getString("password"));
				u.setGender(rs.getString("gender"));
				u.setState(rs.getString("state"));
				u.setCity(rs.getString("city"));
				u.setMobile(rs.getString("mobile"));
				u.setCourse(rs.getString("course"));
				u.setEmail(rs.getString("email"));
				
				lst.add(u);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return lst;
	}
	public List<Register> getUser(Register u){
		List<Register> lst = new ArrayList<Register>();
		try {
			con = myConnection();
			ps = con.prepareStatement("select * from member3 where uname=?");
			ps.setString(1, u.getUname());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				u.setName(rs.getString("name"));
				u.setUname(rs.getString("uname"));
				u.setCourse(rs.getString("course"));
				
				lst.add(u);
				System.out.println("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
		return lst;	
	}
}
