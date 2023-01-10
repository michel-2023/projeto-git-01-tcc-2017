-- MySQL Workbench Synchronization
-- Generated: 2016-04-13 11:49
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `mydb`.`cad_alucurso_faimi` 
DROP FOREIGN KEY `fk_cad_alucurso_faimi_cad_aluno_faimi`;

ALTER TABLE `mydb`.`cad_alusemestre_faimi` 
DROP FOREIGN KEY `fk_cad_alusemestre_faimi_cad_aluno_faimi1`;

ALTER TABLE `mydb`.`cad_tipovaga_faimi` 
DROP FOREIGN KEY `fk_cad_tipovaga_faimi_cad_aluno_faimi1`,
DROP FOREIGN KEY `fk_cad_tipovaga_faimi_cad_vaga_faimi1`,
DROP FOREIGN KEY `fk_cad_tipovaga_faimi_cad_emp_faimi1`;

ALTER TABLE `mydb`.`cad_aluno_faimi` 
ADD COLUMN `fkAluCurso` INT(11) NOT NULL COMMENT '' AFTER `sexo`,
ADD COLUMN `fkAluSemestre` INT(11) NOT NULL COMMENT '' AFTER `fkAluCurso`,
ADD INDEX `fk_cad_aluno_faimi_cad_alucurso_faimi1_idx` (`fkAluCurso` ASC)  COMMENT '',
ADD INDEX `fk_cad_aluno_faimi_cad_alusemestre_faimi1_idx` (`fkAluSemestre` ASC)  COMMENT '';

ALTER TABLE `mydb`.`cad_alucurso_faimi` 
DROP COLUMN `fkAluno`,
CHANGE COLUMN `id_user_alucurso` `id_user_alucurso` INT(11) NOT NULL AUTO_INCREMENT COMMENT '' ,
ADD COLUMN `data_registro_alucurso` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '' AFTER `id_user_alucurso`,
DROP INDEX `fk_cad_alucurso_faimi_cad_aluno_faimi_idx` ;

ALTER TABLE `mydb`.`cad_alusemestre_faimi` 
DROP COLUMN `fkAluno`,
ADD COLUMN `data_registro_alusemestre` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '' AFTER `id_user_alusemestre`,
DROP INDEX `fk_cad_alusemestre_faimi_cad_aluno_faimi1_idx` ;

ALTER TABLE `mydb`.`cad_vaga_faimi` 
ADD COLUMN `fkTipoVaga` INT(11) NULL DEFAULT NULL COMMENT '' AFTER `enc_curriculum`,
ADD COLUMN `fkAluno` INT(11) NOT NULL COMMENT '' AFTER `fkTipoVaga`,
ADD COLUMN `fkEmpresa` INT(11) NOT NULL COMMENT '' AFTER `fkAluno`,
ADD INDEX `fk_cad_vaga_faimi_cad_tipovaga_faimi_idx` (`fkTipoVaga` ASC)  COMMENT '',
ADD INDEX `fk_cad_vaga_faimi_cad_aluno_faimi1_idx` (`fkAluno` ASC)  COMMENT '',
ADD INDEX `fk_cad_vaga_faimi_cad_emp_faimi1_idx` (`fkEmpresa` ASC)  COMMENT '';

ALTER TABLE `mydb`.`cad_tipovaga_faimi` 
DROP COLUMN `fkAluno`,
DROP COLUMN `fkVaga`,
DROP COLUMN `fkEmpresa`,
DROP INDEX `fk_cad_tipovaga_faimi_cad_aluno_faimi1_idx` ,
DROP INDEX `fk_cad_tipovaga_faimi_cad_vaga_faimi1_idx` ,
DROP INDEX `fk_cad_tipovaga_faimi_cad_emp_faimi1_idx` ;

ALTER TABLE `mydb`.`cad_aluno_faimi` 
ADD CONSTRAINT `fk_cad_aluno_faimi_cad_alucurso_faimi1`
  FOREIGN KEY (`fkAluCurso`)
  REFERENCES `mydb`.`cad_alucurso_faimi` (`id_user_alucurso`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_cad_aluno_faimi_cad_alusemestre_faimi1`
  FOREIGN KEY (`fkAluSemestre`)
  REFERENCES `mydb`.`cad_alusemestre_faimi` (`id_user_alusemestre`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `mydb`.`cad_vaga_faimi` 
ADD CONSTRAINT `fk_cad_vaga_faimi_cad_tipovaga_faimi`
  FOREIGN KEY (`fkTipoVaga`)
  REFERENCES `mydb`.`cad_tipovaga_faimi` (`id_user_tipovaga`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
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
