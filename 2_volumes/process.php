<?php

    $message = $_POST["message"];

    $dir = "./messages";
    is_dir($dir) || mkdir($dir);

    $files = glob($dir . "/*");
    $num_files = count($files);
    
    $filename = "msg-{$num_files}.txt";
    $file = fopen($dir . "/{$filename}", "w");
    fwrite($file, $message);
    fclose($file);

    header("Location: index.php");
