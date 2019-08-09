package com.org;

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
 * Servlet implementation class Addtrain
 */
@WebServlet("/Addtrain")
public class Projectmanager_postTraining extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Projectmanager_postTraining() {
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
		String cid=request.getParameter("cid");
        String cname=request.getParameter("cname");
        String descrip=request.getParameter("descrip");
        //String tname=request.getParameter("tname");
        String venue=request.getParameter("venue");
        
		try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mamathamh","mamatha");
	    PreparedStatement ps=con.prepareStatement("insert into addtrainm values(?,?,?,?)");
	    ps.setString(1, cid);
	    ps.setString(2, cname);
	    ps.setString(3,descrip);
	   // ps.setString(, tname);
	    ps.setString(4, venue);
	    int i=ps.executeUpdate();
	    if(i>0)
	    {
	    	out.println("Successfully Added");
	    	response.sendRedirect("Projectmanager_posttraining.jsp");
	    	
	    }
		
	    else
	    {
		out.println("failed to add");
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
