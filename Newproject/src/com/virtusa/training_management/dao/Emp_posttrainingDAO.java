package com.virtusa.training_management.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.virtusa.training_management.helpers.DBconnection;
import com.virtusa.training_management.models.Emp_posttraining;

public class Emp_posttrainingDAO 
{
	public String post(Emp_posttraining posttraining)
	{
		String empid=posttraining.getEmpeid();
		String empname=posttraining.getEmpfullname();
		String empemail=posttraining.getEmpemail();
		int empphone=posttraining.getEmpphonenumber();
		String trainingtitle=posttraining.getTrainingname();
		
		
		Connection con = null;
		try
		{
			con = DBconnection.createConnection();
			PreparedStatement pt=con.prepareStatement("insert into EmpPost(Empid,Empname,Email,Phone,Training_Title)values(?,?,?,?,?)");
			pt.setString(1,empid);
			pt.setString(2,empname);
			pt.setString(3,empemail);
			pt.setInt(4,empphone);
			pt.setString(5,trainingtitle);
			int i1=pt.executeUpdate();
			if(i1>0)
			{
				return "success";
			}
			else
			{
				return "unsuccess";
			}
		}
		catch(Exception e)
		{
			e.getStackTrace();
		}
	
	return "invalid";
	}
}
