<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New product</title>
</head>
<body>
<form:form action="/newproduct/newcategory" modelAttribute="newcategory" method="post">
<br><br>New category<br><br><form:input path="name"/><br><br>
<input type="submit" value="InsertCategory">




</form:form>
<br><br><br><br>

<form:form action="/newproduct/newproduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<form:select path="category" >
<c:forEach var="cat" items="${categories}">
	<form:option value="${cat.id}">${cat.name}</form:option>
</c:forEach>
</form:select>
<br><br>
Name<br><form:input path="name"/><br><br>
Price<br><form:input path="price"/><br><br>
<input type="file" name="file"><br><br>
<input type="submit" value="InsertProduct">

</form:form>


</body>


</html>