<%@page import="org.hibernate.mapping.Value"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
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
	<!-- start Profile -->
	<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" style="width:650px;">
			<div id="login-content" class="modal-content"">
				<div class="modal-header">
					<h4 class="modal-title" align="center">
						<i class="fa fa-user"></i>Profile
					</h4>
				</div>
				<div class="modal-body ">
					<form action="UpdateProfile.jsp">
					<table>
					<tr>
						<td>
						<div class="form-group">
							<label> First Name</label>
							 <input type="text" readonly="readonly"
								class="form-control" value="${reg.fname}">
						</div>
						</td>
						<td>
						<div class="form-group">
							<label style="margin-left:5px;"> Middle Name</label> <input type="text" style="margin-left:5px;" readonly="readonly"
								class="form-control" value="${reg.mname}">
						</div>
						</td>
						<td>
						<div class="form-group">
						<label style="margin-left:10px;">Last Name</label>
							<input type="text" style="margin-left:10px;" class="form-control"
								readonly="readonly" value="${reg.lname}">
						</div>
						</td>
						</tr>
						</table>
						<table>
					<tr>
						<td>
						<div class="form-group">
						<label style="margin-left:43px;"> Email</label>
							<input type="text" style="margin-left:43px;"  class="form-control" readonly="readonly"
								value="${reg.email}">
						</div>
						</td>
					<td>
						<div class="form-group">
							<label style="margin-left:70px;">Date of Birth</label>
							<input type="text" style="margin-left:70px;"  class="form-control"
								readonly="readonly" value="${reg.dob}">
						</div>
						</td>
						</tr>
						</table>
						<table>
					<tr>
						<td>
						<div class="form-group">
							<label  style="margin-left:43px;">Gender</label><input style="margin-left:43px;" type="text" class="form-control" readonly="readonly"
								value="${reg.gender}">
						</div>
						</td>
						<td>
						<div class="form-group">
							<label style="margin-left:70px;">Contact No</label><input style="margin-left:70px;" type="text" class="form-control"
								readonly="readonly" value="${reg.contactno}">
						</div>
						</td>
						</tr>
						</table>
						<table>
					<tr>
						<td>
						<div class="form-group">
						<label style="margin-left:43px;">Role</label><input style="margin-left:43px;" type="text" class="form-control" readonly="readonly"
								value="${reg.role.role}">
							
						</div>
						</td>
						<td>
						<div class="form-group">
							<label style="margin-left:70px;">Address</label><input style="margin-left:70px;height:100px; "  type="text" class="form-control"
								readonly="readonly" value="${reg.address}">
						</div>
						</td>
						</tr>
						</table>
						<div class="loginbox">
							<input type="submit" style="margin-left:170px;"
								class="btn signin-btn" value="Update Profile">
						</div>

					</form>
					<form action="ResetPass.jsp">
						<div class="loginbox"
							style="margin-left:320px; margin-top: -44px;">
							<input type="submit" value="Reset Password"
								class="btn signin-btn">
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- End Profile -->
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