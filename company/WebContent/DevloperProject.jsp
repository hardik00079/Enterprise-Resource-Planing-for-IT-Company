<%@page import="pojo.Clientproject"%>
<%@page import="pojo.Studproject"%>
<%@page import="java.util.List"%>
<%@page import="logic.BLmanager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href='https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='https://cdn.datatables.net/buttons/1.1.2/css/buttons.dataTables.min.css'
	rel='stylesheet' type='text/css'>
<link
	href='https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css'
	rel='stylesheet' type='text/css'>		
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="DevloperMenubar.jsp"></jsp:include>
<%
HttpSession ses = request.getSession();
BLmanager b = new BLmanager();
List<Studproject> studls= b.SearchAllStudProj();
List<Clientproject> clientls= b.SearchAllClientProj();

ses.setAttribute("stdlst",studls);
ses.setAttribute("clntlst",clientls);
%>
<div class="container col-sm-6">
  <h2 align="center">Student Projects</h2>                                                                                      
  <div class="table-responsive">
 <table  class="table table-striped table-bordered"  id="tbldata" cellspacing="0" width="100%">
    <thead>
  <tr>
  <th>ProID</th>
  <th>Title</th>
  <th>Description</th>
  <th>Technology</th>
  </tr>
  </thead>
    <tbody>
  <c:forEach items="${sessionScope.stdlst}" var="stls">
  <tr>
  	<td><c:out value="${stls.proid}"></c:out>
  	<td><c:out value="${stls.protitle}"></c:out>
  	<td><c:out value="${stls.description}"></c:out>
  	<td><c:out value="${stls.language}"></c:out>
  </tr>
  </c:forEach>
  </tbody>
  </table>
  </div>
  </div>
 
 <div class="container col-sm-6">
  <h2 align="center">Client Projects</h2>                                                                                      
  <div class="table-responsive">
 <table  class="table table-striped table-bordered"  id="example" cellspacing="0" width="100%">
    <thead>
    <tr>
  <th>ProID</th>
  <th>Title</th>
  <th>Description</th>
  <th>Technology</th>
  </tr>
  </thead>
 <tbody>
  <c:forEach items="${sessionScope.clntlst}" var="clntls">
  <tr>
  	<td><c:out value="${clntls.proid}"></c:out>
  	<td><c:out value="${clntls.protitle}"></c:out>
  	<td><c:out value="${clntls.description}"></c:out>
  	<td><c:out value="${clntls.language}"></c:out>
  </tr>
  </c:forEach>
  </tbody>
  </table>
 </div>
 </div>
 <!-- Start footer -->
  <footer style="margin-top:100px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  > Copyright @ 2013. <a href="http://www.infotechindia.co.in/" >   Maxgen Technologies Pvt. Ltd</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
                     <a href="https://www.facebook.com/Maxgen-Technologies-PvtLtd-1714014815539092/?ref=aymt_homepage_panel"><i  class="fa fa-facebook"></i></a>
         
            <a href="https://twitter.com/max_tech"><i class="fa fa-twitter"></i></a>
           
            <a href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- End footer -->
<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js"></script>
		
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.flash.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.html5.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.1.2/js/buttons.print.min.js"></script>
 <script>
	$(document).ready(function() {
	    $('#example').DataTable({
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	    $('#tbldata').DataTable({
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );
	</script>
 

</body>
</html>