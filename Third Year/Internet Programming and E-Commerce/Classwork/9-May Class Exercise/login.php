<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "banking";

//create connection
$conn = new mysqli($servername, $username, $password, $dbname);
//check connection
if ($conn->connect_error){
  die("Connection failed" . $conn->connect_error);
}

 ?>

 <html>

   <head>
     <title>Login</title>
     <link rel="stylesheet" href="css/style.css">

   </head>

   <body>
     <h1>Login to your account</h1>
     <form method="post" action="/login.php" onsubmit="return valid()">
       <table>
         <tr>
           <td>Username</td>
           <td><input type="text" name="username" id="username" required></input>
           </td>
         </tr>
         <tr>
           <td>Password</td>
           <td><input type="password" name="password" id="password" required></input>
           </td>
         </tr>
         <tr>
           <td><input type="submit" name=submit value="Submit"></input>
           </td>
           <td><button type="reset" name=reset>Reset</button></td>
         </tr>
       </table>
     </form>

     <a href="registration.php">Register for an account</a>
   </body>

 </html>

 <?php
 if (isset($_POST["submit"])){
   $inputUser = $_POST["username"];
   $inputPassword = $_POST["password"];

   $SQL = "SELECT * FROM tbluser WHERE username = " . $inputUser . "&& password = " . $inputPassword .";";
   $result = $conn->query($sql);

   if ($result->num_rows > 0){
     echo "Welcome " . $inputUser;
   } else {
     echo "User not found";
   }

   $conn->close();
}



  ?>
