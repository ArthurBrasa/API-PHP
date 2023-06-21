<?php 

    if ($acao == '') { echo json_encode(["error" => true, "msg" => "Caminho nao encontrado!"]);}

    if($acao == 'atualizar' && $param == '') 
    {
        echo json_encode(["error" => true, "msg" => "Dados nao foram atualizados!"]);
    }
    elseif ($acao == 'atualizar' && $param != '')
    {
        // Pegando os valores
        // print_r(file_get_contents('php://input'));
        $_PUT = explode("&", file_get_contents('php://input'));
        
        $title = explode("=", $_PUT[0]);
        $title = str_replace("%20", " ", $title[1]);

        $subTitle = explode("=", $_PUT[1]);
        $subTitle = str_replace("%20", " ", $subTitle[1]);
        
        
        $content = explode("=", $_PUT[2]);
        $content = str_replace("%20", " ", $content[1]);


        $db = new DB();
        $connection = $db->connect();

        $query = "
            UPDATE 
                blog.articles set 
                title = :title, 
                subTitle = :subTitle, 
                content = :content, 
                updated_at = DEFAULT 
            WHERE 
                id = :id;";

        $stmt = $connection->prepare($query);
        $stmt->bindValue(":title", $title);
        $stmt->bindValue(":subTitle", $subTitle);
        $stmt->bindValue(":content", $content);
        $stmt->bindValue(":id", $param, PDO::PARAM_INT);


        try {
            $stmt->execute();
            echo json_encode(["error" => false, "msg" => "Dados atualizado com sucesso!"]);

        } catch (PDOException $e) {
            echo json_encode(["error" => true, "msg" => "Dados nao foram atualizados!"]);
            print_r($e->errorInfo);
        }

        $connection = null;
        
    }



?>