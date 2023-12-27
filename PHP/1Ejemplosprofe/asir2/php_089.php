<?php
// file container where all texts are to be written
$fileContainer = date("MjY").'.log';
// open the said file
$filePointer = fopen($fileContainer,"w+b");
// text to be written in the file
$logMsg = "You are located at ".$_SERVER["REMOTE_ADDR"]."\n";
// below is where the log message has been written to a file.
fputs($filePointer,$logMsg);
fputs($filePointer,"Esta es la ultima linea");
// close the open said file after writing the text
fclose($filePointer);
?>