<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmação do Estudante</title>
</head>
<body>
	Aluno: <%=request.getParameter("nome") %>
	<br/>
	RGM: <%=request.getParameter("rgm") %>
	<br/>
	<p align="center">
		Última atualização: 
		<%
			Calendar calendar = new GregorianCalendar();
			
			String am_pm;
			int hour = calendar.get(Calendar.HOUR);
			int minute = calendar.get(Calendar.MINUTE);
			int second = calendar.get(Calendar.SECOND);
			
			if(calendar.get(Calendar.AM_PM)==0){
				am_pm = "AM";
			}else{
				am_pm = "PM";
			}
			
			String CT = hour+":"+minute+":"+second+ " " + am_pm;
			
			out.print(CT);
		%>
	</p>
</body>
</html>