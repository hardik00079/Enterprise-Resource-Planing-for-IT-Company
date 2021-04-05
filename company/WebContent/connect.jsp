
<%@page import="common.DBConnection"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
String sid=request.getSession().getAttribute("regid").toString();
//System.out.println(sid);
String id= request.getParameter("id");
System.out.println(id);
Random rand = new Random();
int n = rand.nextInt(90000) + 10000;


String url="http://www.twiddla.com/api/start.aspx?hide=welcome&sessionid=";

System.out.println(url);
DBConnection db=new DBConnection();
Connection con=db.getCOnnectivity();


String query1="insert into urlmaster(url_dvp_id,url_stud_id,url_status,url) values (?,?,?,?)";

PreparedStatement pstmt=con.prepareStatement(query1);
pstmt.setString(1,id);
pstmt.setString(2,sid);
pstmt.setInt(3,0);
pstmt.setString(4,url+n);
System.out.println(url+n);
int i=pstmt.executeUpdate();
response.sendRedirect("twiddla1.jsp"); 



%>




	
	







 