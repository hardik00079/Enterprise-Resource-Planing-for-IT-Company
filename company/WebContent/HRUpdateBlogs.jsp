<%@page import="pojo.Blog"%>
<%@page import="java.util.List"%>
<%@page import="logic.BLmanager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update news</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="HRMenubar.jsp"></jsp:include>

<%//HttpSession ses =request.getSession();
	//int id = (Integer)ses.getAttribute("id");
	//String id = request.getParameter("id");
	//out.print(id);
	//BLmanager bl = new BLmanager();
	
	//Blog b =bl.Searchnews(Integer.parseInt(id));
	
	%>
	<section id="menu-area">
	<div class="container">
		<div class="modal-dialog wow zoomIn" >
	<div id="login-content" class="modal-content" style="width:350px; ">
		<div class="modal-header">
			<h4 class="modal-title" align="center">Update News</h4>
		</div>
		<div class="modal-body ">
			<form action="UpdateNewsServlet" method="post">
			<div class="form-group">
              <input type="text" readonly="readonly" required="required" value="${n.id}"  class="form-control" name="id">
            </div>
				<div class="form-group">
					<input type="text" required="required" placeholder="News Title"
						class="form-control" value="${n.news}" name="newstitle">
				</div>
				<div class="form-group">
					<textarea placeholder="Description" required="required"
						name="description" class="form-control" value="${n.description}" name="description" ></textarea>
				</div>
				
				<div class="loginbox" align="center">
					<input class="btn signin-btn" type="submit" value="Update">
				</div>
			</form>
		</div>

	</div>
	</div>
	</div>
	</section>
	
</body>
</html>