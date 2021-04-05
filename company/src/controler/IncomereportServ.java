package controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logic.BLmanager;

import pojo.Income;

/**
 * Servlet implementation class IncomereportServ
 */
@WebServlet("/IncomereportServ")
public class IncomereportServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IncomereportServ() {
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
		
		System.out.print(month);
		
		try
		{
		List<Income> inc = b.IncomeReport(mon);

		List<Income> total = b.Incometotal(mon);
		
		String mnth = null;
		
		if(mon == 1)
		{
			 mnth = "January";
			
		}
		else if(mon == 2)
		{
			 mnth = "February";
			
		}
		else if(mon == 3)
		{
			 mnth = "March";
			
		}
		else if(mon == 4)
		{
			 mnth = "April";
			
		}
		else if(mon == 5)
		{
			 mnth = "May";
			
		}
		else if(mon == 6)
		{
			 mnth = "June";
			
		}
		else if(mon == 7)
		{
			 mnth = "July";
			
		}
		else if(mon == 8)
		{
			 mnth = "Augest";
			
		}
		else if(mon == 9)
		{
			 mnth = "September";
			
		}
		else if(mon == 10)
		{
			 mnth = "October";
			
		}
		else if(mon == 11)
		{
			 mnth = "November";
			
		}
		else if(mon == 12)
		{
			 mnth = "December";
		
		}
		
		System.out.print("Selected month"+mnth);
		se.setAttribute("inc",inc);
		 se.setAttribute("total",total);
		 se.setAttribute("month",mnth);
	
		response.sendRedirect("IncomeReport.jsp");
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
	}

}
