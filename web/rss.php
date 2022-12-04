<?php
/**Connection */
$co = new PDO('mysql:host=localhost;dbname=watson;charset=utf8','watson','watson');
$sql = " SELECT * FROM tl_liens ORDER BY lien_id DESC LIMIT 15";
$result = $co->prepare($sql);
$result->execute();
$res = $result->fetchAll();
$i=0;
/**xml */
$xmlFile = new DOMDocument('1.0', 'utf-8');
$xmlFile->appendChild($rss = $xmlFile->createElement('channel'));
foreach ($res as $re) {
        $rss->appendChild($lien = $xmlFile->createElement('item'));
        $lien->appendChild($xmlFile->createElement('title', $re['lien_titre']));
        $lien->appendChild($xmlFile->createElement('link', $re['lien_url']));
        $lien->appendChild($xmlFile->createElement('description', $re['lien_desc']));
}
$xmlFile->formatOutput = true;
$xmlFile->save('rss.xml');
$lin="<a href='rss.xml'>Ici pour voir le fichier</a>";
echo "Le flux rss à été créé ! ".$lin;

?>