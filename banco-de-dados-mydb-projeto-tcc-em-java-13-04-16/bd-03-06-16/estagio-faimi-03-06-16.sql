create database estagio_faimi;

-- a linha abaixo mostra os bancos de dados
show databases;

-- a linha abaixo escolhe o banco de dados
use estagio_faimi;

-- o bloco de instruções abaixo cria uma tabela no banco de dados
create table cad_emp_faimi(
id_user_emp int primary key auto_increment,
data_registro_emp timestamp default current_timestamp,
tipo_pessoa varchar(250) not null,
nome_fantasia varchar(250) not null,
razao_social varchar(250) not null,
cnpj varchar(60),
inscricao_estadual varchar(60),
endereco varchar(250) not null,
bairro varchar(250) not null,
cidade varchar(250) not null,
estado varchar(2) not null,
cep varchar(30) not null,
telefone_01 varchar(30) not null,
telefone_02 varchar(30) not null,
celular_03 varchar(30),
fax_04 varchar(30),
email varchar(250) not null,
site varchar(250),
contato varchar(250) not null,
ponto_de_referencia varchar(250) not null 
);

create table cad_vaga_faimi(
id_user_vaga int primary key auto_increment,
data_registro_vaga timestamp default current_timestamp,
vaga varchar(250) not null,
desc_vaga varchar(250) not null,
conhecimento varchar(500) not null,
tipo_vaga varchar(30) not null,
cidade_estagio varchar(250) not null,
remuneracao varchar(250) not null,
beneficio varchar(250) not null,
hora_trab varchar(250) not null,
esc_emp varchar(30) not null,
enc_curriculum varchar(30) not null,
id_user_emp int not null,
foreign key(id_user_emp) references cad_emp_faimi(id_user_emp)
);

create table cad_usuarios_faimi(
id_user int primary key,
data_registro_usuario timestamp default current_timestamp,
usuario varchar(250) not null,
telefone varchar(30) not null,
email varchar(250),
login varchar(250) not null unique,
senha varchar(30) not null,
perfil varchar(50) 
);

create table cad_aluno_faimi(
id_user_aluno int primary key auto_increment,
data_registro_aluno timestamp default current_timestamp,
nome_aluno varchar(250) not null,
ra_aluno varchar(50),
sexo varchar(30),
curso varchar(250) not null,
semestre varchar(250) not null,
periodo varchar(250) not null
);

create table cad_encaminhamento_faimi(
id_user_encaminhamento int primary key ,
data_registro_encaminhamento timestamp default current_timestamp,
contratado varchar(500),
data_inicio varchar(45),
data_final varchar(45),
conceito varchar(500),
id_user_aluno int not null,
id_user_vaga int not null
foreign key(id_user_aluno) references cad_aluno_faimi(id_user_aluno),
foreign key(id_user_vaga) references cad_vaga_faimi(id_user_vaga)
);

-- a linha abaixo insere dados na tabela (CRUD)
-- create (insert)
insert into cad_emp_faimi(tipo_pessoa,nome_fantasia,razao_social,cnpj,inscricao_estadual,endereco,bairro,cidade,estado,cep,telefone_01,telefone_02,celular_03,fax_04,email,site,contato,ponto_de_referencia)
values('PESSOA FÍSICA','MFSI - SOFTWARE & SISTEMAS','MFSI','222.453.158-39','29.151.370-0','RUA RICARDO SCANDIUZZI, 1753','JD KARINA III','MIRASSOL','SP','15130-000',
'55173253-5083','55173242-7659','551798805-4250','55173253-5083','michel.sistemas.ferreira.silva@gmail.com','www.classificadosnow.esy.es','TELEFONE','PERTO DO BAIRRO BEIJA-FLOR E CONDOMÍNIO VILLAGE');

insert into cad_emp_faimi(tipo_pessoa,nome_fantasia,razao_social,cnpj,inscricao_estadual,endereco,bairro,cidade,estado,cep,telefone_01,telefone_02,celular_03,fax_04,email,site,contato,ponto_de_referencia)
values('PESSOA FÍSICA','MFSI - SIS , SOFT & MANUTENÇÃO','SIS & SOFT','222.453.158-39','29.151.370-0','RUA RICARDO SCANDIUZZI, 1753','JD KARINA III','MIRASSOL','SP','15130-000',
'55173253-5083','55173242-7659','551798805-4250','55173253-5083','mic2016.site@gmail.com','www.bomprecoagora.esy.es','EMAIL','PERTO DO BAIRRO BEIJA-FLOR E CONDOMÍNIO VILLAGE');

