<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Hinzufugen</title>
<style>
.button{
	background-color:green;
	border:none;
	color:white;
	padding:15px 30px;
	text-align:center;
	text-decoration:none;
	font-size:16px;
	transition: background-color 1s ease;
}
.button:hover{
	background-color:grey;
	cursor:pointer;
}
.table{
	border-collapse:collapse;
	width:100%;
}
.td,.th{
	border:1px solid black;
	text-align:letf;
	padding:10px;
}
</style>
</head>
<body>

<form action="studentEkle" class="table">

<table>
<tr class="tr">
<th class="th">Numara</th>
<th class="th">Firstname</th>
<th class="th">Lastname</th>
<th class="th">Sinif</th>
<th class="th">Sube</th>
</tr>
<tr class="tr">
<td class="td"><input type="text" name="no"></td>
<td class="td"><input type="text" name="firstname"></td>
<td class="td"><input type="text" name="lastname"></td>
<td class="td"><input type="text" name="sinif"></td>
<td class="td"><input type="text" name="sube"></td>
</tr>
</table>
<input type="submit" class="button" value="Student Ekle">
</form>

<jsp:useBean id="eklenenStudent" type="bean.pojo.Student" class="bean.pojo.Klassenzimmerstudent" scope="request">
<jsp:setProperty property="no" name="eklenenStudent" value="NO_YOK"/>
<jsp:setProperty property="firstname" name="eklenenStudent" value="FIRSTNAME_YOK"/>
<jsp:setProperty property="lastname" name="eklenenStudent" value="LASTNAME_YOK"/>
<jsp:setProperty property="sinif" name="eklenenStudent" value="0"/>
<jsp:setProperty property="sube" name="eklenenStudent" value="X"/>

</jsp:useBean>
 
<table class="table">
<tr class="tr">
<th class="th">Numara</th>
<th class="th">Firstname / Lastname</th>
<th class="th">Sinif/Sube</th>
</tr>
<tr class="tr">
<td class="td"><jsp:getProperty property="no" name="eklenenStudent"/></td>
<td class="td">
<jsp:getProperty property="firstname" name="eklenenStudent"/>/
<jsp:getProperty property="lastname" name="eklenenStudent"/>
</td>
<td class="td">
<jsp:getProperty property="sinif" name="eklenenStudent"/>/
<jsp:getProperty property="sube" name="eklenenStudent"/>
</td>
</tr>
</table>

</body>
</html>