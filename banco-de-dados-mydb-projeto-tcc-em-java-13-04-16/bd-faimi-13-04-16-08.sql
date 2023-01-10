-- MySQL Workbench Synchronization
-- Generated: 2016-04-15 18:49
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `estagio_faimi` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_emp_faimi` (
  `id_user_emp` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `data_registro_emp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `nome_fantasia` VARCHAR(250) NOT NULL COMMENT '',
  `razao_social` VARCHAR(250) NOT NULL COMMENT '',
  `cnpj` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `inscricao_estadual` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `cpf` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `endereco` VARCHAR(250) NOT NULL COMMENT '',
  `bairro` VARCHAR(250) NOT NULL COMMENT '',
  `cidade` VARCHAR(250) NOT NULL COMMENT '',
  `estado` VARCHAR(2) NOT NULL COMMENT '',
  `cep` VARCHAR(45) NOT NULL COMMENT '',
  `telefone_01` VARCHAR(45) NOT NULL COMMENT '',
  `telefone_02` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `celular_03` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `fax_04` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `email` VARCHAR(250) NOT NULL COMMENT '',
  `site` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `contato` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `ponto_de_referencia` VARCHAR(250) NOT NULL COMMENT '',
  PRIMARY KEY (`id_user_emp`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_usuarios_faimi` (
  `id_user` INT(11) NOT NULL COMMENT '',
  `data_registro_usuario` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `usuario` VARCHAR(250) NOT NULL COMMENT '',
  `telefone` VARCHAR(45) NOT NULL COMMENT '',
  `login` VARCHAR(250) NOT NULL COMMENT '',
  `senha` VARCHAR(45) NOT NULL COMMENT '',
  `perfil` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_user`)  COMMENT '',
  UNIQUE INDEX `login_UNIQUE` (`login` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_aluno_faimi` (
  `id_user_aluno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `data_registro_aluno` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `nome_aluno` VARCHAR(250) NOT NULL COMMENT '',
  `sexo` VARCHAR(45) NOT NULL COMMENT '',
  `ra_aluno` VARCHAR(45) NOT NULL COMMENT '',
  `curso` VARCHAR(250) NOT NULL COMMENT '',
  `semestre` VARCHAR(45) NOT NULL COMMENT '',
  `periodo` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id_user_aluno`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_vaga_faimi` (
  `id_user_vaga` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `data_registro_vaga` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `vaga` VARCHAR(250) NOT NULL COMMENT '',
  `descricao_vaga` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `remuneracao` DECIMAL(10,2) NULL DEFAULT NULL COMMENT '',
  `beneficio` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `esc_emp` VARCHAR(45) NOT NULL COMMENT '',
  `hora_trab` VARCHAR(250) NOT NULL COMMENT '',
  `tipo_vaga` VARCHAR(250) NOT NULL COMMENT '',
  `cidade_estagio` VARCHAR(250) NOT NULL COMMENT '',
  `enc_curriculum` VARCHAR(250) NOT NULL COMMENT '',
  `fkAluno` INT(11) NULL DEFAULT NULL COMMENT '',
  `fkEmpresa` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_user_vaga`)  COMMENT '',
  INDEX `fk_cad_vaga_faimi_cad_aluno_faimi1_idx` (`fkAluno` ASC)  COMMENT '',
  INDEX `fk_cad_vaga_faimi_cad_emp_faimi1_idx` (`fkEmpresa` ASC)  COMMENT '',
  CONSTRAINT `fk_cad_vaga_faimi_cad_aluno_faimi1`
    FOREIGN KEY (`fkAluno`)
    REFERENCES `estagio_faimi`.`cad_aluno_faimi` (`id_user_aluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cad_vaga_faimi_cad_emp_faimi1`
    FOREIGN KEY (`fkEmpresa`)
    REFERENCES `estagio_faimi`.`cad_emp_faimi` (`id_user_emp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
