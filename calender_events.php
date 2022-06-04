<?php 

	include('pages/required/db_connection.php');
	include('pages/required/tables.php');
	require('pages/required/functions.php');
	
	$data = array();
	
	$query = "SELECT 
				l.*,
				c.coursename,
				DATE_FORMAT(l.start,'%h:%s:%m') AS start_time,
				DATE_FORMAT(l.end,'%h:%s:%m') AS end_time
			  FROM 
			  	laballocations l
			  	INNER JOIN courses c on c.cid = l.coursecode
			  WHERE 
			  	1=1";
	$result = db_all($query);
	//echo 
	//print_r($result);
	foreach($result AS $rs){
		$data [] = array(
			'id' => $rs['allocationid'],
			'title' => $rs['coursename'],
			'start' => $rs['start'],
			'end' => $rs['end'],
			'allDay' => false,
			'startStr' =>  $rs['start_time'],
			'endStr' => $rs['end_time'],
          	'backgroundColor'=> "#00c0ef", //Info (aqua)
          	'borderColor' => "#00c0ef" //Info (aqua)
			);
	}
		//var_dump($data);
	echo json_encode($data,JSON_HEX_TAG);
?>