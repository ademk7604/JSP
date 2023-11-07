<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>>KORNAN ATTRIBUTES ()OZELLIKLER)</h1>
<%
out.print("<br>PAGECONTEXT: "+pageContext.getAttribute("bilgi"));
out.print("<br>REQUEST: "+request.getAttribute("bilgi"));
out.print("<br>SESSION: "+session.getAttribute("bilgi"));
out.print("<br>APPLICATON: "+application.getAttribute("bilgi"));


%>
</body>
</html>