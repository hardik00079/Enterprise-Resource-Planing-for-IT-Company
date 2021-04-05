<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
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
	
	
	<!-- Start Resetpassword section -->
	<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" >
	<div id="login-content" class="modal-content" style="width: 350px;">
		<div class="modal-header">
			<h4 class="modal-title" align="center">Reset Password</h4>
		</div>
		<div class="modal-body ">
			<form action="ResetPassServ" method="post">
				<div class="form-group">
					<input type="password" required="required" placeholder="Old Password"
						class="form-control" name="oldpass">
				</div>
				<%
						if (request.getParameter("msg") != null) 
						{
					%>
					<h4 style="color: red">Old Password is wrong</h4>
					<%
						}
					%>
				<div class="form-group">
					<input type="password" required="required" placeholder="New Password"
						class="form-control" name="newpass">
				</div>
				<div class="form-group">
				<input type="password" required="required" placeholder="Confirm Password"
						class="form-control" name="cnfpass">
				</div>
				<%
						if (request.getParameter("err") != null) {
					%>
					<h4 style="color: red">New&Confirm Password is not matching</h4>
					<%
						}
					%>
				<div class="loginbox" align="center">
					<input class="btn signin-btn" type="submit" value="Reset">
				</div>
			</form>
		</div>

	</div>
	</div>
	</div>
	</section>
	<!-- End resetpassword modal window -->
	<!-- Start footer -->
  <footer style="margin-top:130px;" id="footer">
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
	
</body>
</html>