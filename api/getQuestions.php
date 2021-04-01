<?php
require ("course.php");
$data = json_decode(file_get_contents("php://input"), true);
$questions = new Course();
echo (json_encode($questions->getCourseQuestionsById($data["courseId"])));

?>