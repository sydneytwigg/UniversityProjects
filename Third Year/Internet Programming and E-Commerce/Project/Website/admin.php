<?php include 'config.php';?>

<!DOCTYPE html>
<html lang="en">

	<head>
		<title>Admin | Jenni Twigg Designs | Bespoke Jewellery, Clothing & Interiors</title>
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

    <section class=" p-t-40 p-b-40 flex-col-c-m">
 			<!--spacing-->
 		</section>
		<!--								//call stock level procedure

											$stockSql = "CALL stock_level(".$row['id'].")";
											$result=$mysqi->query($stockSql);
											echo "<td>".$row['stock_level']."</td>";
-->
    <section class="cart bgwhite p-t-70 p-b-100">
			<div class="container">
				<div class="container-table-cart pos-relative">
					<h4 class="p-b-30 p-t-40 p-l-25">Stock Levels</h4>
					<?php
						//SQL statement to call stock_available view.
						$sql = "select * from stock_available;";
						$result = $mysqli->query($sql);
						if ($result->num_rows > 0) {
							echo "<table class='table-shopping-cart'>
											<tr>
												<th class='column-1'>Product ID</th>
												<th>Name</th>
												<th>Stock</th>
											</tr>";
							// output data of each row
							while($row = $result->fetch_assoc()) {
								echo "<tr>
								<td class='column-1'>".$row["id"]."</td>
								<td>".$row["name"]."</td>
								<td> ".$row["stock"]."</td>";
								echo "</tr>";
							}
							echo "</table>";
						} else {
							echo "<p class='p-l-40'>No products found.</p>";
						}
					?>
				</div>

        <div class="container-table-cart pos-relative">
          <h4 class="p-b-30 p-t-40 p-l-25">View Orders</h4>
					<!--https://www.w3schools.com/howto/howto_js_filter_table.asp-->
					<div class="bo4 of-hidden size15 m-b-20">
						<input type="text" id="searchInput" class="sizefull s-text7 p-l-22 p-r-22 bo6" onkeyup="searchFunction()" placeholder="Search by Order Number">
					</div>
				  <?php
						//SQL statement to call view_orders view.
	          $sql = "select * from view_orders;";
	          $result = $mysqli->query($sql);
	          if ($result->num_rows > 0) {
	            echo "<table class='table-shopping-cart' id='viewOrderTable'>
	                    <tr><th class='column-1'>Order Number</th><th>Email</th><th>Date Created</th></tr>";
	            // output data of each row
	            while($row = $result->fetch_assoc()) {
	              echo "<tr>
	              <td class='column-1'>".$row["id"]."</td>
	              <td>".$row["email"]."</td>
	              <td> ".$row["created"]."</td>
	              </tr>";
	            }
	            echo "</table>";
	          } else {
	            echo "<p class='p-l-40'>No orders.</p>";
	          }
          ?>
        </div>

        <div class="container-table-cart pos-relative p-t-40">
          <h4 class="p-b-30 p-t-40 p-l-25">View Customers</h4>
					<div class="bo4 of-hidden size15 m-b-20">
						<input type="text" id="searchCustomers" class="sizefull s-text7 p-l-22 p-r-22 bo6" onkeyup="searchCustomers()" placeholder="Search by Customer Name">
					</div>
          <?php
          	$sql = "select * from view_customer_info;";
          	$result = $mysqli->query($sql);
          	if ($result->num_rows > 0) {
            	echo "<table class='table-shopping-cart' id='customers'>
                    	<tr><th class='column-1'>Name</th><th>Email</th><th>Phone</th><th>Address</th></tr>";
            	while($row = $result->fetch_assoc()) {
              	echo "<tr>
              	<td class='column-1'>".$row["name"]."</td>
              	<td class='column-2'>".$row["email"]."</td>
              	<td class='column-3'> ".$row["phone"]."</td>
              	<td class='column-4'> ".$row["address"]."</td>
              	</tr>";
            	}
            	echo "</table>";
          	} else {
            	echo "<p class='p-l-40'>No customers.</p>";
          	}
          ?>

          <div class="container-table-cart pos-relative p-t-40">
            <h4 class="p-b-30 p-t-40 p-l-25">View Custom Orders</h4>
						<div class="bo4 of-hidden size15 m-b-20">
							<input type="text" id="searchCustomOrder" class="sizefull s-text7 p-l-22 p-r-22 bo6" onkeyup="searchCustomOrder()" placeholder="Search by Order ID">
						</div>
            <?php
	            $sql = "select * from view_custom_order;";
	            $result = $mysqli->query($sql);
	            if ($result->num_rows > 0) {
	              echo "<table class='table-shopping-cart' id='customOrder'>
	                      <tr>
												<th class='column-1'>Order ID</th>
												<th	class='column-2'>Email</th>
												<th class='column-3'>Product</th>
												<th	class='column-4'>Description</th>
												<th	class='column-5'>Additional Information</th>
												</tr>";
	              while($row = $result->fetch_assoc()) {
	                echo "<tr>
	                <td class='column-1'>".$row["custOrderID"]."</td>
	                <td class='column-2'>".$row["contactEmail"]."</td>
	                <td class='column-3'> ".$row["product"]."</td>
	                <td class='column-4'> ".$row["description"]."</td>
	                <td class='column-5'> ".$row["additionalInfo"]."</td>
	                </tr>";
	              }
	              echo "</table>";
	            } else {
	              echo "<p class='p-l-40'>No custom orders.</p>";
	            }
            ?>
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

		<script>
			function searchFunction() {
  		// Declare variables
  		var input, filter, table, tr, td, i;
  		input = document.getElementById("searchInput");
  		filter = input.value.toUpperCase();
  		tr = table.getElementsByTagName("tr");
			table = document.getElementById("viewOrderTable");
  		// Loop through all table rows, and hide those who don't match the search query
  		for (i = 0; i < tr.length; i++) {
    		td = tr[i].getElementsByTagName("td")[0];
    		if (td) {
      		if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        		tr[i].style.display = "";
      		} else {
        		tr[i].style.display = "none";
      		}
    		}
  		}
		}
		</script>

		<script>
			function searchCustomers() {
			// Declare variables
			var input, filter, table, tr, td, i;
			input = document.getElementById("searchCustomers");
			filter = input.value.toUpperCase();
			table = document.getElementById("customers");
			tr = table.getElementsByTagName("tr");

			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
		</script>

		<script>
			function searchCustomOrder() {
			// Declare variables
			var input, filter, table, tr, td, i;
			input = document.getElementById("searchCustomOrder");
			filter = input.value.toUpperCase();
			table = document.getElementById("customOrder");
			tr = table.getElementsByTagName("tr");

			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
		</script>
	</body>
</html>
