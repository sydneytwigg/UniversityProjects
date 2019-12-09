<?php
// initialise shopping cart class
include 'cartfunction.php';
$cart = new Cart;
?>

<header class="header1">
  <!-- Header desktop -->
  <div class="container-menu-header">
    <!--bar 1 - spacing-->
    <div class="topbar">
      <!--blank -->
    </div>

    <!--bar 2 - shop name-->
    <div class="topbarlogo wrap_header trans-0-4">
      <a href="index.php" class="logo-regular">JENNI TWIGG DESIGNS</a>
    </div>

    <div class="wrap_header">
      <!-- Menu -->
      <div class="wrap_menu">
        <nav class="menu">
          <ul class="main_menu">
            <li>
              <a href="index.php">Home</a>
            </li>
            <li>
              <a href="about.php">About</a>
            </li>
            <li>
              <a href="product.php">Shop</a>
              <ul class="sub_menu">
                <li>Range</li>
                <li><a href="product.php">View All</a></li>
                <li><a href="product-clothing.php">Clothing</a></li>
                <li><a href="product-jewellery.php">Jewellery</a></li>
                <li><a href="product-ceramics.php">Ceramics</a></li>
                <li><a href="product-homeware.php">Homeware</a></li>
              </ul>
            </li>
            <li>
              <a href="services.php">Services</a>
            </li>
            <li>
              <a href="custom-order.php">Custom Order</a>
            </li>
            <li>
              <a href="contact.php">Contact</a>
            </li>
          </ul>
        </nav>
      </div>

      <!-- Header Icon -->
      <div class="header-icons">

        <a href="#" class="header-wrapicon1">
          <span class="topbar-email">
            <!--spacing-->
          </span>
        </a>
        <span class="linedivide1"></span>

        <a href="login.php" class="header-wrapicon1 dis-block">
        Profile
      </a>

        <span class="linedivide1"></span>

        <div class="header-wrapicon2">
          <img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
          <span class="header-icons-noti badge"><?php echo $cart->total_items();?></span>

          <!-- Header cart noti -->
          <div class="header-cart header-dropdown">
            <ul class="header-cart-wrapitem">
              <?php
              if ($cart->total_items() > 0) {
                $cartItems = $cart->contents();
                foreach ($cartItems as $item) {
                  ?>
              <li class="header-cart-item">
                <div class="header-cart-item-img">
	                 <img src="data:image/png;base64,'.base64_encode(<?php echo $item['image'];?>)" alt="<?php echo "IMG-".$item['name'];?>">                </div>
                <div class="header-cart-item-txt">
                  <a href="#" class="header-cart-item-name">
                    <?php echo $item['name'];?>
                  </a>
                  <span class="header-cart-item-info">
                    <?php echo $item['qty'] ." x R". $item['price']; ?>
                  </span>
                </div>
              </li>

            </ul>

            <div class="header-cart-total">
              Total: <?php echo "R".$cart->total(); ?>
            </div>
          <?php }} else { ?>
            <ul class="header-cart-wrapitem">
              <div class="header-cart-item-txt">
                Cart empty
              </div>
            </ul>
            <?php
          } ?>
            <div class="header-cart-buttons">
              <div class="header-cart-wrapbtn">
                <!-- Button -->
                <a href="cart.php" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                View Cart
              </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Header Mobile -->
  <div class="wrap_header_mobile">
    <!-- Logo moblie -->
    <a href="index.php" class="logo-mobile">
    JENNI TWIGG DESIGNS
</a>

    <!-- Button show menu -->
    <div class="btn-show-menu">
      <!-- Header Icon mobile -->
      <div class="header-icons-mobile">
        <a href="#" class="header-wrapicon1 dis-block">
      <img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
    </a>

        <span class="linedivide2"></span>

        <div class="header-wrapicon2">
          <img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
          <span class="header-icons-noti">0</span>

          <!-- Header cart noti -->
          <div class="header-cart header-dropdown">
            <ul class="header-cart-wrapitem">
              <?php
              if ($cart->total_items() > 0) {
                $cartItems = $cart->contents();
                foreach ($cartItems as $item) {
                  ?>
              <li class="header-cart-item">
                <div class="header-cart-item-img">
                   <img src="data:image/png;base64,'.base64_encode(<?php echo $item['image'];?>)" alt="<?php echo "IMG-".$item['name'];?>">                </div>
                <div class="header-cart-item-txt">
                  <a href="#" class="header-cart-item-name">
                    <?php echo $item['name'];?>
                  </a>
                  <span class="header-cart-item-info">
                    <?php echo $item['qty'] ." x R". $item['price']; ?>
                  </span>
                </div>
              </li>

            </ul>

            <div class="header-cart-total">
              Total: <?php echo "R".$cart->total(); ?>
            </div>
          <?php }} else { ?>
            <ul class="header-cart-wrapitem">
              <div class="header-cart-item-txt">
                Cart empty
              </div>
            </ul>
            <?php
          } ?>
            <div class="header-cart-buttons">
              <div class="header-cart-wrapbtn">
                <!-- Button -->
                <a href="cart.php" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                View Cart
              </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
        <span class="hamburger-box">
      <span class="hamburger-inner"></span>
        </span>
      </div>
    </div>
  </div>

  <!-- Menu Mobile -->
  <div class="wrap-side-menu">
    <nav class="side-menu">
      <ul class="main-menu">
        <li class="item-menu-mobile">
          <a href="index.php">Home</a>
        </li>

        <li class="item-menu-mobile">
          <a href="about.php">About</a>
        </li>


        <li class="item-menu-mobile">
          <a href="index.php">Shop</a>
          <ul class="sub-menu">
            <li><a href="product.php">View All</a></li>
            <li><a href="product-dresses.php">Dresses</a></li>
            <li><a href="product-jewellery.php">Jewellery</a></li>
            <li><a href="product-ceramics.php">Ceramics</a></li>
            <li><a href="product-homeware.php">Homeware</a></li>
          </ul>
          <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
        </li>

        <li class="item-menu-mobile">
          <a href="services.php">Services</a>
        </li>

        <li class="item-menu-mobile">
          <a href="custom-order.php">Custom Order</a>
        </li>

        <li class="item-menu-mobile">
          <a href="contact.php">Contact</a>
        </li>
      </ul>
    </nav>
  </div>
</header>

<!--END HEADER-->
