<%@page import="common.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<title>StudentProfile</title>

</head>
<body>

	<jsp:include page="UserMenubar.jsp"></jsp:include>
	

	
	<div class="container">
	
	<%
DBConnection db=new DBConnection();
Connection con=db.getCOnnectivity();
String sql="SELECT email,ol_um_id FROM registration LEFT JOIN online  ON registration.RegID=online.ol_um_id WHERE (RolID='5' AND ol_flag='1')";
//out.println("ssm_sm_id");
Statement stmt=con.createStatement();
ResultSet rs2=stmt.executeQuery(sql);
%>
<br/><p> Developer</p>
<% 
while(rs2.next())
{ 
		
	String id=rs2.getString("ol_um_id");
	%>
	
	
	
	
		<table class="table table-bordered">
			<thead>
				<tr>
					<%=rs2.getString("email")%> <a id="like" href="connect.jsp?id=<%=id%>"> <img src="images/connect.jpg" style="float:right;margin-right:1000px;width:100px;margin-top:-10px;"> </a>
				

				</tr>
			</thead>
			<tbody>
				<tr>
				
					
				
				</tr>
			</tbody>
		</table>
	</div>
	
	
	
	<% 
	
}
%>
	
	

</body>
</html>







