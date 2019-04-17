<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
<title>Student Registration Form</title>
	
		<style>
		.error {color:red}
		</style>
</head>

<body>

<i>Fill out the form. Asterisk (*) means required.</i>i>

<br><br>

	<form:form action="processForm" modelAttribute="customer">
	
		First Name: <form:input path="firstName" />
		
		<br><br>
		
		Last Name (*): <form:input path="lastName" />
		<form:errors path="lastName" cssClass="error"/>
		
		<br><br>
		
		<input type="submit" value="submit" />
	
	</form:form>

</body>

</html>