<?php 

    class DB
    {
        private $host;
        private $user;
        private $pass;
        private $database;

        public function __construct(string $host="mysql:host=localhost;bdname=pitagoras", string $user="root", string $pass="", string $database="blog")
        {
            $this->host = $host;
            $this->user = $user;
            $this->pass = $pass;
            $this->database = $database;
        }

        public function connect()
        {
            try 
            {
                // conectando
                $connection = new PDO($this->host, $this->user, $this->pass);
                return $connection;
            } 
            catch (PDOException $e)
            {
                return "Código de Erro: ". $e->getCode() . " Mensagem: ". $e->getMessage();
            }


        }
    }

    ?>