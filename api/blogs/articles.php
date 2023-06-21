<?php 
    // require_once "../../classes/db.class.php";
    
    if($api == 'blogs') {
        if($method == "GET")
        {    
            include_once "gets.php";
        }

        if($method == "POST") 
        {    
            include_once "post.php";
        }
    }


?>