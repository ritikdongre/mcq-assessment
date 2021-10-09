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
//			String url = "jdbc:mysql://localhost:3307/mcq_app";
//			String username = "admin";
//			String pwd = "Admin$123";
			
			
			String url = "jdbc:mysql://34.93.84.125/mcq_app?useSSL=false";
			String username = "ritikdongre";
			String pwd = "12345";
		    con = DriverManager.getConnection(url, username, pwd);

			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
		
		
	}
}
