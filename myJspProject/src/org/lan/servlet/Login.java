package org.lan.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.lan.dao.Dbutils;

import java.io.IOException;


public class Login extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	{
		
		String user = request.getParameter("uname");
		String pwd = request.getParameter("upswd");
		Dbutils db = new Dbutils();
		try
		{
			int flag  = db.update(user, pwd); 
			if (flag==1)
			{
				request.getRequestDispatcher("welcome.jsp").forward(request,response);
			}
			else
			{
				request.getRequestDispatcher("show.jsp").forward(request,response);
			}

		
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	{
		
	}
}
