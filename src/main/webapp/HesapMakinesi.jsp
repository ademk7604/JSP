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

	
	
	ServletConfig sC = getServletConfig();
	String bilgi = sC.getInitParameter("bilgi");
	int sayi3 = Integer.parseInt(sC.getInitParameter("sayi1"));
	int sayi4 = Integer.parseInt(sC.getInitParameter("sayi2"));


%>


<br>
<p>Init Parametreleri<p/>
Sayi 3: <%= sayi3 %>
<br>
Sayi 4: <%= sayi4 %>
<br>
<%
	int s1 = 30, s2 = 50;
	bilgi = "s1 ile s2 toplami: "+(s1+s2);
	Double kilo = 95.5;
	Integer boy = 181;
	
	pageContext.setAttribute("sayi1", s1);
	pageContext.setAttribute("sayi2", s2);
	pageContext.setAttribute("boy", boy);
	pageContext.setAttribute("bilgi", bilgi);
	out.print("sayi1: ");
	
	out.print(pageContext.getAttribute("sayi1"));
	out.print("sayi1: ");
	out.print(pageContext.getAttribute("sayi2"));
	//SESSION_SCOPE oturuma, APPLICATION_SCOPE uygulama s., 
	//REQUEST_SCOPE talebe cevap s., default PAGE_SCOPE dur. yazmazsan default oalrak kabul eder boy,
	pageContext.setAttribute("bilgi", bilgi, pageContext.SESSION_SCOPE);
	pageContext.setAttribute("kilo", kilo, pageContext.APPLICATION_SCOPE);
	
	
	bilgi += " VIA SESSION OBJECT";
	session.setAttribute("bilgi2", bilgi);
	application.setAttribute("kilo2", kilo);
	
	out.println("<br>PageContext sayi1: "+pageContext.getAttribute("sayi1"));
	out.println("<br>PageContext sayi2: "+pageContext.getAttribute("sayi2"));
	out.println("<br>PageContext boy: "+pageContext.getAttribute("boy"));
	out.println("<br>PageContext bilgi: "+pageContext.getAttribute("bilgi"));
	
	out.println("<br>Session Scope  bilgi: "+pageContext.getAttribute("bilgi", pageContext.SESSION_SCOPE));
	out.println("<br>Session Scope  bilgi: "+session.getAttribute("bilgi"));
	out.println("<br>Session Scope  bilgi2: "+pageContext.getAttribute("bilgi2", pageContext.SESSION_SCOPE));
	out.println("<br>Session Scope  bilgi2: "+session.getAttribute("bilgi2"));

%>
</body>
</html>