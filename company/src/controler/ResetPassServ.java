package controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Registration;

import logic.BLmanager;

/**
 * Servlet implementation class ResetPassServ
 */
@WebServlet("/ResetPassServ")
public class ResetPassServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPassServ() {
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
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		String cnfpass = request.getParameter("cnfpass");
		HttpSession s = request.getSession();
		String email =(String)s.getAttribute("email");
		PreparedStatement ps = null;
		Connection con = null;
		
		BLmanager bl = new BLmanager();
		try{
			System.out.println(email);
			Registration r = bl.getUserByUserId(email);
			String old = r.getPassword();
			System.out.println(old);
			if(oldpass.equals(old))
			{
				System.out.println("first if done");
				if(newpass.equals(cnfpass))
				{
					System.out.println("into second if ");
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/robonet","root","1234");
					String q= "Update Registration set password=? where email = '"+email+"'";
					ps=con.prepareStatement(q);
					ps.setString(1,newpass);
					ps.executeUpdate();
					System.out.println("Password updated");
					response.sendRedirect("Login.jsp");
				}
				else 
				{
					response.sendRedirect("ResetPass.jsp?err=1");
				}
				
			}
			else
			{
				response.sendRedirect("ResetPass.jsp?msg=1");
			}
		
		}
		catch(Exception e)
		{
			System.out.println("into catch ");
			e.printStackTrace();
		}
	}

}
