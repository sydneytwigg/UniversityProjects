<?php
if(!isset($_REQUEST['id'])){
    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html lang="en">

	<head>
		<title>Order Status | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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

    <section class=" p-t-40 p-b-40 flex-col-c-m">
 			<!--spacing-->
 		</section>

    <section class="bgwhite p-t-66 p-b-30">
      <div class="container">
        <div class="row">
          <div class="col-md-6 p-b-30 m-l-r-auto">
              <h4 class="m-text26 p-b-36 p-t-15">
              Order Status
              </h4>
              <p class="p-b-28">Your order was successful. Your order ID: <?php echo $_GET['id']; ?>.</p>
              <p class="p-b-28">If you have any queries please email jennitwiggdesigns@gmail.com with your order ID.</p>
            </div>
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
		<script src="js/main.js"></script>

	</body>

</html>
