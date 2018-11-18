package com.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Practice {
String username="root";
String pass="";
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql//localhost:3306/database";
private Connection con;
PreparedStatement psmt;

public void getConnection() throws ClassNotFoundException, SQLException{
	Class.forName(driver);
	con=DriverManager.getConnection(url,username,pass);
}
public void dbClose() throws SQLException{
	con.close();
}

}
