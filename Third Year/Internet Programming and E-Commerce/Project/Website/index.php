<?php
  //connect to database
  require_once "database.php";
 ?>

 <!DOCTYPE html>
 <html lang="en">

 	<head>
 		<title>Home | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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

 		<!-- Slide1 -->
 		<section class="slide1">
 			<div class="wrap-slick1">
 				<div class="slick1">
 					<div class="item-slick1 item1-slick1" style="background-image: url(images/HomeBanner.jpg);">
 						<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
 							<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="fadeInDown">
 							2018 Collection
 						</span>

 							<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="fadeInDown">
 							New arrivals
 						</h2>

 							<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="fadeInDown">
 								<!-- Button -->
 								<a href="product.php" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
 								Shop Now
 							</a>
 							</div>
 						</div>
 					</div>
 				</div>
 			</div>
 		</section>

 		<!-- Banner -->
 		<section class="banner bgwhite p-t-40 p-b-40">
 			<div class="container">
 				<div class="row">
 					<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
 						<!-- block1 -->
 						<div class="block1 hov-img-zoom pos-relative m-b-30">
 							<img src="images/Clothing.jpg" alt="IMG-BENNER">

 							<div class="block1-wrapbtn w-size2">
 								<!-- Button -->
 								<a href="product-clothing.php" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
 								Clothing
 							</a>
 							</div>
 						</div>

 						<!-- block1 -->
 						<div class="block1 hov-img-zoom pos-relative m-b-30">
 							<img src="images/jewellery1.jpg" alt="IMG-BENNER">

 							<div class="block1-wrapbtn w-size2">
 								<!-- Button -->
 								<a href="product-jewellery.php" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
 								Jewellery
 							</a>
 							</div>
 						</div>
 					</div>

 					<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
 						<!-- block1 -->
 						<div class="block1 hov-img-zoom pos-relative m-b-30">
 							<img src="images/ceramics.jpg" alt="IMG-BENNER">

 							<div class="block1-wrapbtn w-size2">
 								<!-- Button -->
 								<a href="product-ceramics.php" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
 								Ceramics
 							</a>
 							</div>
 						</div>

 						<!-- block1 -->
 						<div class="block1 hov-img-zoom pos-relative m-b-30">
 							<img src="images/homeware.jpg" alt="IMG-BENNER">

 							<div class="block1-wrapbtn w-size2">
 								<!-- Button -->
 								<a href="product-homeware.php" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
 								Homeware
 							</a>
 							</div>
 						</div>
 					</div>

 					<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
 						<!-- block1 -->
 						<div class="block1 hov-img-zoom pos-relative m-b-30">
 							<img src="images/interior.jpg" alt="IMG-BENNER">

 							<div class="block1-wrapbtn w-size2">
 								<!-- Button -->
 								<a href="services.php" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
 								Interiors
 							</a>
 							</div>
 						</div>

 						<!-- block2 -->
 						<div class="block2 wrap-pic-w pos-relative m-b-30">
 							<img src="images/icons/bg-01.jpg" alt="IMG">

 							<div class="block2-content sizefull ab-t-l flex-col-c-m">
 								<h4 class="m-text4 t-center w-size3 p-b-8">
 								Custom Order
 							</h4>

 								<p class="t-center w-size4">
 									Can't find what you're looking for? Order your own personalised item.
 								</p>

 								<div class="w-size2 p-t-25">
 									<!-- Button -->
 									<a href="custom-order.php" class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
 									Order Now
 								</a>
 								</div>
 							</div>
 						</div>
 					</div>
 				</div>
 			</div>
 		</section>

    <section class="newproduct bgwhite p-t-45 p-b-105">
      <div class="container">
        <div class="sec-title p-b-60">
          <h3 class="m-text5 t-center">
          Featured Products
        </h3>
        </div>

        <!-- Slide2 -->
        <div class="wrap-slick2">
          <div class="slick2">
            <?php
              $sql = "SELECT itemID, name, price, image FROM featured";
              $resultset = mysqli_query($db, $sql) or die("Error:".mysqli_error($conn));
              if($resultset ->num_rows > 0){
              while( $record = mysqli_fetch_assoc($resultset)){
                //variables
                $id = $record['itemID'];
                $prodName = $record['name'];
                $price = $record['price'];
                $image = $record['image'];
            ?>
            <div class="item-slick2 p-l-15 p-r-15">
              <!-- Block2 -->

              <div class="block2">
                <div class="block2-img wrap-pic-w of-hidden pos-relative">
                  <?php
                    echo '<img src="data:image/png;base64,'.base64_encode($image).'" alt="$prodName">';
                    ?>
                  <div class="block2-overlay trans-0-4">
                    <div class="block2-btn-addcart w-size1 trans-0-4">
                      <!-- Button -->
                      <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                        <a href="cartAction.php?action=addToCart&id=<?php echo $id ?>">
                      Add to Cart</a>
                    </button>
                    </div>
                  </div>
                </div>
                <div class="block2-txt p-t-20">
                  <a href="#" class="block2-name dis-block s-text3 p-b-5">
                    <?php echo $prodName;?>
                </a>
                  <span class="block2-price m-text6 p-r-5">
                    R<?php echo $price;?>
                </span>
                </div>
              </div>
            </div>
          <?php } }?>

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

 		<!-- Container Selection1 -->
 		<div id="dropDownSelect1"></div>



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
 		<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
 		<script type="text/javascript" src="js/slick-custom.js"></script>
 		<!--===============================================================================================-->
 		<script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>
 		<!--===============================================================================================-->
 		<script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>
 		<!--===============================================================================================-->
 		<script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
 		<script type="text/javascript">
 			$('.block2-btn-addcart').each(function() {
 				var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
 				$(this).on('click', function() {
 					swal(nameProduct, "is added to cart !", "success");
 				});
 			});
 		</script>
 		<!--===============================================================================================-->
 		<script src="js/main.js"></script>
 	</body>
 </html>
