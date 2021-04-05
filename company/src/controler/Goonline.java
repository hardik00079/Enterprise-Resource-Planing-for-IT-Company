package controler;



import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DBConnection;



/**
 * Servlet implementation class Goonline
 */
@WebServlet("/Goonline")
public class Goonline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Goonline() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
		DBConnection db=new DBConnection();
		Connection con=db.getCOnnectivity();
		String sid=request.getSession().getAttribute("regid").toString();
		String sql1="UPDATE online set ol_flag=1 where ol_um_id='"+sid+"'";
    	PreparedStatement psmt=con.prepareStatement(sql1);
    	psmt.executeUpdate();
    	
    	response.sendRedirect("DevloperIndex.jsp");
		}
		catch(Exception e)
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
