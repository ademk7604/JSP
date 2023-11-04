<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Anasayfa</title>
</head>
<body>



<!-- burdaki index.jsp html dostamiz -> java ->class -> servlet object e donusuyor  -->
<!--<% %> java kaynak kodlarini buraya yaziyoruz  -->
<%-- java kolarini bu sekilde yorum haline geitriyoruz 
 scriplet  			<% java kaynak kodlari %>
 expression 		<%= statement %> dogrudan bir duurumun icine yazilmasini sagliyor
 declaration 		<%! degisken veya method tanimlamasini gerceklestiriyoruz %>
 page directory		<
--%>

<h1 style="color:red;"> JAVA Server Pages!</h1>
<%
final float PI = 3.14159f;
out.println("PI Sayisi: "+Math.PI);
out.print("<br>");
out.println("PI Sayisi: "+PI);
%>
<br>
<%
int sayi1 = 50, sayi2 = 30;
int sonuc =  sayi1+sayi2;
out.println("Sayi1: "+sayi1+" Sayi2: "+sayi2+"<br>");
out.println(String.format("Toplam: %d<br>", sayi1+sayi2));
out.println(String.format("Toplam: %f<br>", topla((double)sayi1, sayi2)));
out.println("Carpma: "+(sayi1*sayi2)+"<br>");
out.println("Carpma: "+carpma((double)sayi1, sayi2)+"<br>");
out.println("Bolme: "+((float)sayi1/sayi2)+"<br>");
out.println("Bolme: "+bolme((double)sayi1, sayi2)+"<br>");
out.println("cikarma: "+cikarma((double)sayi1, sayi2)+"<br>");

%>
<!-- pek  makul degil burda yazmak sagida iki tane farkli ornek var -->
Adem Kok <br> 

<%!
	public String isim = "Adem Kok";
	public double topla(double s1, double s2){
		return s1+s2;
	}
	public double carpma(double s1, double s2){
		return s1*s2;
	}
	public double cikarma(double s1, double s2){
		return s1-s2;
	}
	public double bolme(double s1, double s2){
		return s1/s2;
	}
%>
<%
out.print(isim+"<br>");

%>
<%=
	isim+"<br>"
	
%>

<%
	for(int i=1; i<=10; i++){
		if(i%2==1){
			out.print("<span style='color:red'>"+i+"</span>");
		}else{
			out.print("<span style='color:yellow'>"+i+"</span>");
		}
		
	}
%>
<br>
<%

	Date tarih = new Date();
	SimpleDateFormat tarihFormati = new SimpleDateFormat("dd.MM.yyyy");
	out.print("tarih: "+ tarihFormati.format(tarih));
%>
<jsp:include page="partialViews/bilgi.html"></jsp:include>



</body>
</html>