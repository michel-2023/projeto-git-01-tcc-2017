-- MySQL Workbench Synchronization
-- Generated: 2016-04-30 13:40
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `estagio_faimi`.`cad_enc_faimi` 
DROP FOREIGN KEY `fk_cad_enc_faimi_cad_aluno_faimi1`;

ALTER TABLE `estagio_faimi`.`cad_emp_faimi` 
DROP COLUMN `cpf`;

ALTER TABLE `estagio_faimi`.`cad_enc_faimi` 
CHANGE COLUMN `fkVaga` `fkVaga` INT(11) NULL DEFAULT NULL COMMENT '' ,
CHANGE COLUMN `fkAluno` `fkAluno` INT(11) NULL DEFAULT NULL COMMENT '' ;

ALTER TABLE `estagio_faimi`.`cad_enc_faimi` 
DROP FOREIGN KEY `fk_cad_enc_faimi_cad_vaga_faimi1`;

ALTER TABLE `estagio_faimi`.`cad_enc_faimi` ADD CONSTRAINT `fk_cad_enc_faimi_cad_vaga_faimi1`
  FOREIGN KEY (`fkVaga`)
  REFERENCES `estagio_faimi`.`cad_vaga_faimi` (`id_user_vaga`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_cad_enc_faimi_cad_aluno_faimi1`
  FOREIGN KEY (`fkAluno`)
  REFERENCES `estagio_faimi`.`cad_aluno_faimi` (`id_user_aluno`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
