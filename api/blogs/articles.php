<?php

    if($api == 'blogs') {

        /*
            Método reponsavel por pegar um valor/varios e retorna um JSON
        */
        if($method == "GET")
        {
            include_once "gets.php";
        }

        /*
            Método reponsavel por inserir um valor e retorna um JSON
        */
        if($method == "POST")
        {
            include_once "post.php";
        }
        /*
           Método reponsavel por atualizar um valor e retorna um JSON
       */
        if($method == "PUT")
        {
            include_once "put.php";
        }

        /*
           Método reponsavel por deletar um valor e retorna um JSON
       */
        if($method == "DELETE")
        {
            include_once "delete.php";
        }

    }


?>