insert into cad_vaga_faimi(vaga,desc_vaga,conhecimento,tipo_vaga,cidade_estagio,remuneracao,beneficio,hora_trab,esc_emp,enc_curriculum,id_user_emp)
values('TÉCNICO EM INFORMÁTICA','SISTEMAS E SOFTWARE','CONHECIMENTO BÁSICO OU INTERMEDIÁRIO NA ÁREA','ESTÁGIO REMUNERADO','SÃO JOSÉ DO RIO PRETO',783.87,'DAS 08:00hs. ÀS 16:00hs.','VALE-REFEIÇÃO E VALE-TRANSPORTE','ESCRITÓRIO','EMAIL',1);

insert into cad_vaga_faimi(vaga,desc_vaga,conhecimento,tipo_vaga,cidade_estagio,remuneracao,beneficio,hora_trab,esc_emp,enc_curriculum,id_user_emp)
values('DESENVOLVEDOR DE SITES E SOFTWARES DESKTOP','SISTEMAS E SOFTWARE DESKTOP E WEB','CONHECIMENTO BÁSICO OU INTERMEDIÁRIO NA ÁREA WEB SITES E SOFTWARES DESKTOP','ESTÁGIO REMUNERADO','SÃO JOSÉ DO RIO PRETO',685.52,'DAS 08:00hs. ÀS 14:00hs.','VALE-REFEIÇÃO E VALE-TRANSPORTE','EMPRESA','PESSOALMENTE',2);

insert into cad_usuarios_faimi(id_user,usuario,telefone,email,login,senha,perfil)
values(1,'Administrador','55173253-5083','michel.sistemas.ferreira.silva@gmail.com','admin','admin','admin');

insert into cad_usuarios_faimi(id_user,usuario,telefone,email,login,senha,perfil)
values(2,'Usuário-Chefe','551798805-4250','mic2016.site@gmail.com','usuario-chefe','usuario-chefe','admin');

insert into cad_usuarios_faimi(id_user,usuario,telefone,email,login,senha,perfil)
values(3,'Usuário-01','551799229-1064','anovacadencia@hotmail.com','usuario-01','usuario-01','user');

insert into cad_usuarios_faimi(id_user,usuario,telefone,email,login,senha,perfil)
values(4,'Usuário-02','55173253-5083','do_si_michel@hotmail.com','usuario-02','usuario-02','user');

insert into cad_aluno_faimi(nome_aluno,ra_aluno,sexo,curso,semestre,periodo)
values('Michel Ferreira da Silva','0050015344','MASCULINO','Sistema de Informação','7º SEMESTRE','Noturno');

insert into cad_aluno_faimi(nome_aluno,ra_aluno,sexo,curso,semestre,periodo)
values('Michel F. Silva','0050015344','MASCULINO','Sistema de Informação','6º SEMESTRE','Noturno');

insert into cad_encaminhamento_faimi(id_user_encaminhamento,contratado,data_inicio,data_final,conceito,id_user_vaga,id_user_aluno)
values(1,'EM ANDAMENTO','02/01/15','20/03/16','ALUNO CUMPRIU O CONTRATO DE ESTÁGIARIO DO INÍCIO AO FIM',2,1);

insert into cad_encaminhamento_faimi(id_user_encaminhamento,contratado,data_inicio,data_final,conceito,id_user_vaga,id_user_aluno)
values(2,'NÃO','02/01/16','20/04/16','ALUNO QUEBROU O CONTRATO DE ESTÁGIARIO POR OPORTUNIDADE MELHOR',1,2);


-- a linha abaixo exibe os dados da tabela (CRUD)
-- read (select)
select * from cad_emp_faimi;

select * from cad_vaga_faimi;

select * from cad_usuarios_faimi;

select * from cad_aluno_faimi;

