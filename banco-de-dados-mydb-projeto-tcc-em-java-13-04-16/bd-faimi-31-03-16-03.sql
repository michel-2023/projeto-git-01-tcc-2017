-- MySQL Workbench Synchronization
-- Generated: 2016-04-13 13:39
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `mydb`.`cad_aluno_faimi` 
DROP FOREIGN KEY `fk_cad_aluno_faimi_cad_alusemestre_faimi1`;

ALTER TABLE `mydb`.`cad_aluno_faimi` 
DROP COLUMN `fkAluSemestre`,
DROP INDEX `fk_cad_aluno_faimi_cad_alusemestre_faimi1_idx` ;

ALTER TABLE `mydb`.`cad_alucurso_faimi` 
ADD COLUMN `semestre` VARCHAR(250) NULL DEFAULT NULL COMMENT '' AFTER `curso`,
ADD COLUMN `periodo` VARCHAR(250) NULL DEFAULT NULL COMMENT '' AFTER `semestre`;

DROP TABLE IF EXISTS `mydb`.`cad_alusemestre_faimi` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
