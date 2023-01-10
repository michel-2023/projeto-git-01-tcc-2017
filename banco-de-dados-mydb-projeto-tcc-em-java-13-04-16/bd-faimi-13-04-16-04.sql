-- MySQL Workbench Synchronization
-- Generated: 2016-04-13 13:41
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `mydb`.`cad_aluno_faimi` 
DROP FOREIGN KEY `fk_cad_aluno_faimi_cad_alucurso_faimi1`;

ALTER TABLE `mydb`.`cad_vaga_faimi` 
DROP FOREIGN KEY `fk_cad_vaga_faimi_cad_aluno_faimi1`,
DROP FOREIGN KEY `fk_cad_vaga_faimi_cad_emp_faimi1`;

ALTER TABLE `mydb`.`cad_aluno_faimi` 
CHANGE COLUMN `fkAluCurso` `fkAluCurso` INT(11) NULL DEFAULT NULL COMMENT '' ;

ALTER TABLE `mydb`.`cad_vaga_faimi` 
CHANGE COLUMN `fkAluno` `fkAluno` INT(11) NULL DEFAULT NULL COMMENT '' ,
CHANGE COLUMN `fkEmpresa` `fkEmpresa` INT(11) NULL DEFAULT NULL COMMENT '' ;

ALTER TABLE `mydb`.`cad_aluno_faimi` 
ADD CONSTRAINT `fk_cad_aluno_faimi_cad_alucurso_faimi1`
  FOREIGN KEY (`fkAluCurso`)
  REFERENCES `mydb`.`cad_alucurso_faimi` (`id_user_alucurso`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `mydb`.`cad_vaga_faimi` 
ADD CONSTRAINT `fk_cad_vaga_faimi_cad_aluno_faimi1`
  FOREIGN KEY (`fkAluno`)
  REFERENCES `mydb`.`cad_aluno_faimi` (`id_user_aluno`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_cad_vaga_faimi_cad_emp_faimi1`
  FOREIGN KEY (`fkEmpresa`)
  REFERENCES `mydb`.`cad_emp_faimi` (`id_user_emp`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
