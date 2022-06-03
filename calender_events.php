<?php 

	include('pages/required/db_connection.php');
	include('pages/required/tables.php');
	require('pages/required/functions.php');
	
	$data = array();
	
	$query = "SELECT 
				l.*,
				c.coursename 
			  FROM 
			  	laballocations l
			  	INNER JOIN courses c on c.cid = l.coursecode
			  WHERE 
			  	1=1";
	$result = db_all($query);
	
	//print_r($result);
	foreach($result AS $rs){
		$data [] = array(
			'id' => $rs['allocationid'],
			'title' => $rs['coursename'],
			'start' => $rs['day'],
			'end' => $rs['day'],
			'allDay' : true,
          	'backgroundColor': "#00c0ef", //Info (aqua)
          	'borderColor': "#00c0ef" //Info (aqua)
			);
	}
	//var_dump($data);
	echo json_encode($data);
?>