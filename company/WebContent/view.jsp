<%@page import="java.time.ZoneId"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="pojo.Studproject"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Registration"%>
<%@page import="logic.BLmanager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
  Date date = new Date();
  LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
  int year  = localDate.getYear();
  int month = localDate.getMonthValue();
  int day   = localDate.getDayOfMonth();
  System.out.println(year);
  System.out.println(month);
  System.out.println(day);
  %>
  
 
</body>
</html>