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

import pojo.Blog;

import logic.BLmanager;

/**
 * Servlet implementation class AddBlogServ
 */
@WebServlet("/AddBlogServ")
public class AddBlogServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBlogServ() {
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
	    
			String title = request.getParameter("newstitle");
			String dis = request.getParameter("description");
			
			Date date = new Date();
			  LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
			  int year  = localDate.getYear();
			  int month = localDate.getMonthValue();
			  int day   = localDate.getDayOfMonth();
			  
			  BLmanager b = new BLmanager();
			  try{
				  Blog bl = new Blog();
				  bl.setNews(title);
				  bl.setDescription(dis);
				  bl.setDay(day);
				  bl.setMonth(month);
				  bl.setYear(year);
				  b.insertBlog(bl);
				  response.sendRedirect("HRIndex.jsp");
				  
			  }
			  catch(Exception e)
			  {
				  e.printStackTrace();
			  }
		
	}

}
