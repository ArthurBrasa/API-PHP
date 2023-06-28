<?php 
    // CONFIGS INICIAS
    # Tipo de acesso
    header('Access-Control-Allow-Origin: *');
    # Tipo de Retorno da API
    header('Content-Type: application/json; charset=utf-8');
    # Autenticação HTTP Basic
    header('Authorization: Basic YWRtaW46YWRtaW4=');
    # Métodos de acesso
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
    # Tempo de acesso
    header('Access-Control-Max-Age: 1');


    date_default_timezone_set("America/Sao_Paulo");

    // credencias esperadas
     $expectedUsername = 'admin';
     $expectedPassword = 'admin';

     // verificar se as credencias estão corretas
    if ( !isset($_SERVER['PHP_AUTH_PW']) || !isset($_SERVER['PHP_AUTH_USER'])) {
        header('HTTP/1.1 401 Unauthorized');
        header('WWW-Authenticate: Basic realm="Acesso Restrito"');
        exit('Acesso Restrito');
    }

    // Verifique as credenciais
    $username = $_SERVER['PHP_AUTH_USER'];
    $password = $_SERVER['PHP_AUTH_PW'];

    if ($username !== $expectedUsername || $password !== $expectedPassword) {
        header('HTTP/1.1 401 Unauthorized');
        header('WWW-Authenticate: Basic realm="Authorization Required"');
        echo 'Credenciais inválidas.';
        exit;
    }




    // Definição de Rotas
    if (isset($_GET["path"])) { $path = explode("/", $_GET["path"]); } else { echo "Caminhao não existe"; exit;}

    if(isset($path[0])) { $api = $path[0]; } else { echo "Caminhao não existe"; exit; }

    if(isset($path[1])) { $acao = $path[1]; } else { $acao = ""; }
    
    if(isset($path[2])) { $param = $path[2]; } else { $param = ""; }

    $method = $_SERVER['REQUEST_METHOD'];
    
    require_once "classes/db.class.php";
    include_once "api/blogs/articles.php";

