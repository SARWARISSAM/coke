<?php 
session_start(); 
$text = rand(1000,9999); 
$_SESSION["vercode"] = $text; 
$height = 25; 
$width = 65; 
$image_p = imagecreate($width, $height); 
$black = imagecolorallocate($image_p, 150, 150, 150);
$white = imagecolorallocate($image_p, 0, 0, 0);  
$font_size = 24; 
imagestring($image_p, $font_size, 5, 5, $text, $white); 
imagejpeg($image_p, null, 80); 
?>