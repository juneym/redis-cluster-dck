<?php
ini_set('memory_limit', '500M');
require_once __DIR__ . "/../vendor/autoload.php";

echo "Hello, World\n";


$params = [
	'tcp://redis_master?database=15&alias=master',
	'tcp://redis_s1?database=15&alias=slave',
	'tcp://redis_s2?database=15&alias=slave',
];
$client = new Predis\Client($params, ['replication' => true]);

for ($x = 0; $x < 1000; $x++) {
	$client->set('foo' . $x, 'bar ' . rand(0,100000));	
}

$client->set('bigstr', str_repeat("A\n", 1.6e+7));
$value = $client->get('foo0');
var_dump($value);
var_dump($client->get('bigstr'));

// phpinfo();
