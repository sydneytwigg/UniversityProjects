<?php
  //connect to database
  require_once "database.php";
 ?>

<!DOCTYPE html>
<html lang="en">

  <head>
    <title>Services | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/jt-logo.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
    <link href='http://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
    <!--===============================================================================================-->
  </head>

  <body class="animsition">

    <!-- Header -->
    <!--import header from navbar.php-->
    <?php include_once 'navbar.php'?>
    <!--END HEADER-->

    <!-- Title Page -->
    <section class="bg-title-page p-t-120 p-b-50 flex-col-c-m" style="background-image: url(images/banner4.png);">
      <h2 class="l-text3 t-center">
Services		</h2>
    </section>

    <!-- content page -->
    <section class="bgwhite p-t-66 p-b-38">
      <div class="container">
        <h4 class="m-text26 p-b-16 p-t-15">
        Interior Decorating Packages
        </h4>
        <p class="p-b-10">Jenni Twigg Designs offers high quality affordable interior decorating services. We cover the whole of the Cape Town Area.</p>
        <p class="p-b-28"><i>Please note the pricing does not include furnishings.</i></p>



        <!--https://getbootstrap.com/docs/4.0/components/card/
      https://www.phpzag.com/create-bootstrap-cards-with-php-and-mysql/-->
        <div class="card-deck">
          <?php
          //

            $sql = "SELECT packageName, included, price, numberRooms,description FROM services";
            $resultset = mysqli_query($conn, $sql) or die("Error:".mysqli_error($conn));
            while( $record = mysqli_fetch_assoc($resultset)){
              //variables
              $packageName = $record['packageName'];
              $description = $record['description'];
              $included = $record['included'];
              $price = $record['price'];
              $numberRooms = $record['numberRooms'];
           ?>
          <!--card 1-->
          <div class="card">
            <img class="card-img-top" src="images/card-banner-1.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title"><?php echo $packageName?></h5>
              <p class="card-text"><?php echo $description ?></p>
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Package Features:<br>
                <?php
                //https://stackoverflow.com/questions/1125730/how-can-i-split-a-comma-delimited-string-into-an-array-in-php
                  $splitIncluded = explode(',', $included);
                  foreach ($splitIncluded as $split){
                    echo '- '. $split .'<br>';
                  }
                ?>
              </li>
              <li class="list-group-item">Number of Rooms: <?php echo $numberRooms ?></li>
              <li class="list-group-item">Price: R<?php echo $price ?> </li>
            </ul>
            <div class="card-body">
              <div class="w-size25">
                <!-- Button -->
                <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                  <a href="cartAction.php?action=addToCart&id=<?php echo $id ?>">
                Add to Cart</a>
              </button>
              </div>
            </div>
          </div>
        <?php }   ?>

        </div>

      </div>
    </section>


    <!-- Footer -->
    <!--import from footer.php-->
    <?php include_once 'footer.php'?>
    <!--END FOOTER-->



    <!-- Back to top -->
    <div class="btn-back-to-top bg0-hov" id="myBtn">
      <span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
    </div>

    <!-- Container Selection -->
    <div id="dropDownSelect1"></div>
    <div id="dropDownSelect2"></div>



    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
    <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAy3VxQGYHpVgSEUjEnDb10PcLbiy9h7mg&callback=initMap"></script>
    <script src="js/map-custom.js "></script>
    <!--===============================================================================================-->
    <script src="js/main.js "></script>

  </body>

</html>
