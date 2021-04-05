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

import logic.BLmanager;
import pojo.Expense;
import pojo.Income;

/**
 * Servlet implementation class ExpenseServ
 */
@WebServlet("/ExpenseServ")
public class ExpenseServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExpenseServ() {
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
		  Expense exp = new Expense();
		  exp.setAmount(bd);
		  exp.setDescription(descrip);
		  exp.setDay(day);
		  exp.setMonth(month);
		  exp.setYear(year);
		  exp.setHour(hour);
		  exp.setMinute(minut);
		  exp.setSecond(sec);
		  exp.setAmPm(ampm);
		  
		  b.Expenseinsert(exp);
		  
		  response.sendRedirect("Expense.jsp");
	}

}
