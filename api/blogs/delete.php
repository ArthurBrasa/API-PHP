<?php 

    if ($acao == '') { echo json_encode(["error" => true, "msg" => "Caminho nao encontrado!"]);}

    if($acao == 'remover' && $param == '') 
    {
        echo json_encode(["error" => true, "msg" => "Dado nao foi encontrado!"]);
    }
    elseif ($acao == 'remover' && $param != '')
    {
        if(!$filter = filter_var($param, FILTER_VALIDATE_INT))
        {
            echo json_encode(["error" => true, "msg" => "Entrada Inválida!"]);
        }
        else
        {
            $db = new DB();
            $connection = $db->connect();

            $query = "
                DELETE FROM
                    blog.articles 
                WHERE 
                    id = :id;";

            $stmt = $connection->prepare($query);
            $stmt->bindValue(":id", $param, PDO::PARAM_INT);


            try {
                $stmt->execute();
                if($stmt->rowCount() == 1)
                {
                    echo json_encode(["error" => false, "msg" => "Dado removido com sucesso!"]);
                }
                else
                {
                    echo json_encode(["error" => true, "msg" => "Dado nao existe!"]);
                }

            } catch (PDOException $e) {
                echo json_encode(["error" => true, "msg" => "Dado nao foi removido!"]);
                print_r($e->errorInfo);
            }

            $connection = null;
        }
        
    }



?>