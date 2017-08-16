<head>
	<link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>
	<link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css'>
	<link rel="stylesheet" href="css/row_table.css">
</head>

<div class="container">
  <br><br><br><br><br>
  
  <div id="table" class="table-editable">
    <span class="table-add glyphicon glyphicon-plus"></span>	<!-- 新增 -->
	<label style="-webkit-text-stroke: 0.1px black; color:#700; font-size: 25px; font-family: Microsoft JhengHei;">※表格從上到下，為該排的商品從左到右</label>
    <table class="table">
	<!--示範--------------------------------------------------------------------------------->
      <tr>
        <th>商品名稱</th>
        <th>賣出數量</th>
		<th>稍微看看</th>
		<th>超猶豫</th>
        <th>刪除商品</th>
        <th>移動位置</th>
      </tr>
      <tr>
        <td contenteditable="true">(範例) 書(自行調整)</td>
		<td contenteditable="true">4(自行調整)</td>
		<td>8(裝置偵測)</td>
        <td>7(裝置偵測)</td>
        <td>
          <span class="table-remove glyphicon glyphicon-remove"></span>		<!-- 刪除 -->
		  (點此刪除)
        </td>
        <td>(上下移動)</td>
      </tr>
	  <!--示範END------------------------------------------------------------------------------>
	  <!--抓資料------------------------------------------------------------------------------->
	  <?php
	  $grid = "SELECT * FROM grid WHERE row_id = '$get_row_id'";
	  $result = $db->query($grid);
	  
	  while($grid_data = $result->fetch()){
	  echo'
      <tr>
        <td contenteditable="true">'. @$grid_data["name"].'</td>
		<td contenteditable="true">'. @$grid_data["solded"].'</td>
		<td>'. @$grid_data["look"].'</td>
        <td>'. @$grid_data["think"].'</td>
        <td>
          <span class="table-remove glyphicon glyphicon-remove"></span>
        </td>
        <td>
          <span class="table-up glyphicon glyphicon-arrow-up"></span>		<!-- 上移 -->
          <span class="table-down glyphicon glyphicon-arrow-down"></span>	<!-- 下移 -->
        </td>
      </tr>';
	  }
	  ?>
	  <!--抓資料END---------------------------------------------------------------------------->
      <!-- This is our clonable table line ---------------------------------------------------->
      <tr class="hide">
        <td contenteditable="true">Untitled</td>
		<td contenteditable="true">0</td>
		<td>0</td>
        <td>0</td>
        <td>
          <span class="table-remove glyphicon glyphicon-remove"></span>
        </td>
        <td>
          <span class="table-up glyphicon glyphicon-arrow-up"></span>		<!-- 上移 -->
          <span class="table-down glyphicon glyphicon-arrow-down"></span>	<!-- 下移 -->
        </td>
      </tr>
	  <!-- This is our clonable table line END------------------------------------------------->
    </table>
  </div>
  
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
<script src='https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.6.0/underscore.js'></script>
<script src="function/row_table.js"></script>