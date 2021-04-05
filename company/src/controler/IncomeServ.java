package controler;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Income;

import logic.BLmanager;

/**
 * Servlet implementation class IncomeServ
 */
@WebServlet("/IncomeServ")
public class IncomeServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IncomeServ() {
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
		String typ = request.getParameter("drptype");
		String descrip = request.getParameter("description");
		String amount = request.getParameter("amount");
		BigDecimal bd = new BigDecimal(amount);
				
		 Date date = new Date();
		  LocalDateTime localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
		  int year  = localDate.getYear();
		  int month = localDate.getMonthValue();
		  int day   = localDate.getDayOfMonth();
		  int hour = localDate.getHour();
		  int minut = localDate.getMinute();
		  int sec = localDate.getSecond();
		  String ampm= null;
		  if(hour>=1 && hour<=12)
		  {
			  ampm="am";
		  }
		  else
		  {
			  ampm="pm";
		  }
		  
		  BLmanager b = new BLmanager();
		  Income in = new Income();
		  in.setType(typ);
		  in.setDescription(descrip);
		  in.setAmount(bd);
		  in.setDay(day);
		  in.setMonth(month);
		  in.setYear(year);
		  in.setHour(hour);
		  in.setMinute(minut);
		  in.setSecond(sec);
		  in.setAmPm(ampm);
		  b.Incomeinsert(in);
		  
		  response.sendRedirect("Income.jsp");
		  
		  
		  
	}

}
