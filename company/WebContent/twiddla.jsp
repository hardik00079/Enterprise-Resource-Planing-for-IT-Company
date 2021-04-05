
<%@page import="common.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<button onclick="start()">Start count!</button>
<input type="text" id="txt">
<button onclick="stop()">Stop count!</button>



<script>
var c = 0;
var t;
var timer_is_on = 0;

function timedCount() {
	
	// var today = new Date();
	   // var h = today.getHours();
	    //var m = today.getMinutes();
	   // var s = today.getSeconds();
	    // add a zero in front of numbers<10
	    //m = checkTime(m);
	   // s = checkTime(s);
	  // c= document.getElementById("txt").innerHTML = h + ":" + m + ":" + s;
	  //c= c+1;
	     //t = setTimeout(function(){ startTime() }, 500);
	
	
	
	
    document.getElementById("txt").value = c;
    c = c + 1;
   
    t = setTimeout(function(){ timedCount() }, 1000);
}

function start() {
    if (!timer_is_on) {
        timer_is_on = 1;
        timedCount();
    }
}

function stop() {
    clearTimeout(t);
    timer_is_on = 0;
}
</script>

</body>
<%
DBConnection db=new DBConnection();
Connection con=db.getCOnnectivity();
String tid=request.getParameter("tid");


String sql1="UPDATE urlmaster SET url_status=1 WHERE (url_stud_id='"+tid+"')";
PreparedStatement psmt=con.prepareStatement(sql1);
psmt.executeUpdate();
out.println(tid);

String sql="select url from urlmaster where (url_stud_id="+tid+")" ;

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(sql);
while(rs.next()){
	 
	 	String url=rs.getString("url");
out.println(url);

	 %>
	 	<iframe src="<%=url%>" frameborder="0" width="800" height="600"></iframe> 
		
<%
}

%>
</body>
</html>