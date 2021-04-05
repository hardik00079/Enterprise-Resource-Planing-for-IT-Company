<!-- Written by Sukhwinder Singh (ssruprai@hotmail.com -->
<%-- Written by Sukhwinder Singh (ssruprai@hotmail.com --%>

<%@ page errorPage="error.jsp"%>
<%
	String nickname = (String) session.getAttribute("nickname");
	
	if (nickname != null) {
		response.sendRedirect("listrooms.jsp");
	}
%>
<HTML>
<HEAD>
<TITLE>S2R Chat - Login</TITLE>
<META http-equiv="pragma" content="no-cache">
<meta name="Author" content="Sukhwinder Singh (ssruprai@hotmail.com">
<!--  <script language="JavaScript">
	
	 if(window.top != window.self)
	 {
		 window.top.location = window.location;
	 }
	 
	 </script> -->
<LINK rel="stylesheet" href="<%=request.getContextPath()%>/chat.css">
<META name="author" content="Sukhwinder Singh (ssruprai@hotmail.com)">
</HEAD>
<BODY bgcolor="#FFFFFF" onLoad="document.login.nickname.focus();">
	<%
		HttpSession se = request.getSession();
		int rid = (Integer) se.getAttribute("rid");
		if (rid == 1) {
	%>
	<jsp:include page="FinanceMenubar.jsp"></jsp:include>

	<%
		} else if (rid == 2) {
	%>
	<jsp:include page="HRMenubar.jsp"></jsp:include>

	<%
		} else if (rid == 3) {
	%>
	<jsp:include page="PMMenubar.jsp"></jsp:include>

	<%
		} else if (rid == 4) {
	%>
	<jsp:include page="UserMenubar.jsp"></jsp:include>

	<%
		} else if (rid == 5) {
	%>
	<jsp:include page="DevloperMenubar.jsp"></jsp:include>
	<%
		}
	%>
	<!-- Start Chat -->
	<section>
		<div class="container wow zoomIn">

			<%@ include file="/header.jsp"%>
			<TABLE width="40%" border="0" cellspacing="1" cellpadding="1"
				align="center">
				<%
					String d = request.getParameter("d");
					String n = request.getParameter("n");
					String ic = request.getParameter("ic");

					if (d != null && d.equals("t")) {
				%>
				<TR>
					<TD>
						<TABLE border="0" cellspacing="1" cellpadding="1" align="center">
							<TR>
								<TD colspan="2" align="center"><SPAN class="error">Nickname
										exists</SPAN><BR></TD>
							</TR>
							<TR>
								<TD colspan="2">Nickname <B><%=n%></B> has already been
									taken please select some other nick.
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<%
					} else if (ic != null && ic.equals("t")) {
				%>
				<TR>
					<TD colspan="2">
						<TABLE width="100%" border="0" cellspacing="1" cellpadding="1"
							align="center">
							<TR>
								<TD colspan="2" align="center"><SPAN class="error">Incomplete
										information</SPAN></TD>
							</TR>
							<TR>
								<TD colspan="2"><b>Sex</b> and <b>Nickname</b> must be
									entered and nickname must be atleast <b>4</b> characters long
									and must not contain any <b>space</b>.</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<%
					}
				%>
				<TR>
					<TD colspan="2" class="panel">
						<FORM name="login" method="post"
							action="<%=request.getContextPath()%>/servlet/login">
							<TABLE width="60%" border="0">
								<TR>
									<TD class="black">Nickname</TD>
									<TD>
										<div class="form-group">
											<INPUT type="text" style="margin-right: 50px;"
												class="form-control" name="nickname" size="15">
										</div>
									</TD>
								</TR>
								<TR>
									<TD class="black">Sex</TD>
									<TD>
										<div class="form-group">
											<SELECT class="form-control" size="1" name="sex">
												<OPTION value="m">Male</OPTION>
												<OPTION value="f">Female</OPTION>
											</SELECT>
										</div>
									</TD>
								</TR>
								<TR>
									<TD>&nbsp;  </TD>
									<TD>
										<div class="loginbox">
											<INPUT type="submit" class="btn signin-btn" name="Submit"
												value="Submit">
										</div>
									</TD>
								</TR>
							</TABLE>
						</FORM>
					</TD>
				</TR>
			</TABLE>
		</div>
	</section>
	<!-- End Chat -->

	<!-- Start footer -->
	<footer style="margin-top: 260px;" id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="footer-left">
						 <h4  > Copyright @ 2013. <a href="http://www.infotechindia.co.in/" >   Maxgen Technologies Pvt. Ltd</a></h4>
						
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="footer-right">
						<a
							href="https://www.facebook.com/pages/Robonet-Infotech-India-PvtLtd/1087711411254042?ref=hl"><i
							class="fa fa-facebook"></i></a> <a
							href="https://twitter.com/robo_infotech"><i
							class="fa fa-twitter"></i></a> <a
							href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i
							class="fa fa-linkedin"></i></a>

					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer -->
	<script type="text/javascript">
		function preventBack() {
			window.history.forward();
		}
		setTimeout("preventBack()", 0);
		window.onunload = function() {
			null
		};
	</script>
</BODY>
</HTML>