<?php
// Include config file
require_once "config.php";

// Define variables and initialize with empty values
$username = $password = $confirm_password = "";
$username_err = $password_err = $confirm_password_err = "";

// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    // Validate username
    if(empty(trim($_POST["email"]))){
        $username_err = "Please enter a username.";
    } else{
        // Prepare a select statement
        $sql = "SELECT id FROM users WHERE username = ?";
        if($stmt = $mysqli->prepare($sql)){
            // Bind variables to the prepared statement as parameters
            $stmt->bind_param("s", $param_username);
            // Set parameters
            $param_username = trim($_POST["email"]);
            // Attempt to execute the prepared statement
            if($stmt->execute()){
                // store result
                $stmt->store_result();
                if($stmt->num_rows == 1){
                    $username_err = "This username is already in use.";
                } else{
                    $username = trim($_POST["email"]);
                }
            } else{
                echo "Error.";
            }
        }
        // Close statement
        $stmt->close();
    }

    // Validate password
    if(empty(trim($_POST["password"]))){
        $password_err = "Please enter a password.";
    } elseif(strlen(trim($_POST["password"])) < 6){
        $password_err = "Password must have at least 6 characters.";
    } else{
        $password = trim($_POST["password"]);
    }

    // Validate confirm password
    if(empty(trim($_POST["confirm_password"]))){
        $confirm_password_err = "Please confirm password.";
    } else{
        $confirm_password = trim($_POST["confirm_password"]);
        if(empty($password_err) && ($password != $confirm_password)){
            $confirm_password_err = "Passwords did not match.";
        }
    }

    // Check input errors before inserting in database
    if(empty($username_err) && empty($password_err) && empty($confirm_password_err)){

        // Prepare an insert statement
        $sql = "INSERT INTO users (username, password) VALUES (?, ?)";

        if($stmt = $mysqli->prepare($sql)){
            // Bind variables to the prepared statement as parameters
            $stmt->bind_param("ss", $param_username, $param_password);

            // Set parameters
            $param_username = $username;
            $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash

            // Attempt to execute the prepared statement
            if($stmt->execute()){
                // Redirect to login page
                header("location: login.php");
            } else{
                echo "Error.";
            }
        }

        // Close statement
        $stmt->close();
    }

    // Close connection
    $mysqli->close();
}
?>
<!DOCTYPE html>
<html lang="en">

  <head>
    <title>Register | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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


    <!-- content page -->
    <section class="bgwhite p-t-66 p-b-30">
      <div class="container">
        <div class="row">
          <div class="col-md-6 p-b-30 m-l-r-auto">
            <form class="leave-comment" method="POST" action="register.php">
              <h4 class="m-text26 p-b-36 p-t-15">
                Register
              </h4>

              <p class="p-b-10">Sign up for a new account.</p>
              <div class="p-t-33 p-b-15">
                <div class="flex-m flex-w p-b-10">
                  <div class="bo4 of-hidden size15 m-b-20">
                    <input class="sizefull s-text7 p-l-22 p-r-22" type="email" name="email" placeholder="Email Address" required>
                  </div>
                  <span class="help-block"><?php echo $username_err; ?></span>

                  <div class="bo4 of-hidden size15 m-b-20">
                    <input class="sizefull s-text7 p-l-22 p-r-22" type="password" name="password" placeholder="Password" required>
                  </div>
                  <span class="help-block"><?php echo $password_err; ?></span>

                  <div class="bo4 of-hidden size15 m-b-20">
                    <input class="sizefull s-text7 p-l-22 p-r-22" type="password" name="confirm_password" placeholder="Confirm Password" required>
                  </div>
                  <span class="help-block"><?php echo $confirm_password_err; ?></span>

                </div>
              </div>
              <div class="w-size25">
                <!-- Button -->
                  <input type="submit" value="Sign Up" class="flex-c-m size2 bg1 bo-rad-23 hov1 m-text3 trans-0-4">
            </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
      <div class="flex-w p-b-90">
        <div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
          <h4 class="s-text12 p-b-30">
							GET IN TOUCH
						</h4>

          <div>
            <p class="s-text7 w-size27">
              Any questions? Email us at jenni@jennitwiggdesigns.co.za or <a href="contact.html" class="s-text7 w-size27">get in touch with us online.</a>
            </p>

            <div class="flex-m p-t-30">
              <a href="#" class="fs-18 color1 p-r-20 fa fa-facebook"></a>
              <a href="#" class="fs-18 color1 p-r-20 fa fa-instagram"></a>
              <a href="#" class="fs-18 color1 p-r-20 fa fa-pinterest-p"></a>
            </div>
          </div>
        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
          <h4 class="s-text12 p-b-30">
							Visit Us
						</h4>
          <p class="s-text7 w-size27">
            6 Mohr Road<br>Tokai<br>7945<br>Western Cape<br>South Africa
          </p>

        </div>

        <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
          <h4 class="s-text12 p-b-30">
							Help
						</h4>

          <ul>


            <li class="p-b-9">
              <a href="about.html#returns" class="s-text7">
									Returns
								</a>
            </li>

            <li class="p-b-9">
              <a href="about.html#shipping" class="s-text7">
									Shipping
								</a>
            </li>

            <li class="p-b-9">
              <a href="about.html#FAQ" class="s-text7">
									FAQs
								</a>
            </li>

            <li class="p-b-9">
              <a href="#" class="s-text7">
									Terms of Use
								</a>
            </li>
          </ul>
        </div>

        <div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">

        </div>
      </div>

      <div class="t-center p-l-15 p-r-15">


        <div class="t-center s-text8 p-t-20">
          Copyright © 2018 All rights reserved.
        </div>
      </div>
    </footer>
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

  </body>


</html>
