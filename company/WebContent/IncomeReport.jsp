<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports</title>
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
<%HttpSession s =request.getSession();
	int rid = (Integer)s.getAttribute("rid");
				if( rid ==1)
				{%>
					<jsp:include page="FinanceMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==2)
				{  %>
					<jsp:include page="HRMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==3)
				{ %>
					<jsp:include page="PMMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==4)
				{ %>
					<jsp:include page="UserMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==5)
				{ %>
					<jsp:include page="DevloperMenubar.jsp"></jsp:include>
				<%	
				}
	%>
<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" >
	<div id="login-content" class="modal-content" style="width:350px; ">
        
        <div class="modal-body">
<form action="IncomereportServ" method="post">
<div class="form-group">
             <label><span>Select Month</span><i class="fa"></i></label> 
             <select name="drpmonth" class="form-control">
             <option value="-1">Select Month</option>
              	<option value="1">January</option>
              	<option value="2">February</option>
              	<option value="3">March</option>
              	<option value="4">April</option>
              	<option value="5">May</option>
              	<option value="6">June</option>
              	<option value="7">July</option>
              	<option value="8">August</option>
              	<option value="9">September</option>
              	<option value="10">October</option>
              	<option value="11">November</option>
              	<option value="12">December</option>
              </select>
            </div>
        <div class="loginbox">
              <input class="btn signin-btn" id ="btnget" type="submit" value="GetReport" >
            </div>

</form>
</div>
</div>
</div>
</div>
</section>

<%HttpSession se = request.getSession(); %>

<section id="menu-area">
	
<div class="container col-sm-10 wow zoomIn" style="margin-left:100px;">
  <h2 align="center">IncomeReport</h2>                                                                                      
  <div class="table-responsive">
<table class="table table-striped table-bordered" id="tbldata" cellspacing="0" width="100%">
    <thead>
    <tr align="center">
    <td colspan="8" align="center" ><%=se.getAttribute("month") %></td>
    </tr>
  <tr>
  <th>id</th>
  <th>Type</th>
  <th>Description</th>
  <th>Day</th>
  <th>Hour</th>
  <th>Minute</th>
  <th>AM-PM</th>
   <th>Amount</th>
  </tr>
  </thead>
    <tbody>
  <c:forEach items="${sessionScope.inc}" var="inc">
  <tr>
  	<td><c:out value="${inc.id}"></c:out>
  	<td><c:out value="${inc.type}"></c:out>
  	<td><c:out value="${inc.description}"></c:out>
  	<td><c:out value="${inc.day}"></c:out>
  	<td><c:out value="${inc.hour}"></c:out>
  	<td><c:out value="${inc.minute}"></c:out>
  	<td><c:out value="${inc.amPm}"></c:out>
  	<td align="right"><c:out value="${inc.amount}"></c:out>
  </tr>
  </c:forEach>
  </tbody>
   <tr align="right">
    <td colspan="8" align="right"  >Total = <%=se.getAttribute("total") %></td>
    </tr>
  
  </table>
  </div>
  </div>
  </section>
  
  <!-- Start footer -->
  <footer style="margin-top:30px;" id="footer">
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