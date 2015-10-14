<?php

require_once('models/Siswa.php');

$peg = new Siswa();
$data = $peg->getSiswa();

echo '<pre>';
print_r($data);

$update = array(
	'full_name' => 'Surya s',
	'email' => 'surya.s@amikom'
);

echo '</pre>';