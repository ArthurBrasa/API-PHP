<?php 

    if ($acao == '') { echo json_encode(['error' => 'Caminho nao encontrado']);}

    if ($acao == "adcionar" && $param == "") {
        $db = new DB();
        $connection = $db->connect();

        $query = "
            INSERT INTO 
                blog.articles
            VALUES
                (DEFAULT, :title, :subTitle, :content, :idUser, DEFAULT, DEFAULT);
        ";

        if(!isset($_POST["title"]) || ($_POST["content"]) || ($_POST["subTitle"]) || ($_POST["idUser"]) ){
            echo json_encode(["error" => true, "msg" => "Dados nao foram inseridos!"]);
            exit;
        }

        $stmt = $connection->prepare($query);
        $stmt->bindValue(":title", $_POST["title"]);
        $stmt->bindValue(":subTitle", $_POST["subTitle"]);
        $stmt->bindValue(":content", $_POST["content"]);
        $stmt->bindValue(":idUser", $_POST["idUser"]);

        try {
            $stmt->execute();
            echo json_encode(["error" => false, "msg" => "Dados inseridos com sucesso!"]);

        } catch (PDOException $e) {
            echo json_encode(["error" => true, "msg" => "Dados nao foram inseridos!"]);
        }


        $connection = null;


    }

?>