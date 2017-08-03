<?php
  include("function/condb.php");
  include("function/db_pdo_conn.php");  
?>

  <title>SmartShelf</title>
  <link rel="shortcut icon" href="img/logo.png"/>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/w3.css">
  <link rel="stylesheet" type="text/css" href="css/newHome_style.css">
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <link rel="stylesheet" type="text/css" href="css/table.css" />
  <style>
  
    body {
	    background-image: url(img/p3.jpg);
	    background-repeat: no-repeat;
	    background-attachment: fixed;
	    background-position: center;
	    background-size: cover;
	}

  	#footer {
		position:fixed;
		left:91%;
		bottom:1%;
	}
	#footerback,
	#footernext {
		text-align: center;        
		width: 50px;
		float: right; 
	}

	body {font-family: "Lato", sans-serif}
	.w3-wide {letter-spacing: 10px;}
	.w3-hover-opacity {cursor: pointer;}

  </style>

<script type="text/javascript">
var shelf_num=0;

window.onload = function add(){
	var i=document.getElementById("drop").getAttribute('value');
	for(var t=1;t<=i;t++){
		  var x=document.getElementById("drop");
		  x.innerHTML+="<a href='row.php?&shop_id=shop"+t+"?&shelf_id=shelf"+t+".php'>第"+t+"排</a> ";
	 }
	 //next_shelf();
  }
/*
 function next_shelf(){
	var x=document.getElementById("drop");
	x.id='drop'+shelf_num;
	shelf_num++;
  } 

function add1(){
	
	for(var t=0;t<7;t++){
		  var x=document.getElementById("drop1");
		  x.innerHTML+="<a href='row"+t+".php'>第"+111+"排</a> ";
	 }

  }

  function add2(){
	var i=document.getElementById("drop0").getAttribute('value0');
	for(var t=0;t<i;t++){
		  var x=document.getElementById("drop0");
		  x.innerHTML+="<a href='row"+t+".php'>第"+0+"排</a> ";
	 }

  }*/

</script>


<!--Navbar-->
<div class="w3-top" style="font-family:Microsoft JhengHei;">
  <ul class="w3-navbar w3-black w3-card-2 w3-left-align">
  
  	  <!--顯示店家-------------------------------------------------------------------------->
  	  <?php
		$get_shop_id = @$_GET['shop_id'];
		$shop = "SELECT * FROM shop where shop_id = '$get_shop_id'";
		$get_shop = $db->query($shop);
		
		$sql = "SELECT * FROM shop";
		$result = $db->query($sql);
      
	  if($shop_data = $get_shop->fetch()) {
		echo '<li class="w3-hide-small w3-dropdown-hover"><div>';
		echo '<a href="javascript:void(0)" class="w3-hover-none w3-Indigo w3-hover-Indigo w3-hover-text-white w3-padding-large"><b>';
		echo @$shop_data[1];	//shop name
		echo '</b></a>';
	  }
	  else{
		  echo '<li class="w3-hide-small w3-dropdown-hover"><div>';
		  echo '<a href="index.php" class="w3-hover-none w3-Indigo w3-hover-Indigo w3-hover-text-white w3-padding-large"><b>店家</b></a>';
	  }

      echo '<div class="w3-dropdown-content w3-white w3-card-4">';
			while($shop_name = $result->fetch()) {
				echo '<a href="index.php?&shop_id='.$shop_name[0].'"><b>';		//shop id
				echo $shop_name[1];	//shop name
				echo '</b></a>';
			}
	  echo '</div></li>';
	  ?>
	  <!--顯示店家END------------------------------------------------------------------------>

      <!--顯示該店家的櫃子------------------------------------------------------------------>
		<?php
			$sql2 = "SELECT * FROM shelf where shop_id = '$get_shop_id'";
			$result2 = $db->query($sql2);
			$count=0;

		  while($shelf_data = $result2->fetch()) {
			echo '<li class="w3-hide-small w3-dropdown-hover">';
			echo '<a href="javascript:void(0)" class="w3-hover-none w3-padding-large">';
			echo @$shelf_data[2];		//shelf name
			echo '</a>';
			echo '<div class="w3-dropdown-content w3-white w3-card-4" id="drop" value="';
			echo @$shelf_data[3];		//row num
			echo '"></div></li>';
		  }
	  	?>
	  <!--顯示該店家的櫃子END---------------------------------------------------------------->
	
	  <!--店家與展示櫃的新增、刪除、修改----------------------------------------------------->
		<?php
		  if($get_shop_id) {
			echo '<li class="w3-hide-small w3-red w3-right w3-dropdown-hover">';
			echo '<a href="javascript:void(0)" class="w3-hover-red w3-padding-large"><b>　　EDIT　　</b></a>';
			echo '<div class="w3-dropdown-content w3-white w3-card-4" >';
			echo '<a href="add_shelf.php?&shop_id='.$get_shop_id.'">新增展示櫃</a>';	//shop id
			echo '<a href="edit_shop.php?&shop_id='.$get_shop_id.'">編輯店家名稱</a>';
			echo '<a href="info_shop.php?&shop_id='.$get_shop_id.'">展示此店家</a>';
			echo '<a href="del_shop.php?&shop_id='.$get_shop_id.'">刪除此店家</a>';
			echo '</div></li>';
		  }
		  else{
			echo '<li class="w3-hide-small w3-red w3-right w3-dropdown-hover">';
			echo '<a href="javascript:void(0)" class="w3-hover-red w3-padding-large"><b>　　EDIT　　</b></a>';
			echo '<div class="w3-dropdown-content w3-white w3-card-4" >
				  <a href="add_shop.php">新增店家</a>
				 </div></li>';
		  }
		?>
	<!--店家與展示櫃的新增、刪除、修改END-------------------------------------------------->
	
  </ul>
</div>

<div id="footer">
	<div id="footerback">
	<a href=index.php><img src="img/home.png"/>
	</div>
</div>