package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;



import pojo.Registration;
import pojo.Role;

import logic.BLmanager;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		BLmanager bl = new BLmanager();
		try{
		
		
		Boolean b = bl.validate(email, pass);
		Registration r = bl.getUserByUserId(email);
		String fname= r.getFname();
		HttpSession s = request.getSession();
		s.setAttribute("email", email);
		s.setAttribute("name",fname);
		s.setAttribute("reg",r);
		
		Role id = r.getRole();
		int rid = id.getRolId();
		int regid = r.getRegId();
		s.setAttribute("regid",regid);
		s.setAttribute("rid",rid);
			if(b == true)
			{
				if( rid==1)
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
			else
			{
				response.sendRedirect("Login.jsp?msg=1");
			}
		
		}
		catch(Exception e)
		{
			response.sendRedirect("Login.jsp?msg=1");
		}
	}

}
