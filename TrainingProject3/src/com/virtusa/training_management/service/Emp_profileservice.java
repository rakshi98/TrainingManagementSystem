package com.virtusa.training_management.service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.virtusa.training_management.DAO.Emp_profileDAO;
import com.virtusa.training_management.helpers.DBconnection;
import com.virtusa.training_management.models.Emp_profile;

public class Emp_profileservice implements Emp_profileDAO 
{
	public String editprofile(Emp_profile empprofile)
	{
		String eid=empprofile.getEmpid();
		String ename=empprofile.getEmpusername();
		String eemailid=empprofile.getEmpemail();
		int ephone=empprofile.getEmpphone();
		String edesignation=empprofile.getEmpdesignation();
		
		Connection con = null;
		try
		{
			con = DBconnection.createConnection();
			PreparedStatement pt=con.prepareStatement("insert into Empprofile(Eid,Empusername,Empemailid,Empphone,Empdesignation)values(?,?,?,?,?)");
			pt.setString(1,eid);
			pt.setString(2,ename);
			pt.setString(3,eemailid);
			pt.setInt(4,ephone);
			pt.setString(5,edesignation);
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
		
		return null;
		
	}
}
