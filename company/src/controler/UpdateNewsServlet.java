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

import logic.BLmanager;
import pojo.Blog;


/**
 * Servlet implementation class UpdateNewsServlet
 */
@WebServlet("/UpdateNewsServlet")
public class UpdateNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		String id = request.getParameter("id");
		BLmanager bl = new BLmanager();
		
		Blog b =bl.Searchnews(Integer.parseInt(id));
		String ans =b.getNews();

		HttpSession se = request.getSession();
		se.setAttribute("n",b);
		response.sendRedirect("HRUpdateBlogs.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String id = request.getParameter("id");
		String title = request.getParameter("newstitle");
		String dis = request.getParameter("description");
		System.out.println(id+" "+title+ " "+dis);
		Date date = new Date();
		  LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		  int year  = localDate.getYear();
		  int month = localDate.getMonthValue();
		  int day   = localDate.getDayOfMonth();
		
		
		BLmanager b2 = new BLmanager();
		try{
			
			  Blog bg = new Blog();
			  bg.setId(Integer.parseInt(id));
			  bg.setNews(title);
			  bg.setDescription(dis);
			  bg.setDay(day);
			  bg.setMonth(month);
			  bg.setYear(year);
			  b2.updateBlog(bg);
			  
			  response.sendRedirect("HREditBlogs.jsp");
			  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		
		
	}

}
