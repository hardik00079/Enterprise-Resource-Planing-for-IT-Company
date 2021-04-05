<%@page import="common.DBConnection"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
<head>

    <!--  <meta http-equiv="refresh" url=http://localhost:8080/TutorPortal/twiddla1.jsp" />  -->
  <script>
setTimeout(function(){
   window.location.reload(1);
}, 1000);

</script>
</head> 
<body>
<jsp:include page="UserMenubar.jsp"></jsp:include>
<%

String sid=request.getSession().getAttribute("regid").toString();
String sql="select url from urlmaster where ( url_status=1 AND url_stud_id="+sid+")" ;

DBConnection db=new DBConnection();
Connection con=db.getCOnnectivity();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(sql);
while(rs.next()){
	 
	 	String url=rs.getString("url");
out.println(url);


	 %>
	 	<iframe src="<%=url%>" frameborder="0" width="800" height="600"></iframe> 
		
<%
} 

con.close();
%>
						 <!-- Start footer -->
  <footer style="margin-top:15px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  > Copyright @ 2013. <a href="http://www.infotechindia.co.in/" >   Maxgen Technologies Pvt. Ltd.</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="https://www.facebook.com/pages/Robonet-Infotech-India-PvtLtd/1087711411254042?ref=hl"><i  class="fa fa-facebook"></i></a>
            <a href="https://twitter.com/robo_infotech"><i class="fa fa-twitter"></i></a>
            
            <a href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- End footer -->

<!-- <button onclick="stopCount()">Stop count!</button>  -->
</body>
</html>