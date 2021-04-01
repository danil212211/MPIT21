<?php
require("course.php");
$course= new Course();
echo (json_encode($course->getCourses()));
?>