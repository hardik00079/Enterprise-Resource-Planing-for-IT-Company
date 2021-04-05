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

import pojo.Leavemaster;

import logic.BLmanager;

/**
 * Servlet implementation class RejectLeaveServ
 */
@WebServlet("/RejectLeaveServ")
public class RejectLeaveServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RejectLeaveServ() {
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
		String status = "rejected";
		PreparedStatement ps = null;
		Connection con = null;
		/*Leavemaster lm = b.SearchLeave(Integer.parseInt(id));
		//int lid = lm.getId();
		String name = lm.getName();
		String email = lm.getEmail();
		String cont = lm.getContactno();
		String typ = lm.getLeavetype();
		String discrip = lm.getDescription();
		String dept = lm.getDepartment();
		Date aply = lm.getApplydate();
		Date start = lm.getStartdate();
		Date end = lm.getEnddate();
		System.out.println("zxc");
		
		
		Leavemaster l = new Leavemaster();
		l.setId(Integer.parseInt(id));
		l.setApplydate(aply);
		l.setStartdate(start);
		l.setEnddate(end);
		l.setDepartment(dept);
		l.setDescription(discrip);
		l.setName(name);
		l.setEmail(email);
		l.setContactno(cont);
		l.setLeavetype(typ);
		l.setStatus(status);
		b.updateleave(l);*/
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/robonet","root","1234");
			String q= "Update leavemaster set status=? where id = "+id+"";
			ps=con.prepareStatement(q);
			ps.setString(1,status);
			ps.executeUpdate();
			
			
			response.sendRedirect("HRLeaveDetail.jsp");
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
