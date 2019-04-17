<!DOCTYPE html>
<html>

<body>
	
	Hello World of Spring
	
	<br><br>
	
	<%--use ${param.studentName} because studentName is on jsp page --%>
	Student name:${param.studentName}

<br><br>
	<%--use ${} because message in controller class --%>
	The message: ${message}

</body>

</html>