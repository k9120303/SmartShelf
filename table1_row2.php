<?php
include("condb.php");
//include("navbar_asroot.php");
?>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">-->
  <title>table</title>
  <style>
  a {}

    html { height: 100%;}

    body {
         background-image: url(img/p3.jpg);
         background-repeat: no-repeat;
         background-attachment: fixed;
         background-position: center;
         background-size: cover;
    }



  body {font-family: "Lato", sans-serif}
  .w3-wide {letter-spacing: 10px;}
  .w3-hover-opacity {cursor: pointer;}
  </style>

  <link rel="stylesheet" href="css/table.css" />
  <link rel="stylesheet" type="text/css" href="css/w3.css">
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
  <link rel="stylesheet" type="text/css" href="css/newHome_style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<?php
echo '<body>';
echo '<div class="w3-top">
  <ul class="w3-navbar w3-black w3-card-2 w3-left-align">
      <li><a href="index.php" class="w3-hover-none w3-hover-text-grey w3-padding-large" >HOME</a></li> <!--home檔名-->
      
      <li class="w3-hide-small w3-dropdown-hover">
      <a href="javascript:void(0)" class="w3-hover-none w3-padding-large" title="More">A櫃</a> 
      <div class="w3-dropdown-content w3-white w3-card-4">
         <a href="table1_row1.php">第1排</a>   
         <a href="table1_row2.php">第2排</a>         
         <a href="row.php">第3排</a> <!--get id-->       
      </div></li>

      <li class="w3-hide-small w3-dropdown-hover">
      <a href="announcement_edit.php" class="w3-hover-none w3-padding-large" title="More">B櫃</a>
      <div class="w3-dropdown-content w3-white w3-card-4">
         <a href="row.php">第1排</a>         
         <a href="row.php">第2排</a>       
         <a href="row.php">第3排</a>       
         <a href="row.php">第4排</a>       
         <a href="row.php">第5排</a>       
         <a href="row.php">第6排</a>       
         <a href="row.php">第7排</a>
      </li>

      <li class="w3-hide-small w3-right w3-dropdown-hover">
      <a href="javascript:void(0)" class="w3-hover-red w3-padding-large" title="More">　　EDIT　　</a>
      <div class="w3-dropdown-content w3-white w3-card-4">
       <a href="add.php">新增展示櫃</a>
       <a href="edit.php">編輯展示櫃</a>
         <a href="info.php">展示櫃資訊</a>
            
      </div></li>

      <!--
      <li class="w3-hide-small w3-right"><a href="content/toy_edit.php" class="w3-padding-xlarge w3-hover-red" style="margin-top: 3px;"><i class="fa fa-search"></i></a></li>
      -->
  </ul>
</div>';

	  
	  $look = "INSERT INTO row (look) VALUES ('".@$_GET["look"]."')";
	  $think = "INSERT INTO row (think) VALUES ('".@$_GET["think"]."')";
	  mysql_query($look);
	  mysql_query($think);
	  
	  //===============================================顯示的Table
	  $db = mysqli_connect($server, $dbusername, $dbpassword, $database);
	  mysqli_set_charset($db, "utf8");
	  echo  '<!--class="table-title"-->
	    <div style="margin-top: 100px;">
		  <table class="table-fill">
		    <thead>
			  <tr>
			    <th class="text-left">格數</th>
				<th class="text-left">商品名稱</th>
			    <th class="text-left">稍微看看</th>
			    <th class="text-left">超猶豫</th>
				<th class="text-left">編輯商品<br>重設數值</th>
			  </tr>
		    </thead>';
	
	  $value = "SELECT * FROM row WHERE table_num=1 && row_num=2";
	  $result = $db->query($value);

	  if ($result->num_rows > 0) {
		// output data of each row
		while($row = $result->fetch_assoc()) {
			echo '<tbody class="table-hover">';
			echo '<tr>';
			echo '<td class="text-left">'. $row["id"].'</td>';
			echo '<td class="text-left">'. $row["name"].'</td>';
			echo '<td class="text-left">'. $row["look"].'</td>';
			echo '<td class="text-left">'. $row["think"].'</td>';
			echo '<td class="text-left">編輯/重設</td>';
			echo '</tr>';
			echo '</tbody>';
		}
	  } else {
		echo "0 results";
	  }
	  echo "</table>";
	  //===============================================顯示的Table END
	  
      /*<tbody class="table-hover">
        <tr>
          <td class="text-left fblack">第1格</td>
          <td class="text-left">101</td>
          <td class="text-left">203</td>
          <td></td>
        </tr>
        <tr>
          <td class="text-left">第2格</td>
          <td class="text-left">112</td>
          <td class="text-left">322</td>
          <td></td>
        </tr>
        <tr>
          <td class="text-left">第3格</td>
          <td class="text-left">-</td>
          <td class="text-left">0666</td>
          <td></td>
        </tr>
        <tr>
          <td class="text-left">第4格</td>
          <td class="text-left">5368</td>
          <td class="text-left">6997</td>
          <td></td>
        </tr>
        <tr>
          <td class="text-left">第5格</td>
          <td class="text-left">1234</td>
          <td class="text-left">5628</td>
          <td>野</td>
        </tr>
         <!--<button class="button buttonRed" align="center">Switch</button>-->
      </tbody>*/
  echo '</div>

  </body>';
?>