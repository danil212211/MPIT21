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
  public function insertCourse() {

  	$request = mysqli_query($this->database,"INSERT INTO `COURSE` (`QUESTIONS`) VALUES ('123'); ");
  	
  	return $this->database->insert_id;
  }
  }

?>