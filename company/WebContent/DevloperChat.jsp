

<%@page import="common.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<meta http-equiv="refresh">
<script>
	setTimeout(function() {
		window.location.reload(1);
	}, 1000);
</script>
<%
	DBConnection db = new DBConnection();
	Connection con = db.getCOnnectivity();

	String sid = request.getSession().getAttribute("regid").toString();
	String sql = "SELECT url_stud_id, email FROM registration LEFT JOIN  `urlmaster` ON `registration`.`RegID` = `urlmaster`.`url_stud_id` WHERE (url_dvp_id="
			+ sid + ")";

	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>

<br />
<p>Student Request</p>
<%
	while (rs.next()) {
		String tuteeid = rs.getString("url_stud_id");
		//out.println(tuteeid);

		{
%>
<br /><%=rs.getString("email")%><div>
	<a id="accept" href="twiddla.jsp?tid=<%=tuteeid%>"><img
		src="images/accept.jpg"
		style="width: 100px; margin-top: -25px; margin-left: 50px;"></a>
</div>
<%
	}
	}
%>



