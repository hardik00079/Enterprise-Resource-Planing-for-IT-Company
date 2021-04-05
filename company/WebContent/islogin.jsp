<% 

if(session.getAttribute("email")==null)
{
	%>
	<jsp:forward page="Login.jsp"/>
	<% 	
}

if(session.getAttribute("rid")==null)
{
	%>
	<jsp:forward page="Login.jsp"/>
	<% 
}
else
{
	
	
}

%>