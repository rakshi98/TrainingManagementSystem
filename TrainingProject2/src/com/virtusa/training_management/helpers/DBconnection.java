package com.virtusa.training_management.helpers;

import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBconnection 
{
	public static Connection createConnection()
	{
		Connection con = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
		String username = "kavi";
		String password = "k123"; 
 
		try 
		{
			try 
			{
					Class.forName("oracle.jdbc.driver.OracleDriver");  
			} 
			catch (ClassNotFoundException e)
			{
				e.printStackTrace();
			} 
			con = DriverManager.getConnection(url, username, password); 
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con; 
	}
}