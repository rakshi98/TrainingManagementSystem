package com.virtusa.training_management.service;

import java.sql.Connection;
import java.sql.PreparedStatement;


import com.virtusa.training_management.models.Feedback;
import com.virtusa.training_management.DAO.Admin_FeedbackDAO;
import com.virtusa.training_management.helpers.DBconnection;

public class Admin_Feedbackservice implements Admin_FeedbackDAO
{
	public String getuser(Feedback feedback)
	{
		
		String empname=feedback.getName();
		String empcomments=feedback.getComments();
		
		Connection con = null;
		try
		{
			con = DBconnection.createConnection();
			PreparedStatement pt=con.prepareStatement("insert into FeedBack(name,comments)values(?,?)");
			pt.setString(1,empname);
			pt.setString(2,empcomments);
			
			int i1=pt.executeUpdate();
			if(i1>0)
			{
				return "success";
				/*out.println("<script type=\"text/javascript\">");
				out.println("alert('Posted Sucessfully');");
				out.println("location='Emp_Home.jsp';");
				out.println("</script>");*/
			}
			else {
				return "unsuccessfull";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "invalid";

	}
}
