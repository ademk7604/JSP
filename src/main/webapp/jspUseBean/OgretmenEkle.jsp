<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ogretmen Ekle</title>
<style>
.button {
	background-color: green;
	border: none;
	color: white;
	padding: 15px 30px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	transition: background-color 1s ease;
}

.button:hover {
	background-color: grey;
	cursor: pointer;
}

.table {
	border-collapse: collapse;
	width: 100%;
}

.td, .th {
	border: 1px solid black;
	text-align: letf;
	padding: 10px;
}
</style>

</head>
<body>
	<form action="OgretmenEkle.jsp" method="post">
		<table class="table">
			<tr class="tr">
				<th class="th">Numara</th>
				<th class="th">Firstname</th>
				<th class="th">Lastname</th>
				<th class="th">Brans</th>
			</tr>
			<tr class="tr">
				<td class="td"><input type="text" name="no" value="1234"></td>
				<td class="td"><input type="text" name="firstname" value="Adem"></td>
				<td class="td"><input type="text" name="lastname" value="Kok"></td>
				<td class="td"><input type="text" name="brans"
					value="Informatiker"></td>
			</tr>

		</table>
		<input type="submit" class="button" value="Ogretmen Ekle">
	</form>
<%-- 
<jsp:useBean id="ogretmen" class="bean.pojo.Ogretmen">
<jsp:setProperty property="no" name="ogretmen" value='<%= request.getParameter("no") !="" ? Integer.parseInt(request.getParameter("no")) : 0 %>'/>
<jsp:setProperty property="firstname" name="ogretmen" value='<%= request.getParameter("firstname") !="" ? request.getParameter("firstname") : "FIRSTNAME_YOK" %>'/>
<jsp:setProperty property="lastname" name="ogretmen" value='<%= request.getParameter("lastname") !="" ? request.getParameter("lastname") : "LASTNAME_YOK" %>'/>
<jsp:setProperty property="brans" name="ogretmen" value='<%= request.getParameter("brans") !="" ? request.getParameter("brans") : "BRANSI_YOK" %>'/>
</jsp:useBean>
--%>

<%-- param kullanarak degerlerimizi alalim --%>
<%-- 
<jsp:useBean id="ogretmen" class="bean.pojo.Ogretmen">
<jsp:setProperty property="no" name="ogretmen" param="no"/>
<jsp:setProperty property="firstname" name="ogretmen" param="firstname"/>
<jsp:setProperty property="lastname" name="ogretmen" param="lastname"/>
<jsp:setProperty property="brans" name="ogretmen" param="brans"/>
</jsp:useBean>
--%>
<%-- * ile butun property leri esliyebiliyoruz --%>
<jsp:useBean id="ogretmen" class="bean.pojo.Ogretmen">
<jsp:setProperty property="*" name="ogretmen"/>
</jsp:useBean>


<table class="table">
	<tr class="tr">
		<th class="th">Numara</th>
		<th class="th">Firstname Lastname</th>
		<th class="th">Brans</th>
	</tr>
	<tr class="tr">
		<td class="td"><jsp:getProperty property="no" name="ogretmen"/></td>
		<td class="td">
			<jsp:getProperty property="firstname" name="ogretmen"/>
			<jsp:getProperty property="lastname" name="ogretmen"/>
		</td>
		<td class="td"><jsp:getProperty property="brans" name="ogretmen"/></td>
	</tr>

</table>


</body>
</html>