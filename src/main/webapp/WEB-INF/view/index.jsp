<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Home</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Aleksandar Vilus | aleksandar.vilus.it.obuka@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/all.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/mojstil.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/mojstil_index.css" rel="stylesheet">


</head>

<body onload="citati()">
  <!-- POČETAK OMOTAČA -->
  <div class="container">


    <!-- POČETAK NASLOVA STRANE -->
    <div id="GlTxt" class="page-header">
      <h1><em>Vreme je za Primetime!!!</em></h1>
      <p>Dobrodošli u PRIMETIME, on line prezentaciju i prodavnicu ekskluzivnog regionalnog distributera poznatih
        svetskih brendova satova.</p>

      <p>U PRIMETIME-u ćete pronaći sve potrebne informacije i novosti o brendovima koje zastupamo: Haemmer, Welder,
        U-Boat.</p>

      <p>PRIMETIME online prodavnica nudi najveći izbor modela ovsih brendova uz dodatne pogodnosti, poklone i akcije.
      </p>

      <p>Za sva pitanja, komentare i sugestije stojimo vam na raspolaganju. Možete nas kontaktirati putem maila,
        facebook-a, twiter-a ili telefonom.</p>
    </div>
    <!-- KRAJ NASLOVA STRANE -->


    <!-- POČETAK KARUSELA -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

      <!-- MEHURIĆI -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- FOTKE -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <a href="haemmer.html">
            <img src="${pageContext.request.contextPath}/images/primetime/slide-haemmer.jpg" alt="Welder by Italo Fontana">
          </a>
          <div class="carousel-caption">
          </div>
        </div>
        <div class="item">
          <a href="welder.html">
            <img src="${pageContext.request.contextPath}/images/primetime/slide-welder.jpg" alt="Haemmer - Germany">
          </a>
          <div class="carousel-caption">
          </div>
        </div>
        <div class="item">
          <a href="uboat.html">
            <img src="${pageContext.request.contextPath}/images/primetime/slide-uboat.jpg" alt="U-Boat by Italo Fontana">
          </a>
          <div class="carousel-caption">
          </div>
        </div>
      </div>

      <!-- KONTROLE KARUSELA -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- KRAJ KARUSELA -->

    <div class="page-header">
      <!-- POČETAK BOKSEVA -->
      <div class="row">
        <!-- POČETAK LEVOG BOKSA -->
        <div class="col-md-8">
          <div class="jumbotron">
            <h2>Aktueno</h2>

            <p>Promotivna prodaja Haemmer satova.
              Ovog meseca cene snižene 40%. Prijavite se da bi ste dobili detaljnije informacije.
            </p>
            <br>
            <p><a class="btn btn-primary btn-lg" href="kontakt.html" role="button">Detaljnjije  <i
                  class="fas fa-arrow-alt-circle-right"></i></a></p>
          </div>

        </div>
        <!-- KRAJ LEVOG BOKSA -->

        <!-- POČETAK DESNOG BOKSA -->
        <div class="col-md-4">
          <div class="jumbotron">

            <h2>Rekli su</h2>
            <blockquote>
              <p id="citat"></p>
              <small><cite id="author"></cite></small>
            </blockquote>

          </div>
        </div>
        <!-- KRAJ DESNOG BOKSA -->
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