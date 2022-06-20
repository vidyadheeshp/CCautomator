	<?php 
ini_set('display_errors', 1);
?>
<?php 

/*	if (session_id() == '') {
    session_start();
	//$_SESSION['first_name']=$result[0];
	$login_id = $_SESSION['s_id'];
}*/
	include('../pages/required/db_connection.php');
	include('../pages/required/tables.php');
	require('../pages/required/functions.php');

	$id  = $_POST['p1'];


	$query = "SELECT 
				l.*,
				c.coursename,
				c.coursecode,
				la.labname,
				c.deptid,
				DATE_FORMAT(l.date_start,''),
				DATE_FORMAT(l.date_start,'%h:%m:%s')AS start_time,
				DATE_FORMAT(l.date_end,'%h:%m:%s') AS end_time
			  FROM 
			  	laballocations l
			  	INNER JOIN courses c on c.cid = l.coursecode
			  	INNER JOIN labs la ON la.labid = l.labid
			  WHERE 
			  	1=1";
	$result = db_all($query);


?>
<table class="table table-bordered table-responsive">
	<tr>
		<th>Lab Name</th>
		<th>Lab Number</th>
		<th>Course</th>
		<th>Sem</th>
		<th>Branch</th>
	</tr>
</table>