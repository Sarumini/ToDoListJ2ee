<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
form{
border:1px solid black;
text-align:center;
margin-top:100px;
margin-left:200px;
margin-right:200px;
padding:20px;
background-color:aqua;
}
</style>
</head>
<body>

     <form action="saveuser" method="post" enctype="multipart/form-data">
     <label for="userid">Id:</label>
     <input type="text" name="id" id="userid"><br><br>
      <label for="username">Name:</label>
     <input type="text" name="name" id="username"><br><br>
      <label for="useremail">Email:</label>
     <input type="email" name="email" id="useremail"><br><br>
      <label  for="usercontact">Contact:</label>
     <input type="tel" name="contact" id="usercontact"><br><br>
      <label for="userpassword">Password:</label>
     <input type="text" name="password" id="userpassword"><br><br>
      <label for="userimage">Image:</label>
     <input type="file" name="image" id="userimage"><br><br>
     <input type="submit">
     
     </form>
</body>
</html>