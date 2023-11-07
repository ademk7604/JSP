<%@ page import="bean.pojo.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students</title>
</head>
<body>
Suan da Ogrenciler sayfasindayiz!!
<!-- <%= "<br>"+request.getAttribute("info") %>  -->
<br>

<% Student student1 = (Student)request.getAttribute("student"); %>
<%= "Okul Numarasi: "+student1.getNo()+"<br>" %>
<%= "Adi Soyadi: "+student1.getFirstname()+" "+student1.getLastname()+"<br>" %>
<%= "Sinif/Sube: "+student1.getSinif()+"/"+student1.getSube() %>

<!-- simdi bunlari useBean ile okuyalim -->
<!--  student i extends almadigi icin class olarak belirtebilirim -->
<jsp:useBean id="student" class="bean.pojo.Student" scope="request"></jsp:useBean>
<jsp:getProperty property="no" name="student"/>
<jsp:getProperty property="firstname" name="student"/>
<jsp:getProperty property="lastname" name="student"/>
<jsp:getProperty property="sinif" name="student"/>
<jsp:getProperty property="sube" name="student"/>
 

</body>
</html>