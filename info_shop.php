<?php include("navbar.php"); ?>
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<?php
 $con = mysqli_connect('localhost','root','','smartshelf');
?>
<!DOCTYPE HTML>
<html>
<head>
 <meta charset="utf-8">
 <title>Charts</title>
 <style>
	.container {
	  display: flex;
	  flex-flow: row wrap;
	  justify-content: center;
	  align-items: center;
	  text-align: center;
	}

	#columnchart {
	  display: inline-block;
	  margin: 0 auto;
	}
 </style>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 <script type="text/javascript">
 google.load("visualization", "1", {packages:["corechart"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([

 ['Date', 'Number'],
 <?php 
 //$query = "SELECT count(ip) AS count, vdate FROM visitors GROUP BY vdate ORDER BY vdate";
 
 $query = "SELECT look AS count, name AS vdate FROM grid GROUP BY vdate ORDER BY vdate";

 $exec = mysqli_query($con,$query);
 while($row = mysqli_fetch_array($exec)){

 echo "['".$row['vdate']."',".$row['count']."],";
 }
 ?>
 
 ]);

 var options = {
 title: '展示店家內各櫃的比較結果'
 };
 var chart = new google.visualization.ColumnChart(document.getElementById("columnchart"));
 chart.draw(data, options);
 }
 </script>
</head>
<body><br><br><br>
 <h3 align="center">數據分析圖表</h3>
 <div class = "container"> <!-- 置中 -->
 <div id="columnchart" style="width: 900px; height: 500px;"></div>
 </div>
</body>
</html>