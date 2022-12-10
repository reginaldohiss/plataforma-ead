# ************************************************************
# Sequel Pro SQL dump
# Versão 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Base de Dados: ead
# Tempo de Geração: 2016-08-30 10:04:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump da tabela aluno_curso
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aluno_curso`;

CREATE TABLE `aluno_curso` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `aluno_curso` WRITE;
/*!40000 ALTER TABLE `aluno_curso` DISABLE KEYS */;

INSERT INTO `aluno_curso` (`id`, `id_curso`, `id_aluno`)
VALUES
	(5,1,1),
	(6,2,1),
	(7,3,1),
	(8,6,1),
	(9,7,1),
	(10,8,2);

/*!40000 ALTER TABLE `aluno_curso` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela alunos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alunos`;

CREATE TABLE `alunos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `senha` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;

INSERT INTO `alunos` (`id`, `nome`, `email`, `senha`)
VALUES
	(1,'Bonieky','suporte@b7web.com.br','202cb962ac59075b964b07152d234b70'),
	(2,'Aluno de teste','aluno@teste.com','202cb962ac59075b964b07152d234b70');

/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela aulas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aulas`;

CREATE TABLE `aulas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;

INSERT INTO `aulas` (`id`, `id_modulo`, `id_curso`, `ordem`, `tipo`)
VALUES
	(1,1,1,1,'video'),
	(2,1,1,2,'video'),
	(3,2,1,1,'video'),
	(4,2,1,2,'poll'),
	(5,3,1,1,'video'),
	(7,3,1,3,'video'),
	(8,6,1,1,'video'),
	(9,1,1,3,'poll');

/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela cursos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE `cursos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `imagem` varchar(37) NOT NULL DEFAULT '',
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;

INSERT INTO `cursos` (`id`, `nome`, `imagem`, `descricao`)
VALUES
	(1,'PHP','php.jpg','Curso para desenvolvimento de sites e sistemas.'),
	(2,'HTML','html.jpg',NULL),
	(3,'JAVASCRIPT','javascript.jpg',NULL),
	(4,'CSS','503e41d1aa116efa266c7467dcd24a68.jpg','Esse curso faz CSS parecer facil.'),
	(6,'jQuery','0676d836af8b182c6d38547f8bb31219.jpg',''),
	(7,'Swift','swift.jpg',NULL),
	(8,'Android','782d69edbb6949f7d81a54828d84768d.jpg','');

/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela duvidas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `duvidas`;

CREATE TABLE `duvidas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_duvida` datetime NOT NULL,
  `respondida` tinyint(1) NOT NULL,
  `duvida` text,
  `id_aluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `duvidas` WRITE;
/*!40000 ALTER TABLE `duvidas` DISABLE KEYS */;

INSERT INTO `duvidas` (`id`, `data_duvida`, `respondida`, `duvida`, `id_aluno`)
VALUES
	(1,'2016-08-12 05:45:23',0,'Duvida de teste...',1);

/*!40000 ALTER TABLE `duvidas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela historico
# ------------------------------------------------------------

DROP TABLE IF EXISTS `historico`;

CREATE TABLE `historico` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_viewed` datetime NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;

INSERT INTO `historico` (`id`, `data_viewed`, `id_aluno`, `id_aula`)
VALUES
	(25,'2016-08-30 06:07:44',1,1),
	(26,'2016-08-30 06:10:00',1,9),
	(27,'2016-08-30 06:10:18',1,3);

/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela modulos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modulos`;

CREATE TABLE `modulos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_curso` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;

INSERT INTO `modulos` (`id`, `id_curso`, `nome`)
VALUES
	(1,1,'Básico'),
	(2,1,'Intermediário'),
	(3,1,'Avançado'),
	(6,1,'Super Avançado');

/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela questionarios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questionarios`;

CREATE TABLE `questionarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `pergunta` varchar(100) NOT NULL DEFAULT '',
  `opcao1` varchar(100) DEFAULT NULL,
  `opcao2` varchar(100) DEFAULT NULL,
  `opcao3` varchar(100) DEFAULT NULL,
  `opcao4` varchar(100) DEFAULT NULL,
  `resposta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `questionarios` WRITE;
/*!40000 ALTER TABLE `questionarios` DISABLE KEYS */;

INSERT INTO `questionarios` (`id`, `id_aula`, `pergunta`, `opcao1`, `opcao2`, `opcao3`, `opcao4`, `resposta`)
VALUES
	(1,4,'Qual a pergunta? 2','Op122','Op23333','Op35555','Op41111',4),
	(2,9,'Pergunta de teste','Opcoao1','copaosr2','aposri3','apsori4',3);

/*!40000 ALTER TABLE `questionarios` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela usuarios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `senha` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;

INSERT INTO `usuarios` (`id`, `email`, `senha`)
VALUES
	(1,'suporte@b7web.com.br','15025c2de78035458d3fe7ae9b2084e5');

/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `descricao` text,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;

INSERT INTO `videos` (`id`, `id_aula`, `nome`, `descricao`, `url`)
VALUES
	(1,1,'Aula 1','','178300706'),
	(2,2,'Aula 2',NULL,'178300706'),
	(3,3,'Aula 3',NULL,'178300706'),
	(4,5,'Aula 4',NULL,'178300706'),
	(6,7,'Aula 6',NULL,'178300706'),
	(7,8,'Aula Teste 2','','');

/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
