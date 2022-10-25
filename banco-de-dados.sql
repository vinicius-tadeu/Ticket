CREATE TABLE arquivo (
  id_arquivo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  mensagem_id_mensagem INTEGER UNSIGNED NOT NULL,
  nome_arquivo VARCHAR(255) NULL,
  PRIMARY KEY(id_arquivo),
  INDEX arquivo_FKIndex1(mensagem_id_mensagem)
);

CREATE TABLE categoria (
  id_categoria INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(255) NULL,
  PRIMARY KEY(id_categoria)
);

CREATE TABLE mensagem (
  id_mensagem INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  categoria_id_categoria INTEGER UNSIGNED NOT NULL,
  titulo_mensagem VARCHAR(255) NULL,
  texto_mensagem TEXT NULL,
  data_mensagem DATE NULL,
  hora_mensagem TIME NULL,
  status_mensagem CHAR(1) NULL,
  PRIMARY KEY(id_mensagem),
  INDEX mensagem_FKIndex1(categoria_id_categoria)
);

CREATE TABLE usuarios (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NULL,
  email VARCHAR(255) NULL,
  senha VARCHAR(255) NULL,
  tipo CHAR(1) NULL,
  status CHAR(1) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE usuarios_mensagem (
  usuarios_id INTEGER UNSIGNED NOT NULL,
  mensagem_id_mensagem INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(usuarios_id, mensagem_id_mensagem),
  INDEX usuarios_has_mensagem_FKIndex1(usuarios_id),
  INDEX usuarios_has_mensagem_FKIndex2(mensagem_id_mensagem)
);


