<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:include page="PMMenubar.jsp"></jsp:include>
 <section id="menu-area">
 <div class="container">
 <div class="modal-dialog wow zoomIn">
      <div id="login-content" class="modal-content" style="width:400px;">
        <div class="modal-header">
          <h4 class="modal-title" align="center">Update Project</h4>
        </div>
        <div class="modal-body">
          <form action="UpdClntProjServ" method="post">
            <div class="form-group">
              <input type="text" required="required" value="${pro.proid}"  class="form-control" name="proid">
            </div>
            <div class="form-group">
              <input type="text"  required="required" value="${pro.protitle}"  name="protitle" class="form-control">
            </div>
            <div class="form-group">
              <input  required="required" name="description"  value="${pro.description}" class="form-control">
            </div>
            <div class="form-group">
              <input  required="required" name="language"  value="${pro.language}" class="form-control">
            </div>
             <div class="loginbox" align="center">
              <input  class="btn signin-btn" type="submit" value="Add">
            </div>                    
          </form>
        </div>
       </div>
       </div>
      </div>
</section>
</body>
</html>