package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	public static Connection con;
	public static Connection getConnection()
	{
	
		try {

			if(con==null) {
			//driver class load
			Class.forName("com.mysql.jdbc.Driver");
			
			//create a connection
//          url to connect with localhost			
//			String url = "jdbc:mysql://localhost:3306/mcq_app";
//			String username = "root";
//			String pwd = "12345";
			
//          url to connect to remote database server on azure cloud
			String url = "jdbc:mysql://mcq-assessment-server.mysql.database.azure.com:3306/mcq_app";
			String username = "rd";
			String pwd = "Ritik@123";
			
			con = DriverManager.getConnection(url, username, pwd);

			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
		
		
	}
}
