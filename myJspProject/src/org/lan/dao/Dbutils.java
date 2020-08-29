package org.lan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Dbutils
{
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/test?&serverTimezone=GMT";
	private static final String USER = "root";
	private static final String PWD ="root";
	
	public static int update(String user, String pwd) throws Exception
	{	
		int flag = 0;
		Connection connection = null;
		Statement statement = null;
		try
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USER, PWD);
			Statement stmt = connection.createStatement();
			String sql = "SELECT * FROM userlist WHERE user = "+'\"'+user+'\"'+ " and pwd = "+'\"'+pwd+'\"';
			
			ResultSet rs  = stmt.executeQuery(sql);
			if(rs.next())
			{
				System.out.println("登录成功！,数据库中有此人");
				flag = 1;
				
			}
			else
			{
				System.out.println("登示失败！查无此人");
			}
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		
		return flag;
	}
	
	

}
