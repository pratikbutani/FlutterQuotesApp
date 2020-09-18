<?php 
	include("config.php");
	
	date_default_timezone_set('Asia/Kolkata');
	mysqli_query($conn, "set character_set_results='utf8'");
	
	$query = "SELECT * FROM quotes ORDER BY rand() LIMIT 1";
	
	$result=mysqli_query($conn, $query);
	$data = array();
	
	while($rows = mysqli_fetch_assoc($result))
	{
		$data = $rows;
	}
	
	if($data) {
		$arr = array('result' => 'success', 'message' => 'Results found', 'data' => $data);
		echo json_encode($arr, JSON_NUMERIC_CHECK);
	} else {
		$arr = array('result' => 'error', 'message' => 'No records found', 'data' => array()); 
		echo json_encode($arr);
	}
?>