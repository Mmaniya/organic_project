<?php

function removeItemString($str, $item) {
	$parts = explode(',', $str);
	while(($i = array_search($item, $parts)) !== false) {
	unset($parts[$i]);
	}
	return implode(',', $parts);
	}


	function randomPassword() {
		$alphabet = "ABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
		$pass = array(); //remember to declare $pass as an array
		$alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
		for ($i = 0; $i < 6; $i++) {
			$n = rand(0, $alphaLength);
			$pass[] = $alphabet[$n];
		}
		return implode($pass);
	}

	function random_number($size){
		$random_number='';
		$count = 0;
		while ($count < $size ) 
			{
				$random_digit = mt_rand(0, 9);
				$random_number .= $random_digit;
				$count++;
			}
		return 'USID'.$random_number;  
	}


?>