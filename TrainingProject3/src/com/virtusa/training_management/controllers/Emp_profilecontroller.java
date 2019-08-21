package com.virtusa.training_management.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.virtusa.training_management.DAO.Emp_profileDAO;
import com.virtusa.training_management.models.Emp_profile;
import com.virtusa.training_management.service.Emp_profileservice;

/**
 * Servlet implementation class Emp_profilecontroller
 */
@WebServlet("/editprofile")
public class Emp_profilecontroller extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String empid=request.getParameter("e-id");
		String empusername=request.getParameter("u-name");
		String empemailid=request.getParameter("emailid");
		int empphone=Integer.parseInt(request.getParameter("phone"));
		String empdesignation=request.getParameter("desc");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		 HttpSession session=request.getSession();  
	     session.setAttribute("empid",empid); 
	     session.setAttribute("empusername",empusername);
	     session.setAttribute("empemailid",empemailid);
	     session.setAttribute("empphone",empphone);
	     session.setAttribute("empdesignation",empdesignation);
	  
		Emp_profile empprofile=new Emp_profile();
		empprofile.setEmpid(empid);
		empprofile.setEmpusername(empusername);
		empprofile.setEmpemail(empemailid);
		empprofile.setEmpphone(empphone);
		empprofile.setEmpdesignation(empdesignation);
		
		Emp_profileDAO empprofileDao = new Emp_profileservice();
		
		String result = empprofileDao.editprofile(empprofile);
		
		if(result.equals("success")) 
		 {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Profile Updated sucessfully');");
			out.println("location='Emp_Home.jsp';");
			out.println("</script>");
	/*
	 * request.getRequestDispatcher("/Emp_Home.jsp");//RequestDispatcher is used to
	 * send the control to the invoked page.
	 */		}
		 else
		 {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Unsucessfull');");
			out.println("location='Emp_error.jsp';");
			out.println("</script>");
		 }		

	}

}
