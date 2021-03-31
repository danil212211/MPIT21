<?php
	 class DataBase {
		public static function getDataBase() {	
			$db=mysqli_connect ("localhost","root","Gfhjkm9988");
			mysqli_select_db($db,"MPIT");
			mysqli_query($db,"SET NAMES utf8");
			return $db;			
		}	
	 }
?>