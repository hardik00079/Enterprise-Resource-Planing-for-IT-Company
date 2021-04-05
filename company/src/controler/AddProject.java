package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Registration;
import pojo.Studproject;

import logic.BLmanager;

/**
 * Servlet implementation class AddProject
 */
@WebServlet("/AddProject")
public class AddProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProject() {
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
		    
		String title = request.getParameter("protitle");
		String dis = request.getParameter("discription");
		String lang = request.getParameter("language");
		
		BLmanager b = new BLmanager();
		Registration reg = new Registration();
		
		HttpSession s = request.getSession();
		String mail =(String)s.getAttribute("email");
			reg= b.getUserByUserId(mail);
			
			
			Studproject stud = new Studproject();
			stud.setProtitle(title);
			stud.setDescription(dis);
			stud.setLanguage(lang);
			stud.setRegistration(reg);
			b.projectinsert(stud);
			
			s.setAttribute("mail",mail);
			int id = reg.getRegId();
			List<Studproject> ls= b.Searchproject(id);
			s.setAttribute("lst", ls);
              
			response.sendRedirect("UserProject.jsp");
			 
	}

}
