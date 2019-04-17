<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
<title>Student Registration Form</title>
</head>

<body>
		<%--when we load the form spring MVC will call student.getFirstName and student.getLastName --%>
	<form:form action="processForm" modelAttribute="student">
	
		FirstName <form:input path="firstName" />
		
		<br><br>
		
		LastName <form:input path="lastName" />
		
		<br><br>
		
		Country:
		
		<br><br>
				<%--Spring mvc will call student.getCountry when we submit the form--%>
				
		<form:select path="country">
		
		<form:options items="${student.countryOptions}" />
		<%-- <form:option value="France"  label="France" />
		<form:option value="Germany"  label="Germany" />
		<form:option value="India"  label="India" /> --%>
		
		</form:select>
		
		<br><br>
		
		Favorite Language
		
		<br><br>
		
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		Python <form:radiobutton path="favoriteLanguage" value="Python" />
		Php <form:radiobutton path="favoriteLanguage" value="PHP" />
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
		
		<br><br>
		
		Pick Your Favorite Operating Systems
		
		<br><br>
		
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac OS<form:checkbox path="operatingSystems" value="Mac OS"/>
		MS Window <form:checkbox path="operatingSystems" value="MS Window"/>
		
		<%--when we submit the data spring MVC will call student.setFirstName and student.setLastName --%>
		<input type="submit" value="submit" />
	
	</form:form>

</body>

</html>