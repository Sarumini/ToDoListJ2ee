
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="dao.Dao"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%User u= (User)request.getSession().getAttribute("user"); %>
   <%String name=u.getUsername(); %>
   <%String email=u.getUseremail(); %>
   <h1><%="Welcome "+name %></h1>
   <h1><%="email :"+email %></h1>
   <% String image=new String(Base64.getEncoder().encode(u.getUserimage())) ;%>
   <img alt="" src="data:image/jpeg;base64,<%=image%>" width="50%" heigth="50%"><br>
   <a href="addtask.jsp">AddTask</a>
   
  
</body>
</html>