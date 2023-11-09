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
<!-- type="bean.pojo.Student" verimizin tipini de bu sekilde belirtebiliyoruz -->
<h1>OGRENCI 1 BILGILERI</h1>
<jsp:useBean id="student" type="bean.pojo.Student" class="bean.pojo.Klassenzimmerstudent" scope="request">
<!-- Ogrencimiz yoksa jsp:useBean icinde default set edebiliyoruz -->
<jsp:setProperty property="no" name="student" value="0000"/>
<jsp:setProperty property="firstname" name="student" value="FRISTNAME_YOK"/>
<jsp:setProperty property="lastname" name="student" value="LASTNAME_YOK"/>
<jsp:setProperty property="sinif" name="student" value="0"/>
<jsp:setProperty property="sube" name="student" value='X'/> 
</jsp:useBean>
<!--objenin degerlerini buradan da ayrlayabiliyoruz  -->
<jsp:setProperty property="no" name="student" value="7854"/> 
<jsp:getProperty property="no" name="student"/>
<jsp:getProperty property="firstname" name="student"/>
<jsp:getProperty property="lastname" name="student"/>
<jsp:getProperty property="sinif" name="student"/>
<jsp:getProperty property="sube" name="student"/>
 
 <h2>Ogrenci 2 bilgileri :</h2>
<jsp:useBean id="student2" type="bean.pojo.Student" class="bean.pojo.Klassenzimmerstudent" scope="request">
<jsp:setProperty property="no" name="student2" value="0000"/>
<jsp:setProperty property="firstname" name="student2" value="FRISTNAME_YOK"/>
<jsp:setProperty property="lastname" name="student2" value="LASTNAME_YOK"/>
<jsp:setProperty property="sinif" name="student2" value="0"/>
<jsp:setProperty property="sube" name="student2" value='X'/> 
</jsp:useBean>

<jsp:getProperty property="no" name="student2"/>
<jsp:getProperty property="firstname" name="student2"/>
<jsp:getProperty property="lastname" name="student2"/>
<jsp:getProperty property="sinif" name="student2"/>
<jsp:getProperty property="sube" name="student2"/>
</body>
</html>