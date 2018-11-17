package com.dao;
import com.model.EmiDetail;
import com.model.Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Date;


//import com.model.Login;
import com.model.User;
public class DBApplication {
	Connection con;
	PreparedStatement ps,ps1;
	ResultSet rs;
	int i;
	long genId;
	public Connection myConnection()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Newuser123");
		}
		catch(Exception e)
		{
			System.out.println("in connection catch");
			System.out.println(e);
		}
		return con;
	}
	public int saveData(List<User> lst)
	{
		System.out.println("in save data");

		//Account a=lst.get(0);



		try
		{

			System.out.println("iterating");
			con=myConnection();
			//				System.out.println(con);
			String sqlseq = "select users_seq.NEXTVAL from dual";
			//				System.out.println(sqlseq);
			ps=con.prepareStatement(sqlseq);
			synchronized( this ) {
				ResultSet rs = ps.executeQuery();
				if(rs.next()) 
					genId = rs.getLong(1);
			}
			System.out.println(genId);
			ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?)");
			User x= lst.get(0);

			ps.setLong(1, genId);
			ps.setString(2,x.getInputName());
			ps.setString(3,x.getInputGender());
			ps.setString(4,x.getInputPan());
			//			ps.setLong(5,x.getInputAadhar());
			ps.setString(5,x.getInputEmail());
			ps.setString(6,x.getInputPassword());
			ps.setString(7,x.getInputCity());
			//			ps.setLong(9,x.getInputMobile());


			i = ps.executeUpdate();
			System.out.println("completed executed update");
		}
		catch(Exception e)
		{
			System.out.println("in execute update catch block");
			System.out.println(e);
		}
		finally
		{
			try
			{
				con.close();
				System.out.println("in final block conn closed");
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return i;
	}

	public List<User> getAllData() {
		List<User> lst = new LinkedList<User>();
		con = myConnection();
		try {
			Statement s = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = s.executeQuery("select * from users");
			while(rs.next()) {
				User dobj = new User();
				dobj.setCid(rs.getLong(1));
				dobj.setInputName(rs.getString(2));
				dobj.setInputGender(rs.getString(3));
				//				dobj.setInputMobile(rs.getLong(9));
				dobj.setInputPan(rs.getString(4));
				//				dobj.setInputAadhar(rs.getLong(5));
				dobj.setInputEmail(rs.getString(5));
				dobj.setInputPassword(rs.getString(6));
				dobj.setInputCity(rs.getString(7));
				lst.add(dobj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public boolean validateUser(Login l) {
		myConnection();
		System.out.println("Inside Validate");
		List<User> lst = getAllData();
		boolean b = false;
		for(User r: lst) {
			System.out.println("inside loop.. checking for "+r.getInputEmail()+"\twith\t"+l.getInputEmail());
			if(r.getInputEmail().equalsIgnoreCase(l.getInputEmail())) {
				System.out.println("email validated");
				if(r.getInputPassword().equalsIgnoreCase(l.getInputPassword())) {
					System.out.println("password validated");
					b = true;
					break;
				}
			}
		}
		System.out.println(b);
		return b;
	}

	//	public void pay_amount (int pay) {
	//		myConnection();
	//		Statement s;
	//		try {
	//		
	//			
	//		} catch (SQLException e) {
	//			// TODO Auto-generated catch block
	//			e.printStackTrace();
	//		}
	//		
	//	}
	public List<EmiDetail> getEmiData (long id) {
		List<EmiDetail> lst = new ArrayList<EmiDetail>();
		myConnection();
		try {
			ps = con.prepareStatement("select * from emi where cid ="+id);
			rs = ps.executeQuery();
			while(rs.next()) {
				EmiDetail e = new EmiDetail();
				e.setLoan_ID(rs.getLong(1));
				e.setCID(rs.getLong(2));
				e.setTotal_installments(rs.getInt(3));
				e.setPrincipal(rs.getLong(4));
				e.setInterest(rs.getLong(5));
				e.setPayback(rs.getLong(6));
				e.setEmi(rs.getInt(7));
				lst.add(e);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public int updatePayment(long id) {
		myConnection();
		int j = 0;
		int s = 0;
		i = 0;
		System.out.println("Entered update payment with id "+id);
		List<EmiDetail> lst = new ArrayList<EmiDetail>();
		lst = getEmiData(id);
		for(EmiDetail e: lst) {
			try {
				ps = con.prepareStatement("Update emi set total_installments="+(e.getTotal_installments()-1)+" where cid="+id);
				i = ps.executeUpdate();
				System.out.println("total installment updated "+i);
				ps1 = con.prepareStatement("Update emi set payback="+(e.getPayback()-e.getEmi())+" where cid="+id);
				j = ps1.executeUpdate();
			} catch (SQLException es) {
				// TODO Auto-generated catch block
				es.printStackTrace();
			}
		}
		if(i>0 && j>0) {
			lst = getEmiData(id);
			System.out.println("Succesful Update");
			s=1;
		}
		return s;
	}
}