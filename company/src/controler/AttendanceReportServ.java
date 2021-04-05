package controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Attendancemaster;

import logic.BLmanager;

/**
 * Servlet implementation class AttendanceReportServ
 */
@WebServlet("/AttendanceReportServ")
public class AttendanceReportServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttendanceReportServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String month = request.getParameter("drpmonth");
		BLmanager b = new BLmanager();
		int mon = Integer.parseInt(month);
		HttpSession se = request.getSession();
		String email =(String)se.getAttribute("email");
		System.out.print(email);
		System.out.print(month);
		
		try
		{
		List<Attendancemaster> dv = b.AttendReport(email,mon);
		
		int presnt =dv.size();
		System.out.print("Presnt days"+presnt);
		int absnt = 0 ;
		int totaldays = 0;
		String mnth = null;
		
		if(mon == 1)
		{
			 mnth = "January";
			totaldays =26;
			absnt = totaldays-presnt;
		}
		else if(mon == 2)
		{
			 mnth = "February";
			totaldays =24;
			absnt = totaldays-presnt;
		}
		else if(mon == 3)
		{
			 mnth = "March";
			totaldays =27;
			absnt = totaldays-presnt;
		}
		else if(mon == 4)
		{
			 mnth = "April";
			totaldays =26;
			absnt = totaldays-presnt;
		}
		else if(mon == 5)
		{
			 mnth = "May";
			totaldays =27;
			absnt = totaldays-presnt;
		}
		else if(mon == 6)
		{
			 mnth = "June";
			totaldays =26;
			absnt = totaldays-presnt;
		}
		else if(mon == 7)
		{
			 mnth = "July";
			totaldays =27;
			absnt = totaldays-presnt;
		}
		else if(mon == 8)
		{
			 mnth = "Augest";
			totaldays =26;
			absnt = totaldays-presnt;
		}
		else if(mon == 9)
		{
			 mnth = "September";
			totaldays =27;
			absnt = totaldays-presnt;
		}
		else if(mon == 10)
		{
			 mnth = "October";
			totaldays =26;
			absnt = totaldays-presnt;
		}
		else if(mon == 11)
		{
			 mnth = "November";
			totaldays =27;
			absnt = totaldays-presnt;
		}
		else if(mon == 12)
		{
			 mnth = "December";
			totaldays =26;
			absnt = totaldays-presnt;
		}
		
		float sal = presnt*230;
		float totalsal = 0;
		if(sal<=10000)
		{
			if(sal!=0)
			{
			totalsal = sal -80;
			}
		}
		else if (sal>10000 && sal<=15000)
		{
			totalsal=sal-300;
		}
		else if (sal>15000 && sal<=30000)
		{
			totalsal=sal-1000;
		}
		
		System.out.print("Selected month"+mnth);
		 System.out.print("absnt days"+absnt);
		 System.out.print("Toal days"+totaldays);
		 
		 se.setAttribute("month",mnth);
		 se.setAttribute("totaldays", totaldays);
		 se.setAttribute("presnt",presnt);
		 se.setAttribute("absnt",absnt);
		 se.setAttribute("totalsal",totalsal);
		
			response.sendRedirect("AttendSalaryReport.jsp");
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
	
	}

}
