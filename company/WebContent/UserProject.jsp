<%@page import="pojo.Studproject"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Registration"%>
<%@page import="logic.BLmanager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projects</title>
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
<jsp:include page="UserMenubar.jsp"></jsp:include>
  <!-- Start addproject section -->
 
<section id="menu-area">
      <div class="container" >
      <div class="modal-dialog wow zoomIn" style="width:400px;">
	<div id="login-content" class="modal-content" style="width: 350px;">
		<div class="modal-header">
			<h4 class="modal-title" align="center">Add Project</h4>
		</div>
		<div class="modal-body ">
			<form action="AddProject" method="post">
				<div class="form-group">
					<input type="text" required="required" placeholder="Project Title"
						class="form-control" name="protitle">
				</div>
				<div class="form-group">
					<textarea placeholder="Description" required="required"
						name="discription" class="form-control"></textarea>
				</div>
				<div class="form-group">
					<input placeholder="Technology" required="required" name="language"
						class="form-control">
				</div>
				<div class="loginbox" align="center">
					<input class="btn signin-btn" type="submit" value="Add">
				</div>
			</form>
		</div>

	</div>
	</div>
	</div>
	</section>

	<!-- End addproject modal window -->
   <%
   	BLmanager b = new BLmanager();
        HttpSession s = request.getSession();
   		String mail =(String)s.getAttribute("email");
   		Registration reg= b.getUserByUserId(mail);
   		int id = reg.getRegId();
   		List<Studproject> ls= b.Searchproject(id);
   		s.setAttribute("lst", ls);
   %>
    
    <%--  <section >
	 <div class="container col-sm-6 wow zoomIn" style="margin-left:200px; ">
		<h2 align="center" style="color: black;">Projects</h2> -->
		<div class="table-responsive">
			<table class="table table-striped table-bordered" id="tbldata" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>ProID</th>
						<th>Title</th>
						<th>Description</th>
						<th>Language</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${sessionScope.lst}" var="ls">
						<tr>
							<td><c:out value="${ls.proid}"></c:out></td>
							<td><c:out value="${ls.protitle}"></c:out></td>
							<td><c:out value="${ls.description}"></c:out></td>
							<td><c:out value="${ls.language}"></c:out></td>
							<td><a href="UpdateProjectServ?id=${ls.proid}">Update</a></td>
							<td><a href="DeleteProjectServ?id=${ls.proid}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	 </div>
	
	</section>
	 --%>
	 <!-- Start footer -->
  <footer style="margin-top:100px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
          <h4  > Copyright @ 2013. <a href="http://www.infotechindia.co.in/" >   Maxgen Technologies Pvt. Ltd.</a></h4>
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