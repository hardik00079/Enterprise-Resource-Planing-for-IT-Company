package controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import pojo.Registration;
import pojo.Studproject;

import logic.BLmanager;

/**
 * Servlet implementation class UpdateProjectServ
 */
@WebServlet("/UpdateProjectServ")
public class UpdateProjectServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProjectServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		BLmanager b = new BLmanager();
		Studproject  s = b.Searchpro(Integer.parseInt(id));
		String ans =s.getProtitle();

		HttpSession se = request.getSession();
		se.setAttribute("pro",s);
		response.sendRedirect("UpdateProject.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id= request.getParameter("proid");
		String title= request.getParameter("protitle");
		String descrip = request.getParameter("description");
		String language = request.getParameter("language");
		
		HttpSession ses = request.getSession();
		Studproject s =(Studproject)ses.getAttribute("pro");
		Registration r =(Registration)s.getRegistration();
		
		BLmanager b = new BLmanager();
		Studproject stud = new Studproject();
		stud.setProid(Integer.parseInt(id));
		stud.setProtitle(title);
		stud.setDescription(descrip);
		stud.setLanguage(language);
		stud.setRegistration(r);
		b.updateproj(stud);
		
		String mail =(String)ses.getAttribute("mail");
		Registration reg= b.getUserByUserId(mail);
		
		int rid = reg.getRegId();
		List<Studproject> ls= b.Searchproject(rid);
		ses.setAttribute("lst", ls);
	
		response.sendRedirect("AddProject.jsp");
	}

}
