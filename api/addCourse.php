<?php
	require("course.php");
	$data = json_decode(file_get_contents("php://input"), true);
	$ol = new Course();
	$qwe=$ol->insertCourse();
	print_r($qwe);

?>