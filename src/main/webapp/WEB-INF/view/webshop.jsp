<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Webshop</title>
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
      <h1><em>WEBSHOP</em></h1>
    </div>
    <!-- KRAJ NASLOVA STRANE -->
    <form class="prodavnica" id="proizvodi">
      <div class="page-header">

        <!-- POČETAK BOKSEVA -->
        <div class="row">
          <div class="col-xs-3 col-sm-3 col-md-0">

          </div>
          <div class="col-xs-6 col-sm-6 col-md-12">
            <img id="HaGe" src="${pageContext.request.contextPath}/images/primetime/HAEMER-icon-large1.jpg" class="img-responsive" alt="Haemmer Germany">

          </div>
        </div>

        <div class="row">

          <!-- BOČNI SEGMENT KOJI SLUŽI SAMO ZA ODVAJANJE -->
          <div class="col-xs-2 col-md-1">
          </div>

          <!-- GLAVNI SEGMENT -->
          <div class="col-xs-8 col-md-10">

            <!-- POČETAK DELA SA FOTOGRAFIJAMA PROIZVODA -->
            <div class="okvir0">

              <!-- FOTOGRAFIJA 1 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>DHC-12 Zeno</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/haemmer/DHC-12_Zeno.jpg" alt="DHC-12 Zeno">
                  </a>
                </div>
                <p>
                  <strong>40,150.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="jedan"></label>
                  <input type="text" id="jedan" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 2 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>DHC-13 Moon</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/haemmer/DHC-13_Moon.jpg" alt="DHC-13 Moon">
                  </a>
                </div>
                <p>
                  <strong>40,150.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="dva"></label>
                  <input type="text" id="dva" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 3 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>HC-07 Invader</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/haemmer/HC-07_Invader.jpg" alt="HC-07 Invader">
                  </a>
                </div>
                <p>
                  <strong>42,350.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="tri"></label>
                  <input type="text" id="tri" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 4 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>HC-16 Charon</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/haemmer/HC-16_Charon.jpg" alt="HC-16 Charon">
                  </a>
                </div>
                <p>
                  <strong>42,350.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="cetiri"></label>
                  <input type="text" id="cetiri" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 5 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>HQ-02 Dublin</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/haemmer/HQ-02_Dublin.jpg" alt="HQ-02 Dublin">
                  </a>
                </div>
                <p>
                  <strong>25,300.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="pet"></label>
                  <input type="text" id="pet" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 6 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>HQ-10 Brussel</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/haemmer/HQ-10_Brussel.jpg" alt="HQ-10 Brussel">
                  </a>
                </div>
                <p>
                  <strong>25,300.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="sest"></label>
                  <input type="text" id="sest" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

            </div>
            <!-- KRAJ SA FOTOGRAFIJAMA PROIZVODA -->

          </div>

        </div>
        <!-- KRAJ BOKSEVA -->

      </div>
      <div class="page-header">

        <!-- POČETAK BOKSEVA -->
        <div class="row">
          <div class="col-xs-3 col-sm-3 col-md-0">

          </div>
          <div class="col-xs-6 col-sm-6 col-md-12">
            <img id="HaGe" src="${pageContext.request.contextPath}/images/primetime/WELDER-icon-large1.jpg" class="img-responsive" alt="Welder">

          </div>
        </div>

        <div class="row">

          <!-- BOČNI SEGMENT KOJI SLUŽI SAMO ZA ODVAJANJE -->
          <div class="col-xs-2 col-md-1">
          </div>

          <!-- GLAVNI SEGMENT -->
          <div class="col-xs-8 col-md-10">

            <!-- POČETAK DELA SA FOTOGRAFIJAMA PROIZVODA -->
            <div class="okvir0">

              <!-- FOTOGRAFIJA 7 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>K24 3300</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/welder/K24_3300.jpg" alt="DHC-12 Zeno">
                  </a>
                </div>
                <p>
                  <strong>71,500.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="sedam"></label>
                  <input type="text" id="sedam" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 8 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>K24 3301</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/welder/K24_3301.jpg" alt="DHC-13 Moon">
                  </a>
                </div>
                <p>
                  <strong>71,500.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="osam"></label>
                  <input type="text" id="osam" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 9 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>K25B 4603</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/welder/K25B_4603.jpg" alt="HC-07 Invader">
                  </a>
                </div>
                <p>
                  <strong>64,900.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="devet"></label>
                  <input type="text" id="devet" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 10 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>K25B 4704</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/welder/K25B_4704.jpg" alt="HC-16 Charon">
                  </a>
                </div>
                <p>
                  <strong>70,400.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="deset"></label>
                  <input type="text" id="deset" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 11 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>K33 9301</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/welder/K33_9301.jpg" alt="HQ-02 Dublin">
                  </a>
                </div>
                <p>
                  <strong>70,400.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="jedanaest"></label>
                  <input type="text" id="jedanaest" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

              <!-- FOTOGRAFIJA 12 -->
              <div class="okvir1">
                <div>
                  <p>
                    <h3>
                      <strong>K33 9302</strong>
                    </h3>
                  </p>
                  <a>
                    <img src="${pageContext.request.contextPath}/images/welder/K33_9302.jpg" alt="HQ-10 Brussel">
                  </a>
                </div>
                <p>
                  <strong>70,400.00 RSD</strong>
                </p>
                <p>
                  Naručujem <label for="dvanaest"></label>
                  <input type="text" id="dvanaest" name="" size="1" placeholder="0"> komada
                </p>
                <p>
                  <a class="btn btn-primary btn-sm" href="#krajodabira" role="button">
                    Završi kupovinu
                    <i class="fas fa-arrow-alt-circle-down"></i>
                  </a>
                </p>
              </div>

            </div>
            <!-- KRAJ SA FOTOGRAFIJAMA PROIZVODA -->
          </div>

        </div>

        <!-- KRAJ BOKSEVA -->

      </div>

      <div class="page-header">

        <!-- POČETAK BOKSEVA -->
        <div class="row">
          <div class="col-xs-3 col-sm-3 col-md-0">

          </div>
          <div class="col-xs-6 col-sm-6 col-md-12">

            <div class="row">
              <div class="col-md-6">
                <img id="HaGe" src="${pageContext.request.contextPath}/images/primetime/UBoat-icon-large1.jpg" class="img-responsive"
                  alt="Haemmer Germany">
              </div>
              <div class="col-md-6">
                <p>
                  <strong><em>Satovi marke U-Boat se mogu naručiti jedino putem direktnog kontakta.</em></strong>
                </p>

              </div>
            </div>

          </div>
        </div>

      </div>


      <div class="page-header">

        <div id="krajodabira">
          <div class="row">
            <div class="col-md-12">
              <h2>
                Detalji narudzbenice
              </h2>

              <div class="grupaizracunavanje">
                <p>
                  <label for="btn-izracunaj">

                  </label>
                  <input type="submit" value="Ukupan iznos" id="btn-izracunaj" name="">
                  <input type="text" id="txt-izracunaj" placeholder="0.00 RSD" name="">
                </p>
                <div id="rezultati">
                </div>
                <br>
                <div id="rezultati1">
                </div>
                <p>
                  <a class="btn btn-primary btn-lg" href="kontakt.html" role="button">Prijavite se</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

    </form>
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
  <script src="${pageContext.request.contextPath}/js/korpa.js"></script>


</body>

</html>