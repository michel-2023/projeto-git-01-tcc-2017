-- MySQL Workbench Synchronization
-- Generated: 2016-04-15 18:42
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `mydb`.`cad_vaga_faimi` 
DROP FOREIGN KEY `fk_cad_vaga_faimi_cad_tipovaga_faimi`;

ALTER TABLE `mydb`.`cad_vaga_faimi` 
DROP COLUMN `fkTipoVaga`,
CHANGE COLUMN `esc_emp` `esc_emp` VARCHAR(45) NOT NULL COMMENT '' AFTER `beneficio`,
ADD COLUMN `vaga` VARCHAR(250) NOT NULL COMMENT '' AFTER `data_registro_vaga`,
ADD COLUMN `descricao_vaga` VARCHAR(250) NULL DEFAULT NULL COMMENT '' AFTER `vaga`,
ADD COLUMN `remuneracao` DECIMAL(10,2) NULL DEFAULT NULL COMMENT '' AFTER `descricao_vaga`,
ADD COLUMN `beneficio` VARCHAR(250) NULL DEFAULT NULL COMMENT '' AFTER `remuneracao`,
ADD COLUMN `tipo_vaga` VARCHAR(250) NOT NULL COMMENT '' AFTER `hora_trab`,
DROP INDEX `fk_cad_vaga_faimi_cad_tipovaga_faimi_idx` ;

DROP TABLE IF EXISTS `mydb`.`cad_tipovaga_faimi` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
