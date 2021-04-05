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

import logic.BLmanager;

import pojo.Registration;
import pojo.Studproject;

/**
 * Servlet implementation class projectdetail
 */
@WebServlet("/projectdetail")
public class projectdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public projectdetail() {
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
	 
		
		HttpSession s = request.getSession();
		BLmanager b = new BLmanager();
		
		
		String email =(String) s.getAttribute("mail");
		
		//System.out.println(email);
		
		Registration r = b.getUserByUserId(email);
		
		 int id = r.getRegId();
		 //System.out.print(id);
		
		
		List<Studproject> ls= b.Searchproject(id);
		
		s.setAttribute("lst", ls);
		RequestDispatcher rd=request.getRequestDispatcher("AddProject.jsp");  
        rd.forward(request, response);
		//response.sendRedirect("AddProject.jsp");
		
	}
	}
