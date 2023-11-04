<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
	public void jspInit(){
		ServletConfig sC = getServletConfig();
		String bilgi = sC.getInitParameter("bilgi");
		int sayi1 = Integer.parseInt(sC.getInitParameter("sayi1"));
		int sayi2 = Integer.parseInt(sC.getInitParameter("sayi2"));
		System.out.println("Sayi1: "+sayi1+" Sayi2: "+sayi2);
}
	public void jspDestroy(){
		System.out.println("hesapmakinesi.jsp closed");
	}
%>

<%
	try{
		
	}catch(Exception e){
		
	}

	int sayi1 = Integer.parseInt(request.getParameter("sayi1"));
	int sayi2 = Integer.parseInt(request.getParameter("sayi2"));
	
	ServletConfig sC = getServletConfig();
	String bilgi = sC.getInitParameter("bilgi");
	int sayi3 = Integer.parseInt(sC.getInitParameter("sayi1"));
	int sayi4 = Integer.parseInt(sC.getInitParameter("sayi2"));


%>

Sayi 1: <%= sayi1 %>
<br>
Sayi 2: <%= sayi2 %>
<br>
<p>Init Parametreleri<p/>
Sayi 3: <%= sayi3 %>
<br>
Sayi 4: <%= sayi4 %>

</body>
</html>