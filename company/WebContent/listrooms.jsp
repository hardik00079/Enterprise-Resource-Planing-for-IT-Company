<!-- Written by Sukhwinder Singh (ssruprai@hotmail.com -->
<%-- Written by Sukhwinder Singh (ssruprai@hotmail.com --%>

<%@ page session="true" errorPage="error.jsp" import="java.util.Set,java.util.Iterator,java.util.Map,sukhwinder.chat.*"%>
<HTML>
<HEAD>
<TITLE>SS Chat - Room List</TITLE>
<LINK rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/chat.css">
<meta name="Author" content="Sukhwinder Singh (ssruprai@hotmail.com">	
<!-- <SCRIPT language="JavaScript">
	 
	 if(window.top != window.self)
	 {
		 window.top.location = window.location;
	 }
	
</SCRIPT> -->
</HEAD>

<BODY bgcolor="#FFFFFF">
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


<%


String nickname = (String)session.getAttribute("nickname");
if (nickname == null || nickname == "")
{
	response.sendRedirect("groupchat.jsp");
	//System.out.println("Redirecting");
}
else
{
	String roomname = request.getParameter("rn");	
	String descr = request.getParameter("sd");
	boolean see = false;
	if (descr != null && descr.equals("y"))
	{
		see = true;
	}
%>
<%@ include file="header.jsp" %>
<TABLE width="80%" align="center">	
	<!--<tr>
		<td class="normal">Welcome <span class="chattername"><%=nickname%></span></td>
	</tr>	
	-->
	<TR>
		<TD width="100%">Select the room you want to enter or click view description to view description
			 about the room.
		</TD>
	</TR>
</TABLE>
<BR>
	<%
				
		
		try
		{
			ChatRoomList roomlist = (ChatRoomList)application.getAttribute("chatroomlist");
			ChatRoom[] chatrooms = roomlist.getRoomListArray();
			if(roomname == null)
			{
				roomname = roomlist.getRoomOfChatter(nickname).getName();
			}
			roomname = roomname.trim();

	%>
<DIV align="center">
<CENTER>
	<FORM name="chatrooms" action="<%=request.getContextPath()%>/start.jsp" method="post">
	<TABLE width="80%" border="1" cellspacing="1" cellpadding="1" align="center">
	<TR>
	<TD colspan="2" class="pagetitle">Room List</TD>
	</TR>
	<%
			for (int i = 0; i < chatrooms.length; i++)
			{
				if (chatrooms[i].getName().equalsIgnoreCase("StartUp"))
					continue;
	%>
		<TR>
		<TD width="50%">
		<INPUT type=radio name="rn" value="<%=chatrooms[i].getName()%>"
		<%if (chatrooms[i].getName().equals(roomname))
			out.write("checked");%>><%=chatrooms[i].getName()%></A>
		</TD>
	<%
				if (see == true && chatrooms[i].getName().equals(roomname))
				{
	%>	
			<TD width="50%"><%=chatrooms[i].getDescription()%></TD>
	<%
				}
				else
				{
	%>
			<TD width="50%"><A href="<%=request.getContextPath()%>/listrooms.jsp?rn=<%=chatrooms[i].getName()%>&sd=y">View Description</A></TD>
	<%
				}
	%>
		</TR>
	<%
			}
		}
		catch (Exception e)
		{
			System.out.println("Unable to get handle to Servlet Context: " + e.getMessage());
			e.printStackTrace();
		}
%>
<TR>
	<TD>&nbsp;<A href="<%=request.getContextPath()%>/addRoom.jsp" title="Add new Room">Add new Room</A></TD>
	<TD><INPUT type="Submit" value="Start"></TD>
</TR>
</TABLE>
</FORM>
</CENTER>
</DIV>
<%
	}
%>
<%@ include file="/footer.jsp"%>
<!-- Start footer -->
  <footer style="margin-top:230px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
            <h4  > Copyright @ 2013. <a href="http://www.infotechindia.co.in/" >   Maxgen Technologies Pvt. Ltd</a></h4>
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
<!-- <script type = "text/javascript" >
          function preventBack() { window.history.forward(); }
          setTimeout("preventBack()",0);
          window.onunload = function () { null };
    </script> -->
</BODY>
</HTML>