<meta http-equiv="refresh" content="30">
<head>
	<link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>
	<link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css'>
	<link rel="stylesheet" href="css/row_table.css">
	<style>
		/* Popup container 方框 */
		.popup {
			text-decoration: underline;
			position: relative;		
			cursor: pointer;		
		}

		/* Popup 方框裡的內容 */
		.popup .popuptext {
			visibility: hidden;
			width: 100%;
			background-color: #DDDDDD;
			text-align: center;
			position: absolute;
			z-index: 1;
			bottom: -1000%;
			right: 60%;
		}

		/* Toggle this class - 閃現 popup */
		.popup .show {
			visibility: visible;
			-webkit-animation: fadeIn 1s;
			animation: fadeIn 1s;
		}

		/* Add animation (fade in the popup) */
		@-webkit-keyframes fadeIn {
			from {opacity: 0;} 
			to {opacity: 10;}
		}
		@keyframes fadeIn {
			from {opacity: 0;}
			to {opacity: 10;}
		}
</style>
</head>
<div class="container"><br><br><br><br>
 	<div id="table" class="table-editable">
	<?php error_reporting (E_ALL & ~E_NOTICE);?>
	<label style="-webkit-text-stroke: 0.1px black; color:#700; font-size: 25px; font-family: Microsoft JhengHei;">※ 表格依序由上到下，為該排之商品從左到右，每排最多可放12個商品</label>
    
    <table class="table">
    <tr>
		<th>選取</th>
		<th>商品型號</th>
		<th>銷售數量</th>
		<th>稍微看看</th>
		<th>非常猶豫</th>
    </tr>
	<?php

	$grid = "SELECT * FROM grid WHERE row_id = '$get_row_id'";
	$result = $db->query($grid);
	$get_grid_id = $_GET['grid_id'];
	$get_col_order = $_GET['col_order'];
	$get_first = $_GET['first'];
	$none_add = 0;
	$grid_id_max = 0;

	if($get_col_order==1 && $get_first==0){
		$grid_id_count=0;
	}else if ($get_col_order==1){
		$grid_id_count=1;
	}else{
		$grid_id_count= ($get_col_order-1)*12+1; //01~12 13~24 25~36 37~48 49~60 61~72
	}
	
	//建立Grid表格內容
	

	while($grid_data = $result->fetch()){
		$grid_id_switch[$grid_id_count] = $grid_data["grid_id"];
		
		if($grid_data["grid_id"]!='grid 0'){	//!='grid 0'

			echo '
			<form name="form1" id="form1" method="post" action="" class="login active" style="width: 150%" id="pick'.@$grid_data["grid_id"].'">
				<tr class="w3-text-black">
					<td onclick="set_idLink(this.id)"   id="'. @$grid_data["grid_id"].'&del_count='. @$grid_id_count.'">';
					if( @$grid_data["grid_id"]==$get_grid_id){
						echo '<input  type="radio" name="pick" checked onload="picked(this.id)" id="'.@$grid_data["grid_id"].'"></td>
							<td ><input type="text" class="w3-text-black" name="edit_name_grid" maxlength="20" required value="'. @$grid_data["name"].'" id="name'.@$grid_data["grid_id"].'"/></td>
							<td ><input type="text" class="w3-text-black" name="edit_sold" maxlength="10" required value="'. @$grid_data["sold"].'"  id="sold'.@$grid_data["grid_id"].'"/></td> 
							<td ><input type="text" class="w3-text-black" name="edit_look" maxlength="10" required value="'. @$grid_data["look"].'"  id="look'.@$grid_data["grid_id"].'"/></td> 
							<td ><input type="text" class="w3-text-black" name="edit_think" maxlength="10" required value="'. @$grid_data["think"].'"  id="think'.@$grid_data["grid_id"].'"/></td>';
									/*
									測試用
									<td>順序: '. @$grid_id_count.'</td>
									<td>順序轉換後: '. @$grid_id_switch[$grid_id_count].'</td>
									<td>實際: '. @$grid_data["grid_id"].'</td>
									*/
					}else{
						echo '<input  type="radio" name="pick"></td> 
						<td class="popup" onclick="myFunction()">'. @$grid_data["name"].'<span class="popuptext" id="myPopup">
						<img src="img/SaleNumber.png" alt="載入中" ></span></td>
						<td>'. @$grid_data["sold"].'</td>
						<td>'. @$grid_data["look"].'</td>
						<td>'. @$grid_data["think"].'</td>';
					}

					if(($grid_id_count%12) ==0 && $grid_id_max  != 0){
						$none_add=1;
					}else if (($grid_id_count%12) ==0 && $grid_id_count == 12){
						$none_add=1;
					}else{
						$none_add=0;
					}

					$grid_id_max = $grid_id_count;
			echo '
				</tr>
			</form>';
		//建立Grid表格內容END
		}
		$grid_id_count++;
	}?>
	</table>
  </div>
</div>
<script type="text/javascript">
	//將選選取的格id加到網址上 以進行刪除或修改
	function set_idLink(x){		
		location.href += "&grid_id="+x;
		//alert(<php echo json_encode($grid_id_string); ?>);
	}
	// When the user clicks on div,彈出 popup圖
	function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
	}
</script>
