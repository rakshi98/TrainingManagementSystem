package com.org;
//import javax.servlet.RequestDispatcher;

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
//import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class Rcheck
 */
@WebServlet("/Rcheck")
public class Projectmanager_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Projectmanager_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("empid");
		String pass=request.getParameter("pswd");
		
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mamathamh","mamatha");
	    PreparedStatement ps=con.prepareStatement("select * from register");
	   // PreparedStatement pst=con.prepareStatement("insert into login(name,password)values(?,?)");
	    ResultSet rs=ps.executeQuery();
	   
		PrintWriter out=response.getWriter();
		
			while(rs.next())
			{
				if(rs.getString(1).equals(name)&& rs.getString(4).equals(pass))
				{
					/* pst.setString(1,name);
					 pst.setString(2,pass);
					 int i=pst.executeUpdate();
					 if(i>0) 
					 {*/
						 //out.println("login successful");
					if(rs.getInt(6)==2)
					{
						out.println("LOGIN Successfull:"+rs.getString(2));
					}
					else if(rs.getInt(6)==3)
					{
	
	                   //out.println("Login Successfull"+rs.getString(2));
	                   out.println("<!DOCTYPE html>\r\n" + 
	                   		"<html lang=\"en\">\r\n" + 
	                   		"<head>\r\n" + 
	                   		"  <title>Bootstrap Example</title>\r\n" + 
	                   		"  <meta charset=\"utf-8\">\r\n" + 
	                   		"  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n" + 
	                   		"  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\r\n" + 
	                   		"  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n" + 
	                   		"  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\r\n" + 
	                   		"  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\r\n" + 
	                   		"  <style>\r\n" + 
	                   		"  #a1\r\n" + 
	                   		"  {\r\n" + 
	                   		"  \r\n" + 
	                   		"  }\r\n" + 
	                   		"  </style>\r\n" + 
	                   		"  \r\n" + 
	                   		"</head>\r\n" + 
	                   		"<body>\r\n" + 
	                   		"<nav class=\"navbar navbar-expand-sm bg-dark navbar-dark\">\r\n" + 
	                   		"  <!-- Brand -->\r\n" + 
	                   		"  <a class=\"navbar-brand\" href=\"Projectmanager_profile.jsp\">My Account</a>\r\n" + 
	                   		"\r\n" + 
	                   		"  <!-- Links -->\r\n" + 
	                   		"  <ul class=\"navbar-nav\">\r\n" + 
	                   		"    <li class=\"nav-item\">\r\n" + 
	                   		"      <a class=\"nav-link\" href=\"Projectmanager_chpass.jsp\">Change Password</a>\r\n" + 
	                   		"    </li>\r\n" + 
	                   		"    <li class=\"nav-item\">\r\n" + 
	                   		"      <a class=\"nav-link\" href=\"Projectmanager_posttraining.jsp\">Post Training</a>\r\n" + 
	                   		"    </li>\r\n" + 
	                   		"    \r\n" + 
	                   		"    <li class=\"nav-item\">\r\n" + 
	                   		"      <a class=\"nav-link\" href=\"Projectmanager_ viewnominees.jsp\">View Nominations</a>\r\n" + 
	                   		"    </li>\r\n" + 
	                   		"    <li class=\"nav-item\">\r\n" + 
	                   		"      <a class=\"nav-link\" href=\"Projectmanager_history.jsp\">History</a>\r\n" + 
	                   		"    </li>\r\n" + 
	                   		"\r\n" + 
	                   		"   <button align=\"right\"type=\"button\"class=\"btn btn-danger\">Logout</button>\r\n" + 
	                   		"   \r\n" + 
	                   		"</ul>\r\n" + 
	                   		"</nav>\r\n" + 
	                   		"<br>\r\n" +
	                   		"</body>"+
	                   		"<form method=\"post\" action=\"Projectmanager_profile\"></form>\r\n" + 
	                   		
	                   		"\r\n<table>");
					
                     ////response.sendRedirect("Profile.jsp");
	                  
	                   
	                   out.println("<tr>\r\n" + 
	   		    			"<th>Employee ID:</th>" +
	   		    			"<td>"+rs.getString(1)+"</td></tr>\r\n" +
	   		    			"<tr><th>Employee Name:</th>"+
	   		    			"<td>"+rs.getString(2)+"</td></tr>\r\n" + 
	   		    			"<tr><th>Email:</th>"+
	   		    			"<td>"+rs.getString(3)+"</td></tr>\r\n" + 
	   		    			
	   		    			"<tr><th>Phone Number:</th>"+
	   		    			"<td>"+rs.getString(7)+"</td></tr>\r\n" +
	   		    			"<tr><th>Designation:</th>"+
	   		    			"<td>"+rs.getString(8)+"</td></tr>\r\n" +
	   		    			"\r\n" + 
	   		    			"\r\n"
	   		    			);
					
	   		    out.println("</table>\r\n" + 
	   		    		"\r\n" + 
	   		    		"\r\n" + 
	   		    		"</form>\r\n" + 
	   		    		
	   		    		"</html>");
                     
                     }
						// response.sendRedirect("Profile.jsp");
					
					 else {
						 out.println("invalid");
					 }
				}
				
				else
				{
					out.println("");
				}
			}
			
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
}


