package login.adi.registration;
import java.sql.*;
import java.sql.DriverManager;

public class MyConnectionProvider implements Myprovider {
	static Connection con=null;
	public static Connection getCon(){
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe\",\"system\",\"oracle\"");
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
	return con;
	}

}