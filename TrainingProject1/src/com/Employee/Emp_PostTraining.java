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
 * Servlet implementation class PostTraining
 */
@WebServlet("/PostTraining")
public class Emp_PostTraining extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fullname");
		String email=request.getParameter("emailaddress");
		String eid=request.getParameter("empid");
		String phone=request.getParameter("phonenumber");
		String courname=request.getParameter("cname");
		PrintWriter out=response.getWriter();

		try{
			response.setContentType("text/html");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","kavi","k123");
			PreparedStatement pt=con.prepareStatement("insert into epost(Empid,Empname,Email,Phone,Training_Title)values(?,?,?,?,?)");
			
			pt.setString(1,eid);
			pt.setString(2,fname);
			pt.setString(3,email);
			pt.setString(4,phone);
			pt.setString(5,courname);
			int i1=pt.executeUpdate();
			if(i1>0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Posted Sucessfully');");
				out.println("location='Emp_Home.jsp';");
				out.println("</script>");
			}
			else{
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
