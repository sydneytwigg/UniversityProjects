<!DOCTYPE html>
<html lang="en">

	<head>
		<title>Contact | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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
			Contact
		</h2>
		</section>

		<!-- content page -->
		<section class="bgwhite p-t-66 p-b-60">
			<div class="container">
				<div class="row">
					<div class="col-md-6 p-b-30">
						<div class="p-r-20 p-r-0-lg">
							<div class="contact-map size21" id="google_map" data-map-x="-34.058340" data-map-y="18.44665" data-pin="images/icons/jt-map-icon.png" data-scrollwhell="0" data-draggable="1"></div>
						</div>
					</div>

					<div class="col-md-6 p-b-30">

						<form class="leave-comment" method="POST">
							<h4 class="m-text26 p-b-36 p-t-15">
							Send us your message </h4>
							<div class="bo4 of-hidden size15 m-b-20">
								<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="name" placeholder="Full Name" required>
							</div>
							<div class="bo4 of-hidden size15 m-b-20">
								<input class="sizefull s-text7 p-l-22 p-r-22" type="email" name="email" placeholder="Email Address" id="email" required>
							</div>
							<textarea class="dis-block s-text7 size20 bo4 p-l-22 p-r-22 p-t-13 m-b-20" name="message" placeholder="Message" id="message" required></textarea>
							<div class="w-size25">
								<button class="flex-c-m size2 bg1 bo-rad-23 hov1 m-text3 trans-0-4" type="submit" value="Send">
								Send
								</button>
							</div>
						</form>
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

    <div hidden>
    <?php
    //Import PHPMailer classes into the global namespace
    use PHPMailer\PHPMailer\PHPMailer;
    $msg = '';
    if (array_key_exists('email', $_POST)) {
        require 'vendor/autoload.php';
        //Create a new PHPMailer instance
        $mail = new PHPMailer;
        //Tell PHPMailer to use SMTP - requires a local mail server
        $mail->IsSMTP(); // enable SMTP
        $mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
        $mail->SMTPAuth = true; // authentication enabled
        $mail->SMTPSecure = 'ssl'; // secure transfer enabled
        $mail->Host = "smtp.gmail.com";
        $mail->Port = 465; // or 587
        $mail->IsHTML(true);
        $mail->Username = "jennitwiggdesigns@gmail.com";
        $mail->Password = "4.Portland";
        $mail->setFrom('jennitwiggdesigns@gmail.com', 'Jenni Twigg Designs');
        $mail->addAddress('jennitwiggdesigns@gmail.com', 'Jenni Twigg Designs');
        //Put the submitter's address in a reply-to header
        if ($mail->addReplyTo($_POST['email'], $_POST['name'])) {
            $mail->Subject = '[Contact Us] New Message from Jenni Twigg Designs';
            $mail->isHTML(false);
            //Build message body
            $mail->Body = <<<EOT
    Email: {$_POST['email']}
    Name: {$_POST['name']}
    Message: {$_POST['message']}
EOT;
            //Send the message, check for errors
            if (!$mail->send()) {
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
