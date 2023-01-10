create database classificados;

use classificados;

CREATE TABLE IF NOT EXISTS contato (
  con_cod int(6) NOT NULL,
  con_nome varchar(45) NOT NULL,
  con_email varchar(45) NOT NULL,
  con_telefone int(6) NOT NULL,
  con_assunto varchar(45) NOT NULL,
  con_mensagem varchar(400) NOT NULL,
  con_data date NOT NULL,
  con_hora time NOT NULL,
  PRIMARY KEY (con_cod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS pessoa (
  us_cod int(6) NOT NULL,
  us_nome varchar(70) NOT NULL,
  us_email varchar(50) NOT NULL,
  us_telefone varchar(45) NOT NULL,
  us_senha varchar(45) NOT NULL,
  us_imagem varchar(45) NOT NULL,
  us_datanascimento date NOT NULL,
  us_cidade varchar(45) NOT NULL,
  us_estado varchar(45) NOT NULL,
  us_rua varchar(45) NOT NULL,
  us_bairro varchar(45) NOT NULL,
  us_cep int(10) NOT NULL,
  us_status int(3) NOT NULL,
  us_perfil int(3) NOT NULL,
  PRIMARY KEY (us_cod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS pessoa_fisica (
  pessoa_us_cod int(11) NOT NULL,
  pesf_cpf int(15) NOT NULL,
  PRIMARY KEY (pessoa_us_cod),
  KEY fk_pessoa_fisica_pessoa_idx (pessoa_us_cod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS categoria (
  cat_cod int(6) NOT NULL,
  pessoa_us_cod int(6) NOT NULL,
  cat_nome varchar(45) NOT NULL,
  cat_data date NOT NULL,
  cat_hora time NOT NULL,
  PRIMARY KEY (cat_cod),
  KEY fk_categoria_pessoa1_idx (pessoa_us_cod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS anuncio (
  anu_cod int(6) NOT NULL,
  cat_cod int(6) NOT NULL,
  us_cod int(6) NOT NULL,
  anu_nome varchar(45) NOT NULL,
  anu_palavra_chave varchar(100) NOT NULL,
  anu_valor int(6) NOT NULL,
  anu_tipo int(2) NOT NULL,
  anu_descricao varchar(200) NOT NULL,
  anu_data date NOT NULL,
  anu_hora time NOT NULL,
  anu_status int(2) NOT NULL,
  PRIMARY KEY (anu_cod),
  KEY fk_anuncio_categoria1_idx (cat_cod),
  KEY fk_anuncio_pessoa1_idx (us_cod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS imagens (
  img_cod int(11) NOT NULL AUTO_INCREMENT,
  anu_cod int(11) NOT NULL,
  img_nome varchar(45) NOT NULL,
  PRIMARY KEY (img_cod),
  KEY fk_imagens_anuncio1_idx (anu_cod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS comentario (
  com_cod int(6) NOT NULL,
  us_cod int(6) NOT NULL,
  anu_cod int(6) NOT NULL,
  com_comentario varchar(250) NOT NULL,
  com_data date NOT NULL,
  com_hora time NOT NULL,
  PRIMARY KEY (com_cod),
  KEY fk_comentario_pessoa1_idx (us_cod),
  KEY fk_comentario_anuncio1_idx (anu_cod)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE anuncio
  ADD CONSTRAINT fk_anuncio_categoria1 FOREIGN KEY (cat_cod) REFERENCES categoria (cat_cod) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_anuncio_pessoa1 FOREIGN KEY (us_cod) REFERENCES pessoa (us_cod) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
ALTER TABLE categoria
  ADD CONSTRAINT fk_categoria_pessoa1 FOREIGN KEY (pessoa_us_cod) REFERENCES pessoa (us_cod) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
ALTER TABLE comentario
  ADD CONSTRAINT fk_comentario_pessoa1 FOREIGN KEY (us_cod) REFERENCES pessoa (us_cod) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_comentario_anuncio1 FOREIGN KEY (anu_cod) REFERENCES anuncio (anu_cod) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
ALTER TABLE imagens
  ADD CONSTRAINT fk_imagens_anuncio1 FOREIGN KEY (anu_cod) REFERENCES anuncio (anu_cod) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
ALTER TABLE pessoa_fisica
  ADD CONSTRAINT fk_pessoa_fisica_pessoa FOREIGN KEY (pessoa_us_cod) REFERENCES pessoa (us_cod) ON DELETE NO ACTION ON UPDATE NO ACTION;