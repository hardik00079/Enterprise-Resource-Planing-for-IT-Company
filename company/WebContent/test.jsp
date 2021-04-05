<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table border="1">
			<tr>
				<td>
					<form name="registerationform" method="POST" action=""
						onsubmit="return(regvalidate())">
						<table>
							<tr>
								<td>First Name:</td>
								<td><input type="text" name="fnametxt" /><br /></td>
							</tr>
							<tr>
								<td>Second Name:</td>
								<td><input type="text" name="snametxt" /><br /></td>
							</tr>
							<tr>
								<td>User Name:</td>
								<td><input type="text" name="unametxt" /><br /></td>
							</tr>
							<tr>
								<td>Email Address:</td>
								<td><input type="text" name="emailtxt" /><br /></td>
							</tr>
							
							<tr>
								<td>Password :</td>
								<td><input type="password" name="pwdtxt" /> <br /></td>
							</tr>
							
							<tr>
								<td>Confirm :</td>
								<td><input type="password" name="cpwdtxt" /> <br /></td>
							</tr>
						</table>
						<font color='red'>
						</font> <input type="submit" value="Register Now" />
					</form>
				</td>
				
			</tr>
		</table>
		
		
		<SCRIPT type="Text/JavaScript">
			function regvalidate()

			{
				if ((document.registerationform.fnametxt.value == "")
						&& (document.registerationform.snametxt.value == "")) {
					document.getElementById('une').innerHTML = "First name or Second name should not be empty";
					registerationform.fnametxt.focus();
					return (false);
				}

				if (document.registerationform.unametxt.value == "") {
					document.getElementById('une').innerHTML = "User name field should not be empty";
					registerationform.unametxt.focus();
					return (false);
				}

				if (document.registerationform.emailtxt.value == "") {
					document.getElementById('une').innerHTML = "Email id requered";
					registerationform.emailtxt.focus();
					return (false);
				}

				if (document.registerationform.pwdtxt.value == "") {
					document.getElementById('une').innerHTML = "Please type a password";
					registerationform.pwdtxt.focus();
					return (false);
				}

				if ((document.registerationform.pwdtxt.value) != (document.registerationform.cpwdtxt.value)) {
					document.getElementById('une').innerHTML = "Password Must be equal";
					registerationform.pwdtxt.value = "";
					registerationform.cpwdtxt.value = "";
					registerationform.pwdtxt.focus();
					return (false);
				} else {
					return (true);
				}
			}
		</SCRIPT>
	</center>


</body>
</html>