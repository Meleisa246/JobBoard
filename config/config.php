<?php 


    try {
        
        //$host = "localhost";

        //$dbname = "jobboard";
    
        //$user = "root";
    
        //$pass = "";

        $host = "sql107.infinityfree.com";

        $dbname = "if0_35473745_jobboard";
    
        $user = "if0_35473745";
    
        $pass = "nBsEZ6ee3Ti";
    
    
        $conn = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    } catch(PDOException $e) {
        echo $e->getMessage();
    }
   
    // if($conn == true) {
    //     echo "connected successfully";
    // } else {
    //     echo "err";
    // }




