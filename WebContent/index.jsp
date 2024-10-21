<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.cor{
		color:red;
	}
</style>
<meta charset="UTF-8">
<title><% out.println("Unidade 1"); %></title>
</head>
<body>
	<form action="estudante-response.jsp" method="post">
		Nome: <input type="text" name="nome" class="cor"/>
		<br/><br/>
		RGM: <input type="text" name="rgm"/>
		<br/><br/>
		<input type="submit" value="Enviar"/>
	</form>
</body>
</html>