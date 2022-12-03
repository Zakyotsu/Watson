<?php
/**Connection */

$connection = new PDO('mysql:host=localhost;dbname=watson;charset=utf8','watson','watson');
$sqltables = " SELECT * FROM tl_liens ORDER BY lien_id DESC LIMIT 15";
$res = $connection->prepare($sqltables);
$res->execute();
$results = $res->fetchAll();
$i=0;
/** rss*/
$xml = new DOMDocument('1.0', 'utf-8');
$xml->appendChild($rss = $xml->createElement('channel'));
foreach ($results as $result) {
        $rss->appendChild($lien = $xml->createElement('item'));
        $lien->appendChild($xml->createElement('title', $re['lien_titre']));
        $lien->appendChild($xml->createElement('link', $re['lien_url']));
        $lien->appendChild($xml->createElement('description', $re['lien_desc']));
}
$xml->formatOutput = true;
$xml->save('rss.xml');
$xmlFile="<a href='rss.xml'>Fichier RSS</a>
";
echo "Flux RSS  ".$xmlFile;

?>