<!doctype html>
<%@page import="logic.BLmanager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import=" java.util.Properties"%>
<%@page import=" javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.mail.Message"%>
<%@page import=" javax.mail.Session"%>
<%@page import=" javax.mail.Transport"%>
<%@page import=" javax.mail.internet.InternetAddress"%>
<%@page import=" javax.mail.internet.MimeMessage"%>

<%
class SendMailTLS {
	
    public SendMailTLS(String toe,String ps) 
    {
    	
        
        try {
			// TODO add your handling code here:
			// TODO add your handling code here:
        	
        	String host = "smtp.gmail.com";
        	String from = "robonetnoreply@gmail.com";
			String pass = "4studentuse";
			Properties props = System.getProperties();
			props.put("mail.smtp.starttls.enable", "true"); // added this line
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.password", pass);
			props.put("mail.smtp.port", "587");
			props.put("mail.smtp.auth", "true");
			String[] to = {toe}; // added this line
			Session session = Session.getDefaultInstance(props, null);
			MimeMessage message = new MimeMessage(session);

				message.setFrom(new InternetAddress(from));

			InternetAddress[] toAddress = new InternetAddress[to.length];
			// To get the array of addresses
			for (int i = 0; i < to.length; i++) {
				// changed from a while loop

					// changed from a while loop
					toAddress[i] = new InternetAddress(to[i]);

			}
			System.out.println(Message.RecipientType.TO);
			for (int i = 0; i < toAddress.length; i++) 
			{
				// changed from a while loop
				message.addRecipient(Message.RecipientType.TO, toAddress[i]);
			}
			
			message.setSubject("Robonet - Forgot Password Request");
			message.setText("Your Request for Forgot password had been confirm. your password is "+ps+" Thank you");
			Transport transport = session.getTransport("smtp");
			transport.connect(host, from, pass);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		System.out.println("Mail Sent!!!!!");	
        }
			catch (Exception ex)
			{

			System.out.append(ex.toString());

			}
    }

}


%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico"/>
    <!-- Font Awesome -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">    
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css"/> 
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css"/> 
    <!-- Progress bar  -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-progressbar-3.3.4.css"/> 
     <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Open Sans for body font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!-- Lato for Title -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>    
    
   <style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  </style>
    <jsp:include page="JqueryLib.jsp"></jsp:include>
  </head>
<body style="background-color: black;">
<div id="login-content" class="modal-content" style="width: 350px; margin-left: 500px; margin-top:150px;">
        <div class="modal-header">
         
          <h4 class="modal-title"><i class="fa fa-key"></i>Forgot Password</h4>
        </div>
        <div class="modal-body">
          <form >
            <div class="form-group">
              <input type="text" id="username" placeholder="Enter Email" class="form-control" name="txtemail">
            </div>
            
              <%
						if (request.getParameter("msg") != null) {
					%>
					<h4 id='loginerror' style="color: red">Email Dosen't Exist</h4>
					<%
						}
					%>
             <div class="loginbox">
              <input class="btn signin-btn" type="Submit" name = "Submit"  value="Get Password" >
              
              <a href="Login.jsp" style="font-size: .75em; margin-top: .25em;">Sign in to your account</a>
            </div>                    
          </form>
        </div>
      </div>

<%
if(request.getParameter("Submit")!=null)
{
	String email = request.getParameter("txtemail");
try
{		
		String pas= "select password from Registration where email= '"+email+"'";
		
		String ps1= BLmanager.getSingleValue(pas);
	if(ps1!="")
	{
		System.out.println(email);
		System.out.println(ps1);
		 new SendMailTLS(email,ps1);
		
		 response.sendRedirect("Login.jsp");
	
	}
	else
	{
		 
		response.sendRedirect("ForgotPassword.jsp?msg=1");
	}
	
	
}
catch(Exception E)
{
	E.printStackTrace();
}
}
%>

    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    <script type="text/javascript">
      $( document ).ready(function() {
    	  $("#loginerror").show();
      	$("#username").on("focus",function(){
      		$("#loginerror").hide();
      	});
	});
      </script>
  
</body></html>
