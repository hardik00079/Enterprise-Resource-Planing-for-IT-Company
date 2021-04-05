package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logic.BLmanager;
import pojo.Clientproject;
import pojo.Studproject;

/**
 * Servlet implementation class UpdClntProjServ
 */
@WebServlet("/UpdClntProjServ")
public class UpdClntProjServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdClntProjServ() {
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
		Clientproject  c = b.SearchClientpro(Integer.parseInt(id));
		
		HttpSession se = request.getSession();
		se.setAttribute("pro",c);
		response.sendRedirect("UpdtClientPro.jsp");
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
		
		Clientproject cp = new Clientproject();
		cp.setProid(Integer.parseInt(id));
		cp.setProtitle(title);
		cp.setDescription(descrip);
		cp.setLanguage(language);
		BLmanager b = new BLmanager();
		b.updateclntproj(cp);
		response.sendRedirect("PMProject.jsp");
	}

}
