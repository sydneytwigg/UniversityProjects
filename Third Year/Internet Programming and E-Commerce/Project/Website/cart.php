
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>Cart | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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
			Cart
		</h2>
		</section>

		<!-- Cart -->
		<section class="cart bgwhite p-t-70 p-b-100">
			<div class="container">
				<!-- Cart Items -->
				<div class="container-table-cart pos-relative">
					<div class="wrap-table-shopping-cart bgwhite">
						<table class="table-shopping-cart">
							<tr class="table-head">
								<th class="column-1"></th>
								<th class="column-2">Product</th>
								<th class="column-3">Price</th>
								<th class="column-4 p-l-70">Quantity</th>
								<th class="column-5">Total</th>
								<th class="column-6"></th>
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
								<td class="column-4">
									<div class="flex-w bo5 of-hidden w-size17">
										<button class="btn-num-product-down color1 flex-c-m size7 bg8 eff2" onclick="updateCartItem(this, '<?php echo $item["rowid"]; ?>')">
										<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
									</button>
										<input class="size8 m-text18 t-center num-product" type="number" value="<?php echo $item["qty"]; ?>"
														onchange="updateCartItem(this, '<?php echo $item["rowid"]; ?>')">
										<button class="btn-num-product-up color1 flex-c-m size7 bg8 eff2" onclick="updateCartItem(this, '<?php echo $item["rowid"]; ?>')">
										<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
									</button>
									</div>
								</td>
								<td class="column-5"><?php echo 'R'.$item['subtotal']; ?></td>
								<td class="column-6">
										<a href="cartAction.php?action=removeCartItem&id=<?php echo $item["rowid"]; ?>" class="btn" onclick="return confirm('Are you sure?')">
											<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADQSURBVEhL7dUtCgJRFIbhmwRB0GQR3IHVZLL4twPB5CYEF6A2q8FoMU0VDKLRpti0GkyCC9D3zIxwEdTDjBrkfvDAOTBzvzAw17h8K3VscbB4SOFjWeOIaWiGK1qIlCr6D07YW/sYUiJl9nMig7fpQQ6IKg9VVtgEoyolSEHD35T5eUkbw2D0v9cISRTDOYfYJROcg9F0IIel0QznAlyJK9HnP0s0iVQyh/x1talBSir+pkwX8tIC9zvkFblrLshCnQQG2MG+DZ9ZogyXODHmBqNeh25yCIbhAAAAAElFTkSuQmCC">
										</a>
								</td>
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
				<div class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
					<div class="flex-w flex-m w-full-sm">
						<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
							<!-- Button -->
							<a href="cart.php" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" action="updateCartItem(this, '<?php echo $item["rowid"]; ?>')">
							Update Cart
						</a>
						</div>
					</div>
					<div class="size10 trans-0-4 m-t-10 m-b-10">
						<!-- Button -->
						<a class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" href="checkout.php">
						Checkout
					</a>
					</div>
					<div class="flex-w flex-m w-full-sm">
						<div class="size11 m-r-10">
							<div class="flex-w flex-sb-m p-b-12">
								<span class="s-text18 w-size19 w-full-sm">
								Subtotal:
							</span>
								<span class="m-text21 w-size20 w-full-sm">
									<?php if($cart->total_items() > 0){
										echo "R".$cart->total();
									 } ?>
							</span>
							</div>
						</div>
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
