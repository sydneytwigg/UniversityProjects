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
     <h1>Register for an account</h1>
     <form method="post" action="/registration.php" onsubmit="return valid()">
       <table>
         <tr>
           <td>Name</td>
           <td><input type="text" name="name" id="name" required></input>
           </td>
         </tr>
         <tr>
           <td>Surname</td>
           <td><input type="text" name="surname" id="surname" required></input>
           </td>
         </tr>
         <tr>
           <td>ID Number</td>
           <td><input type="text" name="id" id="id" required></input>
           </td>
         </tr>
         <tr>
           <td>Credit Limit</td>
           <td><input type="text" name="credit" id="credit" required></input>
           </td>
         </tr>
         <tr>
           <td><input type="submit" name=submit value="Submit"></input>
           </td>
           <td><button type="reset" name=reset>Reset</button></td>
         </tr>
       </table>
     </form>

     <a href="login.php">Login to an existing account</a>
   </body>

 </html>

<? php
  if (isset($_POST["submit"])){
    $inputName = $_POST["name"];
    $inputSurname = $_POST["surname"];
    $inputID = $_POST["id"];
    $inputCredit = $_POST["credit"];

    $SQL = "INSERT INTO tbldetails (name, surname, id, credit_limit) VALUES (" . $inputName . "," . $inputSurname . "," . $inputID . "," . $inputCredit . ");"

    if($conn->query($sql) === TRUE){
      echo "Record added successfully.";
    } else {
      echo "Error " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
  }
?>