select * from cad_encaminhamento_faimi;

select * from cad_aluno_vaga_faimi;

describe cad_usuarios_faimi;

describe cad_aluno_faimi;

describe cad_aluno_vaga_faimi;

describe cad_emp_faimi;

describe cad_vaga_faimi;

select * from cad_emp_faimi where id_user_emp=1;

select * from cad_aluno_faimi where nome_aluno like=1;

-- a linha abaixo modifica dados na tabela (CRUD)
-- update (update)
update cad_usuarios_faimi set telefone='551798805-4250' where id_user=2;

update cad_emp_faimi set celular_03='551799102-4492' where id_user_emp=1;

alter table cad_aluno_faimi add column ra_aluno varchar(50) not null;

alter table cad_emp_faimi add column ponto_de_referencia varchar(250) not null;

alter table cad_aluno_faimi drop column id_user_aluno;

alter table cad_aluno_faimi add column id_user_aluno int primary key auto_increment;

update cad_aluno_faimi set opiniao_aluno='ALUNO ESFORÇADO' where id_user_aluno=1;
update cad_aluno_faimi set opiniao_aluno='ALUNO COM MUITA VONTADE DE VENCER' where id_user_aluno=2;
update cad_emp_faimi set opiniao_empresa='EMPRESA BOA DE SE TRABALHAR' where id_user_emp=1;
update cad_emp_faimi set opiniao_empresa='EMPRESA FOCADA NO RAMO DE TI, SI E INFORMÁTICA' where id_user_emp=2;
update cad_emp_faimi set opiniao_empresa='EMPRESA COM PONTUAÇÃO NA REVISTA EXAME 2015 COMO UMA DAS EMPRESAS BOA DE SE TRABALHAR' where id_user_emp=3;
update cad_emp_faimi set opiniao_empresa='EMPRESA FOCADA NO RAMO DE TI, SI, SERVIDORES LINUX, HOSPEDAGENS, VPNS, DOMÍNIOS, LABORATÓRIO DE INFORMÁTICA ' where id_user_emp=4;
update cad_vaga_faimi set opiniao_vaga='VAGA BEM DISPUTADA' where id_user_vaga=1;
update cad_vaga_faimi set opiniao_vaga='VAGA MODERADA' where id_user_vaga=2;

update cad_aluno_faimi set ra_aluno='0050015344' where id_user_aluno=1;
update cad_aluno_faimi set ra_aluno='0050015344' where id_user_aluno=2;
update cad_vaga_faimi set cidade_estagio='SÃO JOSÉ DO RIO PRETO' where id_user_vaga=1;
update cad_vaga_faimi set cidade_estagio='SÃO JOSÉ DO RIO PRETO' where id_user_vaga=2;
update cad_vaga_faimi set esc_emp='ESCRITÓRIO' where id_user_vaga=1;
update cad_vaga_faimi set esc_emp='EMPRESA' where id_user_vaga=2;

alter table cad_usuarios_faimi add column perfil varchar (50) not null;

update cad_usuarios_faimi set perfil='admin' where id_user=1;
update cad_usuarios_faimi set perfil='admin' where id_user=2;
update cad_usuarios_faimi set perfil='user' where id_user=3;
update cad_usuarios_faimi set perfil='user' where id_user=4;

-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete (delete)

