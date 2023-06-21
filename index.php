<?php 
    // CONFIGS INICIAS
    # Tipo de acesso
    header('Access-Control-Allow-Origin: *');
    # Tipo de Retorno da API
    header("Content-type: application/json");

    date_default_timezone_set("America/Sao_Paulo");


    // Definição de Rotas
    if (isset($_GET["path"])) { $path = explode("/", $_GET["path"]); } else { echo "Caminhao não existe"; exit;}

    if(isset($path[0])) { $api = $path[0]; } else { echo "Caminhao não existe"; exit; }

    if(isset($path[1])) { $acao = $path[1]; } else { $acao = ""; }
    
    if(isset($path[2])) { $param = $path[2]; } else { $param = ""; }

    $method = $_SERVER['REQUEST_METHOD'];

    require_once "classes/db.class.php";
    include_once "api/blogs/articles.php"


?>
