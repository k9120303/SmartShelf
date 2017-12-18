<meta http-equiv="refresh" content="10">
<head>
	<link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>
	<link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css'>
	<link rel="stylesheet" href="css/row_table.css">
</head>
<div class="container"><br><br><br><br>
 	<div id="table" class="table-editable">
	<?php error_reporting (E_ALL & ~E_NOTICE);?>
	<label style="-webkit-text-stroke: 0.1px black; color:#700; font-size: 25px; font-family: Microsoft JhengHei;">※ 表格依序由上到下，為該排之商品從左到右</label>
    
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
	$grid_id_count= ($get_col_order-1)*13;

	//建立Grid表格內容
	while($grid_data = $result->fetch()){
		$grid_id_switch[$grid_id_count] = $grid_data["grid_id"];
		if($grid_data["grid_id"] != '0'){
			echo '
			<form name="form1" id="form1" method="post" action="" class="login active" style="width: 150%" id="pick'.@$grid_data["grid_id"].'">
				<tr class="w3-text-black">
					<td onclick="set_idLink(this.id)"   id="'. @$grid_data["grid_id"].'">';
					if( @$grid_data["grid_id"]==$get_grid_id){
						echo '<input  type="radio" name="pick" checked onload="picked(this.id)" id="'.@$grid_data["grid_id"].'"></td>
							<td ><input type="text" class="w3-text-black" name="edit_name_grid" maxlength="20" required value="'. @$grid_data["name"].'" id="name'.@$grid_data["grid_id"].'"/></td>
							<td ><input type="text" class="w3-text-black" name="edit_sold" maxlength="10" required value="'. @$grid_data["sold"].'"  id="sold'.@$grid_data["grid_id"].'"/></td> 
							<td ><input type="text" class="w3-text-black" name="edit_look" maxlength="10" required value="'. @$grid_data["look"].'"  id="look'.@$grid_data["grid_id"].'"/></td> 
							<td ><input type="text" class="w3-text-black" name="edit_think" maxlength="10" required value="'. @$grid_data["think"].'"  id="think'.@$grid_data["grid_id"].'"/></td> ';
					}else{
						echo '<input  type="radio" name="pick"></td> 
						<td>'. @$grid_data["name"].'</td>
						<td>'. @$grid_data["sold"].'</td>
						<td>'. @$grid_data["look"].'</td>
						<td>'. @$grid_data["think"].'</td>
						<td>'. @$grid_id_count.'</td>
						<td>'. @$grid_id_switch[$grid_id_count].'</td>';
					}
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
</script>