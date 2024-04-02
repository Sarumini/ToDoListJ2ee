<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <form action="addtaskser" method="post">
     <label for="task_id">TaskId:</label>
     <input type="text" name="taskid" id="task_id"><br><br>
     <label for="task_title">TaskTitle:</label>
     <input type="text" name="tasktitle" id="task_title"><br><br>
     <label for="task_description">TaskDescription:</label>
     <input type="text" name="taskdescription" id="task_description"><br><br>
     <label>TaskPriority:</label>
     <input type="radio" id="task_priority" name="taskpriority">Low
     <input type="radio" id="task_priority2" name="taskpriority">Medium
     <input type="radio" id="task_priority3" name="taskpriority">High
     <br><br>
     <label for="taskduedate">TaskDueDate:</label>
     <input type="date" id="task_duedate" name="taskduedate"><br><br>
     <input type="submit">
     </form>
</body>
</html>