-- delete from tbusuarios where iduser=3;

 select
 EN.id_user_encaminhamento as ID,data_registro_encaminhamento as DATA,contratado as CONTRATADO,data_inicio as INÍCIO,data_final as FINAL,conceito as CONCEITO,
 AL.nome_aluno as ALUNO,ra_aluno as RA,curso as CURSO,
 VA.vaga as VAGA,desc_vaga as DESCRIÇÃO,conhecimento as CONHECIMENTO,tipo_vaga as TIPO,cidade_estagio as CIDADE,
 EM.nome_fantasia as EMPRESA,cnpj as CNPJ_CPF,inscricao_estadual as INSC_EST_RG,telefone_01 as TELEFONE
 from cad_encaminhamento_faimi as EN
 inner join cad_aluno_faimi as AL
 on (EN.id_user_encaminhamento = AL.id_user_aluno)
 inner join cad_vaga_faimi as VA
 on (EN.id_user_encaminhamento = VA.id_user_emp)
 inner join cad_emp_faimi as EM
 on (EN.id_user_encaminhamento = EM.id_user_emp);
 
 select
 EN.id_user_encaminhamento as ID,data_registro_encaminhamento as DATA,contratado as CONTRATADO,data_inicio as INÍCIO,data_final as FINAL,conceito as CONCEITO,
 AL.nome_aluno as ALUNO,ra_aluno as RA,curso as CURSO,
 VA.vaga as VAGA,desc_vaga as DESCRIÇÃO,conhecimento as CONHECIMENTO,tipo_vaga as TIPO,cidade_estagio as CIDADE,
 EM.nome_fantasia as EMPRESA,cnpj as CNPJ_CPF,inscricao_estadual as INSC_EST_RG,telefone_01 as TELEFONE
 from cad_encaminhamento_faimi as EN
 left join cad_aluno_faimi as AL
 on (EN.id_user_encaminhamento = AL.id_user_aluno)
 left join cad_vaga_faimi as VA
 on (EN.id_user_encaminhamento = VA.id_user_emp)
 left join cad_emp_faimi as EM
 on (EN.id_user_encaminhamento = EM.id_user_emp);
 
 select
 EN.id_user_encaminhamento,data_registro_encaminhamento,contratado,data_inicio,data_final,conceito,
 AL.nome_aluno,ra_aluno,curso,
 VA.vaga,desc_vaga,conhecimento,tipo_vaga,cidade_estagio,
 EM.nome_fantasia,cnpj,inscricao_estadual,telefone_01 
 from cad_encaminhamento_faimi as EN
 left join cad_aluno_faimi as AL
 on (EN.id_user_encaminhamento = AL.id_user_aluno)
 left join cad_vaga_faimi as VA
 on (EN.id_user_encaminhamento = VA.id_user_vaga)
 left join cad_emp_faimi as EM
 on (EN.id_user_encaminhamento = EM.id_user_emp);
 
 select
 EM.id_user_emp as Id,data_registro_emp as Registro,nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 VA.vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 AL.nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_emp_faimi as EM
 inner join cad_vaga_faimi as VA
 on (EM.id_user_emp = VA.id_user_vaga)
 inner join cad_aluno_faimi as AL
 on (EM.id_user_emp = AL.id_user_aluno)
 inner join cad_encaminhamento_faimi as EN
 on (EM.id_user_emp = EN.id_user_encaminhamento);
 
 select
 EM.id_user_emp as Id,data_registro_emp as Registro,nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 VA.vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 AL.nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_emp_faimi as EM
 left join cad_vaga_faimi as VA
 on (EM.id_user_emp = VA.id_user_vaga)
 left join cad_aluno_faimi as AL
 on (EM.id_user_emp = AL.id_user_aluno)
 left join cad_encaminhamento_faimi as EN
 on (EM.id_user_emp = EN.id_user_encaminhamento);
 
 select
 AL.id_user_aluno as Id,data_registro_aluno as Registro,nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 VA.vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 EM.nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_aluno_faimi as AL
 inner join cad_vaga_faimi as VA
 on (AL.id_user_aluno = VA.id_user_vaga)
 inner join cad_emp_faimi as EM
 on (AL.id_user_aluno = EM.id_user_emp)
 inner join cad_encaminhamento_faimi as EN
 on (AL.id_user_aluno = EN.id_user_encaminhamento);
 
 select
 AL.id_user_aluno as Id,data_registro_aluno as Registro,nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 VA.vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 EM.nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_aluno_faimi as AL
 left join cad_vaga_faimi as VA
 on (AL.id_user_aluno = VA.id_user_vaga)
 left join cad_emp_faimi as EM
 on (AL.id_user_aluno = EM.id_user_emp)
 left join cad_encaminhamento_faimi as EN
 on (AL.id_user_aluno = EN.id_user_encaminhamento);
 
 select
 VA.id_user_vaga as Id,data_registro_vaga as Registro,vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 EM.nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 AL.nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_vaga_faimi as VA
 inner join cad_emp_faimi as EM
 on (VA.id_user_vaga = EM.id_user_emp)
 inner join cad_aluno_faimi as AL
 on (VA.id_user_vaga = AL.id_user_aluno)
 inner join cad_encaminhamento_faimi as EN
 on (VA.id_user_vaga = EN.id_user_encaminhamento);
 
 select
 VA.id_user_vaga as Id,data_registro_vaga as Registro,vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 EM.nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 AL.nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_vaga_faimi as VA
 left join cad_emp_faimi as EM
 on (VA.id_user_vaga = EM.id_user_emp)
 left join cad_aluno_faimi as AL
 on (VA.id_user_vaga = AL.id_user_aluno)
 left join cad_encaminhamento_faimi as EN
 on (VA.id_user_vaga = EN.id_user_encaminhamento);
 
 select
 VA.id_user_vaga as Id,data_registro_vaga as Registro,vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 EM.nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 AL.nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_vaga_faimi as VA
 right join cad_emp_faimi as EM
 on (VA.id_user_vaga = EM.id_user_emp)
 right join cad_aluno_faimi as AL
 on (VA.id_user_vaga = AL.id_user_aluno)
 right join cad_encaminhamento_faimi as EN
 on (VA.id_user_vaga = EN.id_user_encaminhamento);
 
 select
 VA.id_user_vaga as Id,data_registro_vaga as Registro,vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 EM.nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 AL.nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_vaga_faimi as VA
 left join cad_emp_faimi as EM
 on (VA.id_user_vaga = EM.id_user_emp)
 left join cad_aluno_faimi as AL
 on (VA.id_user_vaga = AL.id_user_aluno)
 left join cad_encaminhamento_faimi as EN
 on (VA.id_user_vaga = EN.id_user_encaminhamento);


