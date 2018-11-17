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



import com.model.Registration;

public class RegistrationJdbc {
double r;
ResultSet rs;
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
			e.printStackTrace();
			System.out.println("catch connection..");
		} catch (SQLException e) {
			System.out.println("catch connection..2");
			e.printStackTrace();
		}
		return con;
	}
	public int saveData(LinkedList<Registration> lst){
		try {
			
			con=myConnection();
			ps=con.prepareStatement("insert into LTIREG values(?,?,?,?)");
			ps.setInt(1,lst.get(0).getRegNo());
			ps.setString(2,lst.get(0).getUname());
			ps.setString(3,lst.get(0).getPass());
			ps.setDouble(4,lst.get(0).getBal());
			i = ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("test11");
			e.printStackTrace();
		}
		catch(Exception e){
			System.out.println("global.."+e);
		}
		return i;
	}
	public int display() {
		try {
			con=myConnection();
			Statement s=con.createStatement();
			ResultSet rs=s.executeQuery("select * from LTIREG");
			while(rs.next())
			{
			    
			    ResultSetMetaData rsmd=rs.getMetaData();
				for(int i=1;i<=rsmd.getColumnCount();i++){
					System.out.print(rsmd.getColumnName(i)+"\t");
				}
				System.out.println("\n--------------------------------------");
				while(rs.next())
				{
					System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getDouble(4));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			return i;	
	}
public boolean validate(LinkedList<Registration> lst) {
	
	try {
		
		con=myConnection();
		Statement s=con.createStatement();
		
		String r1 = lst.get(0).getUname();
		String r2 = lst.get(0).getPass();
		ResultSet rs=s.executeQuery("select * from LTIREG");
		while (rs.next())
		{
			if (r1.equals(rs.getString(2)))
					{
				      if (r2.equals(rs.getString(3)))
				      {
				    	  return true; 
				      }
					}
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return false;
}
public boolean book(LinkedList<Registration> lst) {
	try {
		con=myConnection();
		
		//String r1 = lst.get(0).getUname();
		//String r2 = lst.get(0).getPass();
		
		ps=con.prepareStatement("select balance from LTIREG where name= ? and password = ?" );
		System.out.println("connected");
		ps.setString(1, lst.get(0).getUname());
		ps.setString(2, lst.get(0).getPass());
		System.out.println("select done");
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
				 r=rs.getInt("balance");
				}
		if(r<2000) {
			return false;
		}
		else {
			ps=con.prepareStatement("update LTIREG SET balance=balance-2000 where name= ? and password = ?" );
			ps.setString(1, lst.get(0).getUname());
			ps.setString(2, lst.get(0).getPass());
			i = ps.executeUpdate();
			System.out.println("balance updated");
			con.close();
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("book exception");
		e.printStackTrace();
	return false;
	}
	
}
public List<Registration> getAllData()
{
	List<Registration> lst=new LinkedList<Registration>();
	con=myConnection();
	try
	{
	Statement s=con.createStatement
				(ResultSet.TYPE_SCROLL_SENSITIVE,
						ResultSet.CONCUR_READ_ONLY);
		rs=s.executeQuery("select * from LTIREG");
		while(rs.next())
		{
			Registration u=new Registration();
			u.setRegNo(rs.getInt("regno"));
			u.setUname(rs.getString("name"));
			u.setPass(rs.getString("password"));
			u.setBal(rs.getDouble("balance"));
			lst.add(u);
			System.out.println("cnt");
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return lst;
}
public List<Registration> search(String s1)
{
	try {
		List<Registration> lst=new LinkedList<Registration>();
		String s=s1;
		con=myConnection();
		ps=con.prepareStatement("select * from LTIREG where regno= ?" );
		System.out.println("connected");
		ps.setString(1,s );
		
		System.out.println("select done");
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
				Registration u=new Registration();
				u.setRegNo(rs.getInt("regno"));
				u.setUname(rs.getString("name"));
				u.setPass(rs.getString("password"));
				u.setBal(rs.getDouble("balance"));
				lst.add(u);
				}
				return lst;
				
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}
	
}

}

