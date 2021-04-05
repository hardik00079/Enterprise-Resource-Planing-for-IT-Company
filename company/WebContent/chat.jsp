<!-- Written by Sukhwinder Singh (ssruprai@hotmail.com -->
<%-- Written by Sukhwinder Singh (ssruprai@hotmail.com --%>

<%@ page session="true" import="sukhwinder.chat.ChatRoomList, sukhwinder.chat.ChatRoom" errorPage="error.jsp"%>
<%
	String nickname = (String)session.getAttribute("nickname");
	if (nickname != null && nickname.length() > 0)
	{
		ChatRoomList roomList = (ChatRoomList) application.getAttribute("chatroomlist");
		ChatRoom room = roomList.getRoomOfChatter(nickname);
		String roomname = room.getName();
%>
	
<HTML>
<HEAD>
<TITLE>S2R Chat - <%=nickname%> (<%=roomname%>) </TITLE>
<META name="Author" value="Sukhwinder Singh (ssruprai@hotmail.com)">

</HEAD>

<FRAMESET rows="80%,20%">
<FRAME SRC="displayMessages.jsp#current" name="MessageWin">
<FRAME SRC="sendMessage.jsp" name="TypeWin">
</FRAMESET>
<NOFRAMES>
<H2>This chat rquires a browser with frames support</h2>
</NOFRAMES>
<script type = "text/javascript" >
          function preventBack() { window.history.forward(); }
          setTimeout("preventBack()",0);
          window.onunload = function () { null };
    </script>
   
</HTML>
<%
}
else
{
	response.sendRedirect("grpchatlogin.jsp");
}
%>