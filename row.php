<?php include("navbar.php"); ?>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  	#footer2 {
		position:fixed;
		left:90%;
		bottom:2%;
	}
	#footerback2,
	#footernext2 {
		text-align: center;        
		width: 50px;
		float: right; 
	}
</style>
</head>
<body>
<?php
	  $get_row_id = @$_GET['row_id'];
	  $get_shelf_id = @$_GET['shelf_id'];
	  $look = "INSERT INTO grid (look) VALUES ('".@$_GET["look"]."') WHERE row_id = '$get_row_id'";
	  $think = "INSERT INTO grid (think) VALUES ('".@$_GET["think"]."') WHERE row_id = '$get_row_id'";
	  mysql_query($look);
	  mysql_query($think);
	  
	  include("row_table.php");		//顯示的Table
?>
<div id="footer2">
	<div id="footerback2">
		<?php echo '<a href="del_shelf.php?shelf_id='.@$get_shelf_id.'&shop_id='.@$get_shop_id.'"><img src="img/delete.png"/></a>'; ?>
	</div>
</div>
</body>