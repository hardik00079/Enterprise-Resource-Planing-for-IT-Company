package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nl.captcha.Captcha;

import pojo.Registration;
import pojo.Role;

import logic.BLmanager;

/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);

		System.out.println("cap...." + captcha);
		System.out.println("----------" + captcha);

		request.setCharacterEncoding("UTF-8");

		System.out.println("get......" + request.getCharacterEncoding());
		String answer = request.getParameter("answer");
		System.out.println(answer);

		if (!captcha.isCorrect(answer)) {

			response.sendRedirect("registration.jsp");
			
			return ;
		}
		String fname = request.getParameter("firstname");
		String mname = request.getParameter("mname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String confpass = request.getParameter("confpass");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String rid = request.getParameter("drprole");
		String contno = request.getParameter("number");
		Date d = Date.valueOf(dob);
		
		System.out.println(fname+"  "+mname+"  "+lname+"  "+email+"  "+pass+"  "+confpass+"  "+gender+"  "+dob+"  "+address+"  "+rid+"  "+contno+"  "+d);

		try {

			if (pass.equals(confpass)) {
				BLmanager bl = new BLmanager();
				Role ro = bl.SearchbyName(rid);
				Registration r = new Registration();

				r.setFname(fname);
				r.setMname(mname);
				r.setLname(lname);
				r.setEmail(email);
				r.setPassword(pass);
				r.setGender(gender);
				r.setAddress(address);
				r.setRole(ro);
				r.setContactno(contno);
				r.setDob(d);

				bl.insert(r);

				response.sendRedirect("Login.jsp");
			} else {
				response.sendRedirect("Registration.jsp?msg=1");
			}

		} catch (Exception e) {
			response.sendRedirect("Registration.jsp?error=1");
			e.printStackTrace();
		}

	}

}
