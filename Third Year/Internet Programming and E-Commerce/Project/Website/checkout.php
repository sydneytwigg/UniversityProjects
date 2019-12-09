<!DOCTYPE html>
<html lang="en">

	<head>
		<title>Checkout | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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
    <?php

    //include database
    include 'database.php';

    //redirect to products page if cart is empty
    if($cart->total_items()<=0){
      header("Location: products.php");
    }

		//get customer ID from email
    //set customer ID in session - NB FIX LATER
    $_SESSION['sessCustomerID'] = 1; //test as one for now

    //get customer details from customer id in session
    $query = $db->query("SELECT * FROM customers WHERE id= ".$_SESSION['sessCustomerID']);
    $custRow = $query->fetch_assoc();
    ?>

		<!-- Title Page -->
		<section class="bg-title-page p-t-120 p-b-50 flex-col-c-m" style="background-image: url(images/banner4.png);">
			<h2 class="l-text3 t-center">
			Checkout
		</h2>
		</section>

    <section class="cart bgwhite p-t-70 p-b-100">
			<div class="container">
        <div class="container-table-cart pos-relative">
        <div class="wrap-table-shopping-cart bgwhite">
          <table class="table-shopping-cart">
            <tr class="table-head">
              <th class="column-1"></th>
              <th class="column-2">Product</th>
              <th class="column-3">Price</th>
              <th class="column-4">Quantity</th>
              <th class="column-5">Total</th>
            </tr>
            <tr class="table-row">
              <?php
                if($cart->total_items()>0){
                //get cart items from session
                $cartItems = $cart->contents();
                foreach ($cartItems as $item) {
               ?>
              <td class="column-1">
                <div class="cart-img-product b-rad-4 o-f-hidden">
                  <img src="data:image/png;base64,'.base64_encode(<?php echo $item['image'];?>)" alt="<?php echo "IMG-".$item['name'];?>">
                </div>
              </td>
              <td class="column-2"><?php echo $item['name'];?></td>
              <td class="column-3"><?php echo "R".$item['price'];?></td>
              <td class="column-4"><?php echo $item['qty'];?></td>
              <td class="column-5"><?php echo 'R'.$item['subtotal']; ?></td>
            </tr>
          <?php
              }
                }else
                  { ?>
                    <tr>
                      <td colspan="5">
                      <div class="w-size20 w-full-sm">
                        <p class="s-text8 p-b-23">No items in cart.</p>
                      </div>
                    </td>
                  </tr>
          <?php
            }
          ?>
          </table>
        </div>
      </div>
      <!-- Total -->
      <div class="container-table-cart pos-relative p-t-40">
        <h5 class="m-text20 p-b-24">
          Shipping Details
        </h5>
        <!--  -->
        <div class="flex-w flex-sb bo10 p-t-15 p-b-20 p-l-20">
          <span class="s-text18 w-size19 w-full-sm ">
            Shipping Address:
          </span>
          <div class="w-size20 w-full-sm">
            <div class="m-text21 w-size20 w-full-sm">
							<div class="bo4 of-hidden size15 m-b-20">
								<input class="sizefull s-text7 p-l-22 p-r-22" type="name" name="name" placeholder="Full Name" required>
							</div>
							<div class="bo4 of-hidden size15 m-b-20">
								<input class="sizefull s-text7 p-l-22 p-r-22" type="email" name="email" placeholder="Email Address" required>
							</div><div class="bo4 of-hidden size15 m-b-20">
								<input class="sizefull s-text7 p-l-22 p-r-22" type="address" name="address" placeholder="Postal Address" required>
							</div>
            </div>
          </div>
        </div>
        <!--  -->
        <div class="flex-w flex-sb bo10 p-t-15 p-b-20 p-l-20">
          <span class="s-text18 w-size19 w-full-sm">
            Shipping Options:
          </span>
          <div class="w-size20 w-full-sm">
            <div class="m-text22 w-size19 w-full-sm">
							<span class="m-text22 w-size19 w-full-sm">
                    <p class="p-b-10">In Store Collection - Free</p>
                    <p class="p-b-10">South Africa - R100</p>
                    <p class="p-b-10">International - R250</p>
									</span>
            </div>
          </div>
        </div>
        <div class="size15 trans-0-4">
          <!-- Button -->
          <a class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" href="cartAction.php?action=placeOrder">
            Place Order
          </a>
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
