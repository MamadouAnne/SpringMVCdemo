<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
<title>Student Confirmation</title>
</head>

<body>
		<%--spring will call student.getCountry --%>
	The student is confirmed: ${student.firstName} ${student.lastName}
	
	<br><br>
	
		<%--spring will call student.getCountry --%>
	Country: ${student.country}
	
	<br><br>
	
	Favorite Language: ${student.favoriteLanguage}
	
	<br><br>
	
	Operating System
	
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
	
		<li> ${temp} </li>
		</c:forEach>
	</ul>
	
	

</body>

</html>