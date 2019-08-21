package com.virtusa.training_management.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.virtusa.training_management.helpers.DBconnection;
import com.virtusa.training_management.models.Admin_Scheduletraining;

/**
 * Servlet implementation class Demo
 */
@WebServlet("/results")
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Demo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Connection conn = null;
		    Statement stmt = null;
		    ResultSet res = null;   
		     
		    try
		    {
		  
		        conn = DBconnection.createConnection();
		        stmt = conn.createStatement();
		         
		        res = stmt.executeQuery("select * from scheduletraining"); 
		         
		        List<Admin_Scheduletraining> ee = new ArrayList<Admin_Scheduletraining>();
		                     
		        while(res.next()){   
		             
		                Admin_Scheduletraining e = new Admin_Scheduletraining();                
		                e.setTrainingid(res.getString(1));
		                e.setTrainingtitle(res.getString(2));
		                e.setDomain(res.getString(3));
		                e.setStartdate(res.getDate(4));
		                e.setStartdate(res.getDate(5));
		                e.setVenue(res.getString(6));
		                ee.add(e);
		                                     
		            }                   
		                               
		        request.setAttribute("results", ee);   
		        RequestDispatcher rd = request.getRequestDispatcher("/NewFile.jsp");   
		        rd.forward(request, response);
		      
		        conn.close();
		                          
		    }          
		 
		    catch (SQLException se)
		    {
		        se.printStackTrace();
		     
		    }
		    catch (Exception e)
		    {
		        throw new ServletException(e.toString());
		    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
