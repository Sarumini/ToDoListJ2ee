<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
form{
text-align:center;
margin:100px;
padding :70px;}</style>
</head>
<body>
<form action="userlogin" method="post">
<label for="username">Email:</label>
<input type="email" name="email" id="useremail"><br><br>
<label for="userpassword">Password:</label>
<input type="text" name="password" id="userpassword"><br><br>
<input type="submit"> 
</form>
</body>
</html>