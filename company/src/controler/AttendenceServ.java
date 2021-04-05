package controler;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Attendancemaster;

import logic.BLmanager;

/**
 * Servlet implementation class AttendenceServ
 */
@WebServlet("/AttendenceServ")
public class AttendenceServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttendenceServ() {
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
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		
		String presnt = request.getParameter("present");
		
		 Date date = new Date();
		  LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		  int year  = localDate.getYear();
		  int month = localDate.getMonthValue();
		  int day   = localDate.getDayOfMonth();
		  
		  BLmanager b = new BLmanager();
		 
		  try{
		  
		  Attendancemaster dv = new Attendancemaster();
		  dv.setFname(fname);
		  dv.setMname(mname);
		  dv.setLname(lname);
		  dv.setEmail(email);
		  dv.setDay(day);
		  dv.setMonth(month);
		  dv.setYear(year);
		  dv.setStatus(presnt);
		  b.attendanceinsert(dv);
		  
		  HttpSession se =request.getSession();
			int rid = (Integer)se.getAttribute("rid");
						if( rid ==1)
						{
							response.sendRedirect("FinanceIndex.jsp");
							
							
						}
						else if(rid==2)
						{ 
							response.sendRedirect("HRIndex.jsp");
							
							
						}
						else if(rid==3)
						{ 
							response.sendRedirect("PMIndex.jsp");
							
							
						}
						else if(rid==4)
						{ 
							response.sendRedirect("UserIndex.jsp");
							
							
						}
						else if(rid==5)
						{
							response.sendRedirect("DevloperIndex.jsp");
							
						
						}
						
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
	}

}
