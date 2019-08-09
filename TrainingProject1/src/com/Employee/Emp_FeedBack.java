package com.Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FeedBack
 */
@WebServlet("/FeedBack")
public class Emp_FeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String empname=request.getParameter("name");
		String empfeedback=request.getParameter("feedback");
		PrintWriter out=response.getWriter();

		try{
			response.setContentType("text/html");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kavi","k123");
			PreparedStatement pt=con.prepareStatement("insert into EFeedBack(name,comments)values(?,?)");
			
			pt.setString(1,empname);
			pt.setString(2,empfeedback);
			
			int i1=pt.executeUpdate();
			if(i1>0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Posted Sucessfully');");
				out.println("location='Emp_Home.jsp';");
				out.println("</script>");
			}
			else
			{	
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Failed to post!');");
				out.println("location='Emp_error.jsp';");
				out.println("</script>");
			}
		
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
		
		
	}


