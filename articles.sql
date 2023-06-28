-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2023 at 01:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00" 


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subTitle` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `subTitle`, `content`, `created_at`, `updated_at`) VALUES
(127, 'Nier: Automata Ver1.1a', 'O jogo que virou Anime!', 'Nier: Automata Ver1.1a é uma série de anime baseada no jogo homônimo desenvolvido pela PlatinumGames e publicado pela Square Enix. A série está sendo produzida pela A-1 Pictures e está com lançamento planejado para Janeiro de 2023. Wikipédia', '2023-03-20 21:34:57', '2023-03-20 21:34:57'),
(128, 'Laravel', 'Framework PHP', 'Laravel é um framework PHP livre e open-source criado por Taylor B. Otwell para o desenvolvimento de sistemas web que utilizam o padrão MVC. Wikipédia', '2023-03-20 21:37:06', '2023-03-20 21:37:06'),
(130, 'CSS, HTML E JS', 'O Kit Básico de Todo o DEV Frontend!', 'Para todos os devs que estão iniciando sua jornada em programação web, CSS, HTML e JS são as principais linguagens que você precisa aprender. HTML é responsável pela estrutura do site, CSS é responsável pelo estilo e aparência, e JS é responsável pela interatividade e dinamismo. Comece aprendendo HTML para entender como a estrutura do site funciona e como adicionar elementos como imagens, links e formulários. Em seguida, aprenda CSS para personalizar a aparência do site, como fontes, cores e layout. Por fim, aprenda JS para adicionar interatividade, como animações e eventos de clique. Com essas três linguagens, você pode criar sites incríveis e dar vida às suas ideias na web!', '2023-03-21 04:51:02', '2023-03-21 04:51:02'),
(132, 'Anime Summit', 'Evento de Anime em Brasília - 2023', 'Anime Summit foi um evento relacionado à cultura pop japonesa, como convenções e festivais que reúnem fãs e entusiastas do anime e mangá de todo o mundo. Esse evento  inclui diversas atividades, como exibições, concursos, painéis de discussão, apresentações ao vivo e estandes de vendas, proporcionando aos participantes uma experiência única e imersiva no mundo dos animes.', '2023-03-21 04:59:50', '2023-03-21 04:59:50'),
(133, 'League of Legends', 'Um jogo no estilo MOBA!', 'League of Legends é um dos jogos mais jogados do mundo. Conquistou fãns do mundo todo e continua sendo muito popular nos dias de hoje. Ele é responsável tambem por abrir portas para vários jovens no mercado de games.', '2023-03-21 05:28:21', '2023-03-21 05:28:21'),
(134, 'React', 'Uma Biblioteca Frontend Muito Poderosa!', 'O React é uma biblioteca front-end JavaScript de código aberto com foco em criar interfaces de usuário em páginas web. fonte: Wikipédia', '2023-03-21 05:30:08', '2023-03-21 05:30:08'),
(139, 'Prolog', 'O que é Prolog?', 'Prolog é uma linguagem de programação de lógica declarativa, utilizada em inteligência artificial, processamento de linguagem natural, sistemas especialistas, entre outras áreas. A sigla Prolog significa \"Programming in Logic\" (Programação em Lógica, em português).\r\n\r\nDiferente das linguagens de programação convencionais, Prolog se baseia em um modelo de programação lógica, no qual os programas são compostos por regras e fatos declarativos, e a computação é feita através da dedução lógica dessas regras e fatos.\r\n\r\nNa prática, isso significa que o programador especifica o que o programa deve fazer, em vez de como fazer, e o Prolog deduz a solução a partir das regras e fatos declarados. Isso torna Prolog particularmente útil para lidar com problemas complexos que envolvem raciocínio lógico e inferência.', '2023-04-01 22:48:40', '2023-04-01 22:48:40'),
(143, 'Valor', 'valor subtitle descrip afkjaslasdf fakj 20', 'iu asdpirakl daoufia ksf 283fj dfsad', '2023-04-01 23:13:21', '2023-06-22 02:00:28'),
(150, '5432676859069-087867564534', 'asfd', 'as', '2023-04-02 01:11:59', '2023-04-02 01:11:59'),
(151, 'rewq', 'rwqer', 'qwer', '2023-04-02 01:15:07', '2023-04-02 01:15:07'),
(152, '67878675345 - teste', '657978', '6756435786', '2023-04-02 01:19:17', '2023-04-02 01:19:17'),
(154, 'rasdas', 'ras', 'rasdrasdr', '2023-04-02 01:21:07', '2023-04-02 01:21:07'),
(155, '143143', '12342134', '23', '2023-04-02 01:22:17', '2023-04-02 01:22:17'),
(156, 'Mudando o titulo', 'Isso %C3%A9 uma descri%C3%A7%C3%A3o qualquer', 'API stands for Application Programming Interface. It is a set of rules and protocols that allows different software applications to communicate and interact with each other. APIs define the methods and data formats that applications can use to request and exchange information.%0A%0A', NULL, '2023-06-22 11:31:27'),
(158, 'res32432423432re', 'res', 'area', NULL, NULL),
(159, 'res32432423432re', 'res', 'area', '2023-06-22 00:21:36', '2023-06-22 00:21:36'),
(160, 'Time Stanp', 'res', 'area', '2023-06-22 00:22:09', '2023-06-22 00:22:09'),
(161, 'Tanjiro Kamado', 'This is a wiki about Kimetsu no Yaiba that was created by the fans', 'In Taisho-era Japan, Tanjiro Kamado is a kindhearted boy who makes a living selling charcoal. However, his peaceful life is shattered when a Demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a Demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the Demon who ruined his life.', '2023-06-22 00:23:03', '2023-06-22 00:23:03'),
(162, 'Tanjiro Kamado', 'This is a wiki about Kimetsu no Yaiba that was created by the fans', 'In Taisho-era Japan, Tanjiro Kamado is a kindhearted boy who makes a living selling charcoal. However, his peaceful life is shattered when a Demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a Demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the Demon who ruined his life.', '2023-06-22 00:26:22', '2023-06-22 00:26:22'),
(163, 'Tanjiro Kamado - TANK', 'This is a wiki about Kimetsu no Yaiba that was created by the fans', 'In Taisho-era Japan, Tanjiro Kamado is a kindhearted boy who makes a living selling charcoal. However, his peaceful life is shattered when a Demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a Demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the Demon who ruined his life.', '2023-06-22 00:26:41', '2023-06-22 00:26:41'),
(164, 'Titulo do artigo', 'Subtitulo do artigo', 'APIs are typically defined by documentation that outlines the available endpoints, request/response formats, authentication mechanisms, and any other relevant details necessary for integration. Popular API protocols include REST (Representational State Transfer), SOAP (Simple Object Access Protocol), and GraphQL.\n', '2023-06-22 11:46:29', '2023-06-22 11:46:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
