package com.virtusa.training_management.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import com.virtusa.training_management.DAO.Admin_ScheduletrainingDAO;
import com.virtusa.training_management.helpers.DBconnection;
import com.virtusa.training_management.models.Admin_Scheduletraining;

public class Admin_Scheduletrainingservice implements Admin_ScheduletrainingDAO {
	
	public String trainingschedule(Admin_Scheduletraining mobj )
	{
		
		String trainingid=mobj.getTrainingid();
		String trainingtitle=mobj.getTrainingtitle();
		String domain=mobj.getDomain();
		Date  startdate=mobj.getStartdate();
		Date  enddate=mobj.getEnddate();
		String venue=mobj.getVenue();
		Connection con = null;
		try
		{
			con =DBconnection.createConnection();
			PreparedStatement pt=con.prepareStatement("insert into postadmin(trainingid,trainingtitle,domain,startdate,enddate,description)values(?,?,?,?)");
			
			
			 pt.setString(1,trainingid);
			 pt.setString(2,trainingtitle);
			 pt.setString(3,domain);
			 pt.setDate(4,startdate);
			 pt.setDate(5,enddate);
			 pt.setString(6,venue);
			
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
