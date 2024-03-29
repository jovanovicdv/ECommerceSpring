<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Kontakt</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Aleksandar Vilus | aleksandar.vilus.it.obuka@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/all.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/mojstil.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/kontakt.css" rel="stylesheet">


</head>

<body>
  <!-- POČETAK OMOTAČA -->
  <div class="container">

    <!-- POČETAK NASLOVA STRANE -->
    <div class="page-header">
      <h1><em>KONTAKT PRIJAVA</em></h1>

      <!-- KRAJ NASLOVA STRANE -->

      <!-- POČETAK BOKSEVA -->
      <div class="row">
        <div class="col-md-1">
        </div>

        <div class="row">
          <div class="col-md-10">
            <!-- POČETAK LEVOG BOKSA -->
            <div class="col-md-6">
              <div class="jumbotron">

                <h2>Registrujte se</h2>
                <form class="formular" name="formular" method="post" action="">
                  <!--  za online u action dodati kontakt.php -->

                  <label for="ime">Ime</label>
                  <input type="text" id="ime" name="ime" placeholder="Unesite vaše ime">

                  <label for="prezime">Prezime</label>
                  <input type="text" id="prezime" name="prezime" placeholder="Unesite vaše prezime">

                  <label for="email">E-mail adresa</label>
                  <input type="text" id="email" name="email" placeholder="Unesite vašu e-mail adresu">

                  <label for="telefon">Telefon</label>
                  <input type="text" id="telefon" name="telefon" placeholder="Unesite vaš broj telefona">

                  

                  <label for="password">Password</label>
                  <input type="text" id="password" name="password" placeholder="Unesite password">


                  <label for="password1">Potvrda passworda</label>
                  <input type="text" id="password1" name="password1" placeholder="Potvrdite password">


                  <input type="button" value="POŠALJI" onclick="proveri()">
                </form>


              </div>

            </div>
            <!-- KRAJ LEVOG BOKSA -->


            <!-- POČETAK DESNOG BOKSA -->
            <div class="col-md-6">
              <div class="jumbotron">


                <h2>Prijavite se</h2>
                <form class="formular" name="formular" method="post" action="">

                  <label for="email2">E-mail adresa</label>
                  <input type="text" id="email2" name="email2" placeholder="Unesite vašu e-mail adresu">




                  <label for="password2">Password</label>
                  <input type="text" id="password2" name="password2" placeholder="Unesite password">


                  <input type="button" value="LOGIN" onclick="proveri2()">
                </form>

              </div>
            </div>
            <!-- KRAJ DESNOG BOKSA -->
          </div>
        </div>
      </div>
      <!-- KRAJ BOKSEVA -->
    </div>


    <!-- POČETAK FOOTER-A -->
    <footer>
      <div class="row">

        <div class="col-md-12">

          <ul id="SoNet" class="list-inline">
            <li><a href="http://facebook.com/"><i class="fab fa-facebook-f fa-3x"></i></a></li>
            <li><a href="http://instagram.com/"><i class="fab fa-instagram fa-3x"></i></a></li>
            <li><a href="http://twitter.com/"><i class="fab fa-twitter fa-3x"></i></a></li>
          </ul>
        </div>
      </div>
      <!-- kraj gornjeg dela footer-a -->
      <!-- donji deo footer-a -->
      <div class="panel-footer">
        <div class="row">

          <div class="col-md-12">
            <p class="text-right">Copyright &copy; 2019 Aleksandar Vilus &#64; CODE</p>
          </div>
        </div>
      </div>
      <!-- kraj donjeg dela footer-a -->
    </footer>
    <!-- KRAJ FOOTER-A -->
  </div>
  <!-- KRAJ OMOTAČA -->


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/mojjs.js"></script>
  <script src="${pageContext.request.contextPath}/js/kontakt.js"></script>

</body>

</html>