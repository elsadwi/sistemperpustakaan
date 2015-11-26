<?php

	require_once('lib/DBClass.php');
	$db = new DBClass();
	
	$conn = $db->connect();
	
	//print_r($conn);
	$query = "select * from Buku limit 0,5";
	$row = $db->getRows($query);
	
	print '<pre>';
	print_r($row);
	print '</pre)';
?>