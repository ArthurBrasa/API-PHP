<?php 

    if ($acao == '') { echo json_encode(["error" => true, "msg" => "Caminho nao encontrado!"]);}

    if($acao == 'atualizar' && $param == '') 
    {
        echo json_encode(["error" => true, "msg" => "Dados nao foram atualizados!"]);
    }
    elseif ($acao == 'atualizar' && $param != '')
    {
        if(!$filter = filter_var($param, FILTER_VALIDATE_INT))
        {
            echo json_encode(["error" => true, "msg" => "Entrada Inválida!"]);
        }
        else
        {
            // Pegando os valores
            // print_r(file_get_contents('php://input'));
            $_PUT = explode("&", file_get_contents('php://input'));
            
            $title = explode("=", $_PUT[0]);
            $title = urldecode($title[1]);

            $subTitle = explode("=", $_PUT[1]);
            $subTitle = urldecode($subTitle[1]);
            
            
            $content = explode("=", $_PUT[2]);
            echo $content;
            $content = urldecode($content[1]);
            echo $content;

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
                if($stmt->rowCount() == 1){
                    echo json_encode(["error" => false, "msg" => "Dados atualizado com sucesso!"]);
                }
                else
                {
                    echo json_encode(["error" => true, "msg" => "Dados não foi atualizado!"]);
                }

            } catch (PDOException $e) {
                echo json_encode(["error" => true, "msg" => "Dados nao foram atualizados!"]);
                print_r($e->errorInfo);
            }

            $connection = null;
        }
    }



?>