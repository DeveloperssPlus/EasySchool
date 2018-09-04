<?php

/* CONFIG */
$zipfileName = $_POST['html-file-name'];
if($zipfileName == ''){
  $zipfileName = 'custom-admin';
}


$filename = $zipfileName.".zip"; //use the /tmp folder to circumvent any permission issues on the root folder

/* END CONFIG */
	

$zip = new ZipArchive();

$zip->open($filename, ZipArchive::CREATE);


foreach( $_POST['pages'] as $page=>$content ) {

  $page = $_POST['html-file-name'];
  if($page == ''){
    $page = 'custom-admin';
  }

	$zip->addFromString($page.".html", $_POST['doctype']."\n".stripslashes($content));

}
	
$zip->close();


if ($zip->open($filename, ZipArchive::CREATE) === TRUE) {
    $zip->extractTo('../');
    $zip->close();

} 


$yourfile = $filename;

$file_name = basename($yourfile);

header("Content-Type: application/zip");
header("Content-Transfer-Encoding: Binary");
header("Content-Disposition: attachment; filename=$file_name");
header("Content-Length: " . filesize($yourfile));

readfile($yourfile);

unlink($filename);

unlink('website.zip');

exit;
?>