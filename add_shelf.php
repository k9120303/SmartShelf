<?php $get_shop_id = @$_GET['shop_id'];?>
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
							<h1>新增展示櫃</h1>
						</header>
						<div>
							<label>展示櫃名稱:</label>
							<input type="text" id="room_id" name="room_id" />
							<span class="error">This is an error</span>
						</div>
						<div>
							<label>排數: </label>
							<input type="text" id="floor_number" name="floor_number" />
							<span class="error">This is an error</span>
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