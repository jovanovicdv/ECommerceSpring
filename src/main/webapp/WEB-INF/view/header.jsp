<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <!-- POČETAK HEDER-A -->
    <div class="page-header">
      <img src="${pageContext.request.contextPath}/images/primetime/primetime-head-inv.png">
    </div>

    <!-- KRAJ HEDER-A -->

    <!-- OVO JE POCETAK NAVIGACIJE -->
    <nav class="navbar navbar-default" data-spy="affix">
      <!--afix FIKSIRANJE NAVIGACIJE-->
      <h2>Glavna navigacija</h2>
      <div class="container-fluid">

        <!-- POČETAK DELA KOJI KREIRA BURGER -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">
            PRIME
          </a>
        </div>
        <!-- KRAJ DELA KOJI KREIRA BURGER -->

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">

            <!-- POČETAK PADAJUĆEG MENIJA -->
            <li class="dropdown">
              <a href="#s" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">BRENDOVI <span class="caret"></span></a>
              <ul class="dropdown-menu">
              	<c:forEach var="temp" items="${categories}">
                <li><a href="/showproducts/${temp.id}" >${temp.name}</a></li>
                </c:forEach>

              </ul>
            </li>
            <!-- KRAJ PADAJUĆEG MENIJA -->

            <li><a href="/webshop">PRODAVNICA</a></li>
            <li><a href="/onama">O NAMA / KONTAKT</a></li>
            <li><a href="/kontakt">LOGIN</a></li>
            <li><a href="/newproduct">Insert new product</a></li>
            <li><a href="/removeproducts">Remove product</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->

</body>
</html>