select
 AL.id_user_aluno as Id,data_registro_aluno as Registro,nome_aluno as Aluno,ra_aluno as RA,curso as Curso,
 VA.vaga as Vaga,desc_vaga as Descrição,conhecimento as Conhecimento,tipo_vaga as Tipo,cidade_estagio as Cidade,
 EM.nome_fantasia as Empresa,cnpj as Cnpj_Cpf,inscricao_estadual as Insc_Est_Rg,telefone_01 as Telefone,
 EN.contratado as Contratado,data_inicio as Início,data_final as Final,conceito as Conceito
   
 from cad_aluno_faimi as AL
 inner join cad_vaga_faimi as VA
 on (AL.id_user_aluno = VA.id_user_vaga)
 inner join cad_emp_faimi as EM
 on (AL.id_user_aluno = EM.id_user_emp)
 inner join cad_encaminhamento_faimi as EN
 on (AL.id_user_aluno = EN.id_user_encaminhamento);
 
 select
 VA.id_user_vaga as ID,vaga as VAGA,desc_vaga as DESCRIÇÃO,conhecimento as CONHECIMENTO,tipo_vaga as TIPO,
 EM.nome_fantasia as EMPRESA
 from cad_vaga_faimi as VA
 inner join cad_emp_faimi as EM
 on (VA.id_user_emp = EM.id_user_emp);
 
 select
 VA.id_user_vaga as ID,vaga as VAGA,desc_vaga as DESCRIÇÃO,conhecimento as CONHECIMENTO,tipo_vaga as TIPO,
 EM.nome_fantasia as EMPRESA
 from cad_vaga_faimi as VA
 left join cad_emp_faimi as EM
 on (VA.id_user_vaga = EM.id_user_emp);
 
 select
 VA.id_user_vaga as ID,vaga as VAGA,desc_vaga as DESCRIÇÃO,conhecimento as CONHECIMENTO,tipo_vaga as TIPO,
 EM.nome_fantasia as EMPRESA
 from cad_vaga_faimi as VA
 right join cad_emp_faimi as EM
 on (VA.id_user_vaga = EM.id_user_emp);
 
 select VA.id_user_emp
 from cad_vaga_faimi as VA
 join cad_emp_faimi as EM 
 on (VA.id_user_emp = EM.id_user_emp);
 
 select VA.id_user_emp as ID
 EM.nome_fantasia as Empresa
 from cad_vaga_faimi as VA
 join cad_emp_faimi as EM 
 on (VA.id_user_emp = EM.id_user_emp);