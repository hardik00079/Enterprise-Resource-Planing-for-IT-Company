package controler;

import java.io.IOException;
import java.sql.Date;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Registration;
import pojo.Role;

import logic.BLmanager;

/**
 * Servlet implementation class UpdateProfileServ
 */
@WebServlet("/UpdateProfileServ")
public class UpdateProfileServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfileServ() {
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
		String regid = request.getParameter("regid");
		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		String pass = request.getParameter("pass");
		String gender = request.getParameter("gender");
		String contno = request.getParameter("number");
		String address = request.getParameter("address");
		String rid = request.getParameter("rid");
		Date d = Date.valueOf(dob);
		
		
		BLmanager b = new BLmanager();
		Role r = b.SearchbyName(rid);
		
		Registration reg = new Registration();
		reg.setRegId(Integer.parseInt(regid));
		reg.setFname(fname);
		reg.setMname(mname);
		reg.setLname(lname);
		reg.setEmail(email);
		reg.setPassword(pass);
		reg.setDob(d);
		reg.setGender(gender);
		reg.setContactno(contno);
		reg.setAddress(address);
		reg.setRole(r);
		
		b.update(reg);
		
	HttpSession s = request.getSession();
	String mail =(String)s.getAttribute("email");
		reg= b.getUserByUserId(mail);
		s.setAttribute("reg", reg);
		response.sendRedirect("Profile.jsp");
	}

}
