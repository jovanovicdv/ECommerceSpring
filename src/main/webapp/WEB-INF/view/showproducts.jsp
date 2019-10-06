<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>${category.name}</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Aleksandar Vilus | aleksandar.vilus.it.obuka@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/all.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/mojstil.css" rel="stylesheet">

  <link href="css/mojstil_galerija.css" rel="stylesheet">

</head>

<body>
  <!-- POČETAK OMOTAČA -->
  <div class="container">

    <!-- POČETAK NASLOVA STRANE -->
    <div class="page-header">
      <h1><em>${category.name}</em></h1>

    </div>
    <!-- KRAJ NASLOVA STRANE -->

    <div class="page-header">

      <!-- POČETAK BOKSEVA -->
    




      <div class="row">

        <!-- BOČNI SEGMENT KOJI SLUŽI SAMO ZA ODVAJANJE -->
        <div class="col-xs-2 col-md-1">
        </div>

        <!-- GLAVNI SEGMENT -->
        <div class="col-xs-8 col-md-10">

          <!-- POČETAK DELA SA FOTOGRAFIJAMA PROIZVODA -->
          <div class="okvir0">

            <!-- FOTOGRAFIJA 1 -->
           <%--  <div class="okvir1">
              <div>
                <a href="webshop.html">
                  <img src="${pageContext.request.contextPath}/images/haemmer/DHC-12_Zeno.jpg" alt="DHC-12 Zeno">
                </a>
              </div>
              <p>
                <strong>DHC-12 Zeno</strong>
                <br>
                <small>40,150.00 RSD</small>
              </p>

            </div> --%>

           <c:forEach var="temp" items="${products}">
            <div class="okvir1">
              <div>
                <a href="webshop.html">
                  <img src="${pageContext.request.contextPath}/images/${temp.category.name}/${temp.image}" alt="${temp.name}">
                </a>
              </div>
              <p>
                <strong>${temp.name }</strong>
                <br>
                <small>${temp.price } RSD</small>
              </p>

            </div>
           
           
           </c:forEach>

          </div>
          <!-- KRAJ SA FOTOGRAFIJAMA PROIZVODA -->

        </div>

      </div>


      <!-- KRAJ BOKSEVA -->

    </div>


    <jsp:include page="footer.jsp"></jsp:include>
  </div>
  <!-- KRAJ OMOTAČA -->


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/mojjs.js"></script>

</body>

</html>
