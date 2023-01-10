-- MySQL Workbench Synchronization
-- Generated: 2016-04-24 13:35
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: michel-note-mfsi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `estagio_faimi` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_aluno_faimi` (
  `id_user_aluno` INT(11) NOT NULL AUTO_INCREMENT,
  `data_registro_aluno` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nome_aluno` VARCHAR(250) NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `ra_aluno` VARCHAR(45) NOT NULL,
  `curso` VARCHAR(250) NOT NULL,
  `semestre` VARCHAR(45) NOT NULL,
  `periodo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user_aluno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_emp_faimi` (
  `id_user_emp` INT(11) NOT NULL AUTO_INCREMENT,
  `data_registro_emp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nome_fantasia` VARCHAR(250) NOT NULL,
  `razao_social` VARCHAR(250) NOT NULL,
  `cnpj` VARCHAR(45) NULL DEFAULT NULL,
  `inscricao_estadual` VARCHAR(45) NULL DEFAULT NULL,
  `cpf` VARCHAR(45) NULL DEFAULT NULL,
  `endereco` VARCHAR(250) NOT NULL,
  `bairro` VARCHAR(250) NOT NULL,
  `cidade` VARCHAR(250) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  `telefone_01` VARCHAR(45) NOT NULL,
  `telefone_02` VARCHAR(45) NULL DEFAULT NULL,
  `celular_03` VARCHAR(45) NULL DEFAULT NULL,
  `fax_04` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(250) NOT NULL,
  `site` VARCHAR(250) NULL DEFAULT NULL,
  `contato` VARCHAR(250) NULL DEFAULT NULL,
  `ponto_de_referencia` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`id_user_emp`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_usuarios_faimi` (
  `id_user` INT(11) NOT NULL,
  `data_registro_usuario` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` VARCHAR(250) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `login` VARCHAR(250) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `perfil` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `estagio_faimi`.`cad_vaga_faimi` (
  `id_user_vaga` INT(11) NOT NULL AUTO_INCREMENT,
  `data_registro_vaga` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vaga` VARCHAR(250) NOT NULL,
  `descricao_vaga` VARCHAR(250) NULL DEFAULT NULL,
  `tipo_vaga` VARCHAR(250) NOT NULL,
  `cidade_estagio` VARCHAR(250) NOT NULL,
  `remuneracao` DECIMAL(10,2) NULL DEFAULT NULL,
  `beneficio` VARCHAR(250) NULL DEFAULT NULL,
  `hora_trab` VARCHAR(250) NOT NULL,
  `esc_emp` VARCHAR(45) NOT NULL,
  `enc_curriculum` VARCHAR(250) NOT NULL,
  `fkAluno` INT(11) NULL DEFAULT NULL,
  `fkEmpresa` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_vaga`),
  INDEX `fk_cad_vaga_faimi_cad_aluno_faimi1_idx` (`fkAluno` ASC),
  INDEX `fk_cad_vaga_faimi_cad_emp_faimi1_idx` (`fkEmpresa` ASC),
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
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
