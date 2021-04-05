<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<%HttpSession se =request.getSession();
	int rid = (Integer)se.getAttribute("rid");
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
	<!-- start Attendance Model -->
	 <section id="menu-area">
      <div class="container" >
      <div class="modal-dialog wow zoomIn" style="width:400px;">
		<div id="login-content" class="modal-content"  >
		<div class="modal-header">
			<h4 class="modal-title" align="center"><i class="fa fa-user"></i>Attendance</h4>
			</div>
<div class="modal-body ">
<form action="AttendenceServ" method="post">

<div class="form-group">
FirstName:-
<input type="text" readonly="readonly" class="form-control" name="fname" value="${reg.fname}">
</div>
<div class="form-group">
MiddleName
<input type="text" readonly="readonly" class="form-control" name="mname" value="${reg.mname}">
</div>
<div class="form-group">
LastName<input type="text" class="form-control" readonly="readonly" name="lname" value="${reg.lname}">
</div>
<div class="form-group">
Email<input type="text" class="form-control" readonly="readonly" name="email" value="${reg.email}"> 
</div>
<div style="margin-top:10px; margin-left:80px;">
<div class="form-group">
<label style="margin-left:70px;">Present</label>
</div>

<div class="form-group">
 <input type="checkbox" style="margin-left:130px;margin-top:-47px; " name="present" value="Present" checked="checked"> 
</div>
</div>
<div class="loginbox">
<input type="submit" style="margin-left:150px;margin-top:-10px;" class="btn signin-btn" value="Present" >
</div>

</form>
</div>
</div>
</div>
</div>
</section>
<!-- End Attendance Model -->
<!-- Start footer -->
  <footer style="margin-top:15px;" id="footer">
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
  
<script type = "text/javascript" >
          function preventBack() { window.history.forward(); }
          setTimeout("preventBack()",0);
          window.onunload = function () { null };
    </script>
</body>
</html>