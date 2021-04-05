<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Income:finance</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="FinanceMenubar.jsp"></jsp:include>

<!-- Start income section -->
	<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" >
	<div id="login-content" class="modal-content" style="width: 350px;">
		<div class="modal-header">
			<h4 class="modal-title" align="center">Income</h4>
		</div>
		<div class="modal-body ">
			<form action="IncomeServ" method="post">
			<div class="form-group">
              Income Type:<select name="drptype" class="form-control">
              	<option>Client</option>
              	<option>Student</option>
              	<option>Other</option>
              </select>
            </div>
				<div class="form-group">
					<textarea placeholder="Description" required="required"
						name="description" class="form-control"></textarea>
				</div>
				<div class="form-group">
					<input placeholder="amount" required="required" name="amount"
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
	<!-- End income modal window -->
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

</body>
</html>