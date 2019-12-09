<?php
  //connect to database
  require_once "database.php";
 ?>


 <!DOCTYPE html>
 <html lang="en">

 	<head>
 		<title>Shop - Ceramics | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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


 		<!-- Content page -->
 		<section class="bgwhite p-t-55 p-b-65">
 			<div class="container">
 				<div class="row">
 					<div class="col-sm-6 col-md-8 col-lg-9 p-b-50 m-l-r-auto">
 						<!-- Product -->
 						<div class="row">
              <?php
                $sql = "SELECT id, name, price, image FROM products WHERE category='Ceramics'";
                $resultset = mysqli_query($db, $sql) or die("Error:".mysqli_error($conn));
                if($resultset ->num_rows > 0){
                while( $record = mysqli_fetch_assoc($resultset)){
                  //variables
                  $id = $record['id'];
                  $prodName = $record['name'];
                  $price = $record['price'];
                  $image = $record['image'];
              ?>
 							<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
 								<!-- Block2 -->
 								<div class="block2">
 									<div class="block2-img wrap-pic-w of-hidden pos-relative block2">
                      <?php
                        echo '<img src="data:image/png;base64,'.base64_encode($image).'" alt="$prodName">';
                        ?>
 										<div class="block2-overlay trans-0-4">
 										</a>
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
 										<a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                        <?php echo $prodName;?>
                    </a>

 										<span class="block2-price m-text6 p-r-5">
                      R<?php echo $price;?>
	                   </span>
 									</div>
 								</div>
 							</div>

            <?php } }else{ ?>
              <p>Products not found.....</p>
            <?php } ?>


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
 		<script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>
 		<script type="text/javascript" src="vendor/daterangepicker/daterangepicker.js"></script>
 		<!--===============================================================================================-->
 		<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
 		<script type="text/javascript" src="js/slick-custom.js"></script>
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
 		<script type="text/javascript" src="vendor/noui/nouislider.min.js"></script>
 		<!--===============================================================================================-->
 		<script src="js/main.js"></script>
 	</body>
 </html>
