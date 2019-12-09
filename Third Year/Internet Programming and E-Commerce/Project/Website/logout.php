<?php
//logout of your account
include_once 'config/core.php';

//end session
session_destroy();

//redirect to index
header("Location: {$home_url}index.php");
 ?>
