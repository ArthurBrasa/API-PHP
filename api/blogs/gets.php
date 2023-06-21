<?php 
    if ($acao == '') { echo json_encode(["error" => true, "msg" => "Caminho nao encontrado!"]);}
            
    if($acao == 'list' && $param == ''){

        $db = new DB();

        $connection = $db->connect();

        $rs = $connection->query(
            "
            SELECT 
                * 
            FROM 
                blog.articles 
            ORDER BY 
                created_at ASC
            "
        );

        $array_posts = $rs->fetchAll(PDO::FETCH_ASSOC);

        if ($array_posts)
        {
            echo json_encode($array_posts);
        }
        else
        {
            echo json_encode(["error" => true, "msg" => "Dados não existe!"]);
        }
        $connection = null;

    }

    if($acao == 'list' && $param != ''){

        if(!$filter = filter_var($param, FILTER_VALIDATE_INT)){
            echo json_encode(["error" => true, "msg" => "Entrada Inválida!"]);
        }else {

            $db = new DB();

            $connection = $db->connect();

            $stmt = $connection->prepare(
                "
                SELECT 
                    * 
                FROM 
                    blog.articles 
                WHERE 
                    id = :id; 
                "
            );
          
            $stmt->bindValue(":id", $param, PDO::PARAM_INT);
            $stmt->execute();

            // $stmt->bind_result($district);
            $post = $stmt->fetchObject();

            if ($post)
            {
                echo json_encode($post);
            }
            else
            {
                echo json_encode(["dados" => "Não existe dados!"]);
            }

            $connection = null;
        }

    }



?>