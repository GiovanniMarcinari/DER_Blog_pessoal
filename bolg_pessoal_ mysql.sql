create database db_blog_pessoal;

use db_blog_pessoal;

 CREATE TABLE `Temas` (
	`Id` bigint NOT NULL AUTO_INCREMENT,
	`Descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`Id`)
);

CREATE TABLE `Postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Titulo` varchar(255) NOT NULL,
	`Texto` varchar(1000) NOT NULL,
	`Data` TIMESTAMP NOT NULL,
	`Tema_id` bigint NOT NULL,
	`Usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuario` (
	`id` bigint NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`Usuario` varchar(255) NOT NULL,
	`Senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`Tema_id`) REFERENCES `Temas`(`Id`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`Usuario_id`) REFERENCES `Usuario`(`id`);
