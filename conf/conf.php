<?php
	Define('SERVER','localhost');
	Define('USER','root');
	Define('PASSWORD','');
	Define('DB','vaccination_management_system');

	$conn = mysqli_connect(SERVER,USER,PASSWORD,DB);
	if (!$conn) {
		$conn = null;
		die("Mysql Connection failed".mysqli_connect_error());
	} 
?>