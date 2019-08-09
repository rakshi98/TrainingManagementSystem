
package com.admin;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Datastore
 */
/*@WebServlet("/Datastore")
 */public class Scheduletraining extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	 /**
	  * @see HttpServlet#HttpServlet()
	  */
	 /*
	  * public Login() { super(); // TODO Auto-generated constructor stub }
	  * 
	  */	/**
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
		 String title1=request.getParameter("trainingtitle");
		 String trainigId1=request.getParameter("trainingid");
		 String domain1=request.getParameter("domain");

		 String description1=request.getParameter("description");


		 PrintWriter out=response.getWriter();


		 try{
			 response.setContentType("text/html");
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rakshi","rakshi98");
			 PreparedStatement pt=con.prepareStatement("insert into scheduletraining(trainingtitle,trainingid,domain,startdate,enddate,description)values(?,?,?,?)");

			 java.util.Date startdate1=new SimpleDateFormat("mm/ddyyyy").parse(request.getParameter("startdate"));
			 java.util.Date enddate1=new SimpleDateFormat("mm/dd/yyyy").parse(request.getParameter("enddate"));
			 java.sql.Date startSQLdate1=new java.sql.Date(startdate1.getTime());
			 java.sql.Date endSQLdate1=new java.sql.Date(enddate1.getTime());





			 /*String startdate=request.getParameter("startdate");

	         SimpleDateFormat simpleDateFormat=new SimpleDateFormat("MM/dd/yyyy"); // Existing Pattern

	         Date currentdate=(Date) simpleDateFormat.parse(startdate); // Returns Date Format,

	         SimpleDateFormat simpleDateFormat1=new SimpleDateFormat("dd-mm-yyyy"); // New Pattern

	         System.out.println(simpleDateFormat1.format(currentdate)); // Format given String to new pattern	         
			  */


			 pt.setString(1,title1);
			 pt.setString(2,trainigId1);
			 pt.setString(3,domain1);
			 pt.setDate(4,startSQLdate1);
			 pt.setDate(5,endSQLdate1);
			 pt.setString(6,description1);


			 int i1=pt.executeUpdate();
			 if(i1>0)
			 {
				 out.println("<script>");
				 out.println("alert('added sucessfully');");
				 out.println("location='scheduletraining.jsp';");
				 out.println("</script>");

			 }
			 else{
				 out.println("<script>");
				 out.println("alert('failed to add training');");
				 out.println("location='scheduletraining.jsp';");
				 out.println("</script>");
			 }
		 }
		 catch(Exception e)
		 {
			 out.println(e);
		 }
	 }

 }

