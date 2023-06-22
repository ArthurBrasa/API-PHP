<?php 

    if ($acao == '') { echo json_encode(["error" => true, "msg" => "Caminho nao encontrado!"]);}

    if ($acao == "adcionar" && $param == "") {
        
        try 
        {
            $db = new DB();
            $connection = $db->connect();
    
            $query = "
                INSERT INTO 
                    blog.articles
                VALUES
                    (DEFAULT, :title, :subTitle, :content, DEFAULT, DEFAULT);
            ";
    
            if(!isset($_POST["title"]) || !isset($_POST["content"]) || !isset($_POST["subTitle"]) ){
                echo json_encode(["error" => true, "msg" => "Dados nao foram inseridos!"]);
                exit;
            }
    
            $stmt = $connection->prepare($query);
            $stmt->bindValue(":title", $_POST["title"]);
            $stmt->bindValue(":subTitle", $_POST["subTitle"]);
            $stmt->bindValue(":content",  $_POST["content"]);
            $stmt->execute();
            echo json_encode(["error" => false, "msg" => "Dados inseridos com sucesso!"]);

        } 
        catch (PDOException $e) 
        {
            echo json_encode(["error" => true, "msg" => "Dados nao foram inseridos!"]);
        }


        $connection = null;


    }

?>