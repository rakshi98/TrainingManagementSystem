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
 * Servlet implementation class Cpass
 */
@WebServlet("/Cpass")
public class Projectmanager_chpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Projectmanager_chpass() {
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
		String empid=request.getParameter("empid");
		String opass=request.getParameter("opass");
		String npass=request.getParameter("npass");
		String cpass=request.getParameter("cpass");
		PrintWriter out=response.getWriter();

		try{
			response.setContentType("text/html");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","mamathamh","mamatha");
			 PreparedStatement ptr1=con.prepareStatement("select empid,pswd,rpswd from register");
			 ResultSet rs=ptr1.executeQuery();
			 
			 if(rs.getString(1).contentEquals(opass) && rs.getString(2).contentEquals(opass))
			 {
				if(npass==cpass)
				{
					PreparedStatement pts=con.prepareStatement("update register set pswd=? and rpswd=? where empid=?");// where empid=(select name from login l where l.password=rs.getString(1) ");
					PreparedStatement pt=con.prepareStatement("insert into changepassword(empid,opass,npass,cpass)values(?,?,?,?)");
					pt.setString(1, empid);
					pt.setString(2,opass);
					pt.setString(3,npass);
					pt.setString(4,cpass);
					pts.setString(2, npass);
					pts.setString(3, npass);
					int j=pts.executeUpdate();
					int i=pt.executeUpdate();
					if(i>0 && j>0)
					{
						 request.setAttribute("message", "sucessfully chaanged the password");
						//out.println("successfully changed the password");
						request.getRequestDispatcher("Projectmanager_chpass.jsp").forward(request, response);
					}
					else
					{
						out.println("failed to change");
					}
					
				}
				else
				{
					System.out.println("new password and confirm password didnot match");
				}
			 }
			
			 else
			 {
				 out.println("old password didnot match with existing password");
			 }
		
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

	

}
