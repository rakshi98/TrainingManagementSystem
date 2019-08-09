package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view")



public class Viewscheduledtraining extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {
			response.setContentType("text/html");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rakshi","rakshi98");
			response.getWriter().append("Served at: ").append(request.getContextPath());
			String sql=("select * from scheduletraining");
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			
			PrintWriter out=response.getWriter();
			out.println("<link rel='stylesheet' type='text/css' href='" + request.getContextPath() +  "/styles/style.css' />");

			out.println("<html><body><table><tbody><tr><th>trainingtitle</th><th>trainingid</th>><th>domain</th>><th>startdate</th>><th>enddate</th>><th>description</th></tr>");
			while(rs.next()) {
				out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
			}
			
			out.println("</tbody></table></body></html>");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
