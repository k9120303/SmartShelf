<?php

    // Prepare variables for database connection
   
    $dbusername = "root";  
    $dbpassword = "";  
    $server = "localhost";

    // Connect to your database

    $dbconnect = mysql_pconnect($server, $dbusername, $dbpassword);
    $dbselect = mysql_select_db("smartshelf",$dbconnect);

    // Prepare the SQL statement

    $sql = "INSERT INTO test (temp) VALUES ('".$_GET["temp"]."')";    
 
 
    // Execute SQL statement

    mysql_query($sql);

/*$cxn = mysqli_connect('localhost','root','','smartshelf')
	or die("Can't connect!");

mysqli_select_db($cxn,'smartshelf')
	or die ("Unable to select a database!");

$temp = ($_GET['temp']);	
	
$qry = "INSERT INTO smartshelf (temp) VALUES ($temp)";
mysqli_query($cxn,$qry);*/
?>