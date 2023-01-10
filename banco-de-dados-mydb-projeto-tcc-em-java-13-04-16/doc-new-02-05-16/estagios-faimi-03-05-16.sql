-- MySQL Workbench Synchronization
-- Generated: 2016-05-03 12:35
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `estagio_faimi_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `estagio_faimi_01`.`cad_aluno_faimi` (
  `id_user_aluno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `data_registro_aluno` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `nome_aluno` VARCHAR(250) NOT NULL COMMENT '',
  `ra_aluno` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `sexo` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  `curso` VARCHAR(250) NOT NULL COMMENT '',
  `semestre` VARCHAR(250) NOT NULL COMMENT '',
  `periodo` VARCHAR(250) NOT NULL COMMENT '',
  PRIMARY KEY (`id_user_aluno`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `estagio_faimi_01`.`cad_emp_faimi` (
  `id_user_emp` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `data_registro_emp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `tipo_pessoa` VARCHAR(250) NOT NULL COMMENT '',
  `nome_fantasia` VARCHAR(250) NOT NULL COMMENT '',
  `razao_social` VARCHAR(250) NOT NULL COMMENT '',
  `cnpj` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  `inscricao_estadual` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  `endereco` VARCHAR(250) NOT NULL COMMENT '',
  `bairro` VARCHAR(250) NOT NULL COMMENT '',
  `cidade` VARCHAR(250) NOT NULL COMMENT '',
  `estado` VARCHAR(2) NOT NULL COMMENT '',
  `cep` VARCHAR(30) NOT NULL COMMENT '',
  `telefone_01` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  `telefone_02` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  `celular_03` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  `fax_04` VARCHAR(30) NULL DEFAULT NULL COMMENT '',
  `email` VARCHAR(250) NOT NULL COMMENT '',
  `site` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `contato` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `ponto_de_referencia` VARCHAR(250) NOT NULL COMMENT '',
  PRIMARY KEY (`id_user_emp`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `estagio_faimi_01`.`cad_encaminhamento_faimi` (
  `id_user_encaminhamento` INT(11) NOT NULL COMMENT '',
  `data_registro_encaminhamento` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `data_inicio` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `data_final` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `conceito` VARCHAR(500) NULL DEFAULT NULL COMMENT '',
  `id_user_vaga` INT(11) NULL DEFAULT NULL COMMENT '',
  `id_user_aluno` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_user_encaminhamento`)  COMMENT '',
  INDEX `id_user_vaga` (`id_user_vaga` ASC)  COMMENT '',
  INDEX `id_user_aluno` (`id_user_aluno` ASC)  COMMENT '',
  CONSTRAINT `cad_encaminhamento_faimi_ibfk_1`
    FOREIGN KEY (`id_user_vaga`)
    REFERENCES `estagio_faimi_01`.`cad_vaga_faimi` (`id_user_vaga`),
  CONSTRAINT `cad_encaminhamento_faimi_ibfk_2`
    FOREIGN KEY (`id_user_aluno`)
    REFERENCES `estagio_faimi_01`.`cad_aluno_faimi` (`id_user_aluno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `estagio_faimi_01`.`cad_usuarios_faimi` (
  `id_user` INT(11) NOT NULL COMMENT '',
  `usuario` VARCHAR(250) NOT NULL COMMENT '',
  `telefone` VARCHAR(30) NOT NULL COMMENT '',
  `email` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `login` VARCHAR(250) NOT NULL COMMENT '',
  `senha` VARCHAR(30) NOT NULL COMMENT '',
  `perfil` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_user`)  COMMENT '',
  UNIQUE INDEX `login` (`login` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `estagio_faimi_01`.`cad_vaga_faimi` (
  `id_user_vaga` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `data_registro_vaga` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `vaga` VARCHAR(250) NOT NULL COMMENT '',
  `desc_vaga` VARCHAR(250) NOT NULL COMMENT '',
  `conhecimento` VARCHAR(500) NOT NULL COMMENT '',
  `tipo_vaga` VARCHAR(30) NOT NULL COMMENT '',
  `cidade_estagio` VARCHAR(250) NOT NULL COMMENT '',
  `remuneracao` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `beneficio` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `hora_trab` VARCHAR(250) NULL DEFAULT NULL COMMENT '',
  `esc_emp` VARCHAR(30) NOT NULL COMMENT '',
  `enc_curriculum` VARCHAR(30) NOT NULL COMMENT '',
  `id_user_emp` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_user_vaga`)  COMMENT '',
  INDEX `id_user_emp` (`id_user_emp` ASC)  COMMENT '',
  CONSTRAINT `cad_vaga_faimi_ibfk_1`
    FOREIGN KEY (`id_user_emp`)
    REFERENCES `estagio_faimi_01`.`cad_emp_faimi` (`id_user_emp`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
