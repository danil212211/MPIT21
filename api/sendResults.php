<?php
include("user.php");
$user=new User($_COOKIE['uid']);
echo ($user->userID);
?>