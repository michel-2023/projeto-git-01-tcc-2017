-- MySQL Workbench Synchronization
-- Generated: 2016-04-15 11:37
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `mydb`.`cad_aluno_faimi` 
DROP FOREIGN KEY `fk_cad_aluno_faimi_cad_alucurso_faimi1`;

ALTER TABLE `mydb`.`cad_aluno_faimi` 
DROP COLUMN `fkAluCurso`,
CHANGE COLUMN `sexo` `sexo` VARCHAR(45) NOT NULL COMMENT '' ,
ADD COLUMN `curso` VARCHAR(250) NOT NULL COMMENT '' AFTER `sexo`,
ADD COLUMN `semestre` VARCHAR(45) NOT NULL COMMENT '' AFTER `curso`,
ADD COLUMN `periodo` VARCHAR(45) NOT NULL COMMENT '' AFTER `semestre`,
DROP INDEX `fk_cad_aluno_faimi_cad_alucurso_faimi1_idx` ;

DROP TABLE IF EXISTS `mydb`.`cad_alucurso_faimi` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
