<?php
require ("database.php");
class courseElement {
 private $question;
 private $answer;
 private $lesson;
 private $type;
 private $id;
 public function getQuestion() {
 	return $this->question;
 }
 public function getAnswer() {
 	return $this->answer;
 }
 public function getLesson() {
 	return $this->lesson; 
 }
}
  class Course {
  private $courseQuestionCollection = array();
  private $database;
  public function __construct() {
  	$this->database = DataBase::getDataBase();
  }
  public function addElement($element) {
  	array_push($this->courseQuestionCollection, $element);
  }
  public function getElementCollection() {
  	return $this->courseQuestionCollection;
  }
  public function insertCourse($data) {

  	$request = mysqli_query($this->database,"INSERT INTO `COURSE` (`TITLE`) VALUES ('".$data["courseName"]."'); ");
  	$id=$this->database->insert_id;
    for ($i=0;$i<count($data["questions"]);++$i) {
    $request = mysqli_query($this->database,"INSERT INTO `QUESTIONS` (`COURSEID`,`VALUE`,`ANSWER`) VALUES ('".$id."', '".$data["questions"][$i]."','".$data["answers"][$i]."'); ");
    }

    for ($i=0;$i<count($data["lessons"]);++$i) {
         $request = mysqli_query($this->database,"INSERT INTO `LESSONS` (`COURSEID`,`VALUE`) VALUES ('".$id."',  '".$data["lessons"][$i]."'); ");
  
    }
    print_r($data);
  	return $id;
  }
  }

?>