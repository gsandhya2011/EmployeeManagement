package com.organisation.p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBTest {
public static void main(String[] args) throws ClassNotFoundException, SQLException  {
	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectgroup5?useSSL=false","root","root");
	if(con!=null)
		System.out.println("Connection success");
}
}
