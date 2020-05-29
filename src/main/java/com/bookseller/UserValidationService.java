package com.bookseller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.io.IOException;

public class UserValidationService {
	
	Properties   properties = new Properties();
	final String propFileName = "config.properties";
	static Connection connection;
	static Statement statement;		
	static ResultSet resultSet;
	
	
	public boolean isUserValid(String username, String password) throws IOException {
		InputStream is = getClass().getClassLoader().getResourceAsStream(propFileName);;
		if(is!=null) {
			properties.load(is);
		}
		
		final String url = properties.getProperty("url");
		final String user = properties.getProperty("username");
		final String pass = properties.getProperty("password");
		
		try{
			
			connection = DriverManager.getConnection(url, user, pass);
			if(connection!=null) 
				System.out.println("Connected to PostgreSQL!");
			else
				System.out.println("connection failure!");
			statement = connection.createStatement();
			resultSet = statement.executeQuery("SELECT * FROM public.user");
			while(resultSet.next()) {
				if(resultSet.getString("username").equals(username)) {
					System.out.println(resultSet.getString("password"));
					System.out.println(password);
					if(resultSet.getString("password").equals(password)) 
						
						return true;
				}
				else {					
					return false;
				}
			}
		}
		
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
	        try {
	            if (connection != null) {
	                connection.close();
	            }
	            if (statement != null) {
	                statement.close();
	            }
	        } catch (SQLException sqlee) {
	            sqlee.printStackTrace();
	        }
	    }
		return false;	
	}
}
