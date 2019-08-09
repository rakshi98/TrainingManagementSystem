package com.org;

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

/**
 * Servlet implementation class Hist1
 */
@WebServlet("/Hist1")
public class Projectmanager_history extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Projectmanager_history() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out=response.getWriter();
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mamathamh","mamatha");
	    PreparedStatement ps=con.prepareStatement("select * from addtrainm");
	    PreparedStatement pst=con.prepareStatement("select * from register");
	    ResultSet rs=ps.executeQuery();
	    ResultSet rst=pst.executeQuery();
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
	    		"</head>\r\n" + 
	    		"\r\n" + 
	    		"<body>\r\n" + 
	    		"<nav class=\"navbar navbar-expand-sm bg-dark navbar-dark\">\r\n" + 
	    		"  <!-- Brand -->\r\n" + 
	    		"  <a class=\"navbar-brand\" href=\"Projectmanager_profile.jsp\">My Account</a>\r\n" + 
	    		"\r\n" + 
	    		"  <!-- Links -->\r\n" + 
	    		"  <ul class=\"navbar-nav\">\r\n" + 
	    		" <li class='nav-item'>"+
	    	     " <a class='nav-link' href='Projectmanager_chpass.jsp'>Change Password</a>"+
	    	   " </li>"+
	    		"  <li class=\"nav-item\">\r\n" + 
	    		"      <a class=\"nav-link\" href=\"Projectmanager_posttraining.jsp\">Post Training</a>\r\n" + 
	    		"    </li>\r\n" + 
	    		"    <li class=\"nav-item\">\r\n" + 
	    		"      <a class=\"nav-link\" href=\"Projectmanager_viewnominees.jsp\">View Nominations</a>\r\n" + 
	    		"    </li>\r\n" + 
	    		"<li class='nav-item'>"+
                " <a class='nav-link' href='Projectmanager_history.jsp'>History</a>"+
                "</li>"+ 
	    		"    \r\n" + 
	    		"<div id=\"a1\">\r\n" + 
	    		"   <button type=\"button\" class=\"btn btn-danger\" >Logout</button>\r\n" + 
	    		"</div>\r\n" + 
	    		"</nav>\r\n" + 
	    		"<br>\r\n" + 
	    		"\"</body>"+
	    		"<form method=\"post\" action=\"Projectmanager_history\">\r\n" + 
	    		
	    		"\r\n" ) ;
	    		
	    		
	    while(rst.next())
	    {
	    out.println("<table><tr><th>Course ID:</th><td>"+rs.getString(1)+"</td></tr>"+
	                       "<tr><th>Course Nmae:</th><td>"+rs.getString(2)+"</td></tr>"+
	    		           "<tr><th>Description:</th><td>"+rs.getString(3)+"</td></tr>"+
	                        "<hr>");
	    }
	    out.println(" </table></html>");
		}
		catch(Exception e)
		{
			System.out.println(e);
		
	    }
		
		
		
	}

}
