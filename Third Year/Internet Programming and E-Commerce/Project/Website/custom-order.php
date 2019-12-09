<?php
  //connect to database
  require_once "database.php";
 ?>

<!DOCTYPE html>
<html lang="en">

  <head>
    <title>Custom Order | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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
			Custom Order
		</h2>
    </section>

    <!-- content page -->
    <section class="bgwhite p-t-66 p-b-30">
      <div class="container">
        <div class="row">
          <div class="col-md-6 p-b-30 m-l-r-auto">
            <form class="leave-comment" method="POST" action="custom-order.php">
              <h4 class="m-text26 p-b-36 p-t-15">
              Place a custom order
              </h4>
              <p class="p-b-28">Send us an idea of what you want and we'll get back to you with a quote.</p>

              <!--contact-->
              <div class="wrap-dropdown-content bo6 p-t-9 p-b-9">
                <h4 class="flex-sb-m cs-pointer m-text19 trans-0-4">
                  Contact Details
                </h4>
                <div class="p-t-33 p-b-15">
                  <div class="flex-m flex-w p-b-10">
                    <div class="bo4 of-hidden size15 m-b-20">
                      <input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="name" placeholder="Full Name" required>
                    </div>

                    <div class="bo4 of-hidden size15 m-b-20">
                      <input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="phonenumber" placeholder="Phone Number" required>
                    </div>

                    <div class="bo4 of-hidden size15 m-b-20">
                      <input class="sizefull s-text7 p-l-22 p-r-22" type="email" name="email" placeholder="Email Address" required>
                    </div>
                  </div>
                </div>
              </div>

              <!--specs-->
              <div class="wrap-dropdown-content bo6 p-t-9 p-b-9">
                <h4 class="flex-sb-m cs-pointer m-text19 trans-0-4">
                    Order Information
                  </h4>

                <!--  -->
                <div class="p-t-33 p-b-15">
                  <div class="flex-m flex-w p-b-10">
                    <div class="s-text15 w-size15 t-center">
                      Product
                    </div>

                    <div class="rs2-select2 rs3-select2 bo4 of-hidden w-size16">
                      <select class="selection-2" name="product" required>
        								<option>Choose an option</option>
        								<option>Ceramics</option>
        								<option>Jewellery</option>
        								<option>Dresses</option>
        								<option>Homeware</option>
        							</select>
                    </div>
                  </div>

                  <div class="p-t-33 p-b-15">
                    <div class="flex-m flex-w p-b-10">
                      <p class="p-b-28">Description of your custom item.</p>
                      <textarea class="dis-block s-text7 size20 bo4 p-l-22 p-r-22 p-t-13 m-b-15" name="description" placeholder="Include size, colour, fabric and any other details. Provide links to any reference images." required></textarea>
                    </div>
                  </div>

                </div>
              </div>

              <!--specs-->
              <div class="wrap-dropdown-content bo6 p-t-9 p-b-9">
                <h4 class="flex-sb-m cs-pointer m-text19 trans-0-4">
                    Additional Information
                  </h4>
                <p class="p-b-10">If you have any additional information you would like to include, please do so here.</p>

                <!--  -->
                <div class="p-t-23 p-b-15">
                  <div class="flex-m flex-w p-b-10">
                    <textarea class="dis-block s-text7 size20 bo4 p-l-22 p-r-22 p-t-13 m-b-20" name="additionalinfo" placeholder="Include if this item needs to be completed by a date, if it is a gift, any allergies to metals or fabrics."></textarea>
                  </div>
                </div>
              </div>

              <div class="w-size25">
                <!-- Button -->
                <button class="flex-c-m size2 bg1 bo-rad-23 hov1 m-text3 trans-0-4" type="submit" value="send">
								Request quote
							</button>
              </div>
            </form>
            <?php if (!empty($msg)) {
              echo '<p class="p-b-28">$msg</p>';
            } ?>

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAy3VxQGYHpVgSEUjEnDb10PcLbiy9h7mg&callback=initMap"></script>
    <script src="js/map-custom.js "></script>
    <!--===============================================================================================-->
    <script src="js/main.js "></script>
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
    <script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

    <div hidden >

          <?php
              //get variables
              $contactName = $_POST['name'];
              $contactEmail = $_POST['email'];
              $contactPhone = $_POST['phonenumber'];
              $product = $_POST['product'];
              $description = $_POST['description'];
              $additionalInfo = $_POST['additionalinfo'];
              //insert into db
              //https://stackoverflow.com/questions/37367992/php-inserting-values-from-the-form-into-mysql
              //https://www.w3schools.com/php/php_mysql_prepared_statements.asp
              $stmt = $conn->prepare("INSERT INTO customorder (contactName, contactEmail, contactPhone, product, description, additionalInfo) VALUES (?,?,?,?,?,?)");
              $stmt->bind_param("ssssss", $contactName, $contactEmail, $contactPhone, $product, $description, $additionalInfo);
              $stmt->execute();
              $stmt->close();
          ?>

          <?php
          //Import PHPMailer classes into the global namespace
          use PHPMailer\PHPMailer\PHPMailer;

          $msg = '';

          //Don't run this unless we're handling a form submission
          if (array_key_exists('email', $_POST)) {

              require 'vendor/autoload.php';
              //Create a new PHPMailer instance
              $mail = new PHPMailer;

              //Tell PHPMailer to use SMTP - requires a local mail server
              //Faster and safer than using mail()
              $mail->IsSMTP(); // enable SMTP
              $mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
              $mail->SMTPAuth = true; // authentication enabled
              $mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for Gmail
              $mail->Host = "smtp.gmail.com";
              $mail->Port = 465; // or 587
              $mail->IsHTML(true);
              $mail->Username = "jennitwiggdesigns@gmail.com";
              $mail->Password = "4.Portland";

              //Use a fixed address in your own domain as the from address
              //**DO NOT** use the submitter's address here as it will be forgery
              //and will cause your messages to fail SPF checks
              $mail->setFrom('jennitwiggdesigns@gmail.com', 'Jenni Twigg Designs');
              //Send the message to yourself, or whoever should receive contact for submissions
              $mail->addAddress('jennitwiggdesigns@gmail.com', 'Jenni Twigg Designs');

              //Put the submitter's address in a reply-to header
              //This will fail if the address provided is invalid,
              //in which case we should ignore the whole request
              if ($mail->addReplyTo($_POST['email'], $_POST['name'])) {
                  $mail->Subject = '[Custom Order] New Order Query from Jenni Twigg Designs';
                  //Keep it simple - don't use HTML
                  $mail->isHTML(false);
                  //Build a simple message body
                  $mail->Body = <<<EOT
          \nCONTACT DETAILS\n
          Name: {$_POST['name']}
          Email: {$_POST['email']}
          Phone Number: {$_POST['phonenumber']}
          \n\nORDER INFORMATION\n
          Product: {$_POST['product']}
          Description: {$_POST['description']}
          \n\nADDITIONAL INFORMATION\n
          Additional Information: {$_POST['additionalinfo']}
EOT;
                  //Send the message, check for errors
                  if (!$mail->send()) {
                      //The reason for failing to send will be in $mail->ErrorInfo
                      //but you shouldn't display errors to users - process the error, log it on your server.
                      $msg = 'Sorry, something went wrong. Please try again later.';
                  } else {
                      $msg = 'Message sent! Thanks for contacting us.';
                  }
              } else {
                  $msg = 'Invalid email address, message ignored.';
              }
          }
          ?>
    </div>
  </body>
</html>
