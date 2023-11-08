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
</style>
</head>
<body>

<form action="studentEkle">

<table>
<tr>
<th>Numara</th>
<th>Firstname</th>
<th>Lastname</th>
<th>Sinif</th>
<th>Sube</th>
</tr>
<tr>
<td><input type="text" name="no"></td>
<td><input type="text" name="firstname"></td>
<td><input type="text" name="lastname"></td>
<td><input type="text" name="sinif"></td>
<td><input type="text" name="sube"></td>
</tr>
</table>
<input type="submit" class="button" value="Student Ekle">
</form>

</body>
</html>