<?php
include("function/condb.php");
include("function/db_pdo_conn.php");  
$get_shop_id = @$_GET['shop_id'];
$shop = "SELECT * FROM shop where shop_id = '$get_shop_id'";
$get_shop = $db->query($shop);
?>
<html>
    <head>
        <script>	
				function InsertContent(){
					document.getElementById("room_id").value = document.getElementById("room_id").value;
					document.getElementById("floor_number").value = document.getElementById("floor_number").value;
					document.getElementById("roomer_name").value = document.getElementById("roomer_name").value;
					document.getElementById("roomer_phone").value = document.getElementById("roomer_phone").value;
					document.getElementById("roomer_line_id").value = document.getElementById("roomer_line_id").value;
					document.getElementById("roomer_plate_id").value = document.getElementById("roomer_plate_id").value;
					document.getElementById("mfrom").action = "room_addsave.php";
					document.getElementById("mfrom").submit();
				}
 		 </script>
    </head>

	<body>
		<div class="wrapper">
			<div style="margin-top: 10%;">
				<div id="form_wrapper" class="w3-card-4 form_wrapper" style="margin-left: 22%">
					<form name="form" method="post" action="room_edit.php" class="login active" style="width: 150%">
						<header class="w3-container w3-black">
							<h1>確認要刪除店家<font color="red"><?php if($shop_data = $get_shop->fetch()) echo $shop_data[1]; ?></font>嗎？</h1>
						</header>
						<div>
							<label>注意：若刪除店家後，就無法復原，請小心使用本功能</label>
						</div>
						<div class="bottom">
							<input type="submit" name="button" value="確定"  role="button" onclick="InsertContent();"/></input>
							<input type="button" value="取消" onclick="history.back()" />
							<div class="clear"></div>
						</div>
					</form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	<?php include("navbar.php"); ?>
    </body>
</html>