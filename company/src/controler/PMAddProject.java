package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Clientproject;

import logic.BLmanager;

/**
 * Servlet implementation class PMAddProject
 */
@WebServlet("/PMAddProject")
public class PMAddProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PMAddProject() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String title = request.getParameter("protitle");
		String dis = request.getParameter("discription");
		String lang = request.getParameter("language");
		BLmanager b = new BLmanager();
		
		Clientproject cp = new Clientproject();
		cp.setProtitle(title);
		cp.setDescription(dis);
		cp.setLanguage(lang);
		b.clientprojectinsert(cp);
		
		
		response.sendRedirect("PMProject.jsp");
	}

}
