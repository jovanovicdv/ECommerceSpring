<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="cat" items="${categories}">
	<h2>${cat.name}</h2>
	<a href="/removeproducts/removecategory/${cat.id}/${cat.name}">Delete</a>
	<a href="/removeproducts/${cat.id}">Show products</a>
	<br><br><br><br>
</c:forEach>

<br><br><br><br>


 


           <c:forEach var="temp" items="${products}">
            
              <div>
              
                  <img src="${pageContext.request.contextPath}/images/${temp.category.name}/${temp.image}" alt="${temp.name}">
                
              </div>
              <p>
                <strong>${temp.name }</strong>
                <br>
                <small>${temp.price } RSD</small>
                <br>
                <a href="/removeproducts/removeproduct/${temp.id}/${temp.category.name}/${temp.image}">Delete</a>
              </p>

           
           
           
           </c:forEach>

          

</body>
</html>