CREATE DATABASE operadorasaude;

CREATE TABLE planos(
id_plano int not null auto_increment primary key,
nome_plano varchar(50) not null,
0_a_18_anos float not null,
19_a_23_anos float not null,
24_a_28_anos float not null,
29_a_33_anos float not null,
34_a_38_anos float not null,
39_a_43_anos float not null,
44_a_48_anos float not null,
49_a_53_anos float not null,
54_a_58_anos float not null,
acima_59_anos float not null
);

CREATE TABLE beneficiarios(
id_beneficiario int not null auto_increment primary key,
nome_beneficiario varchar(255) not null,
data_nascimento date not null,
idade smallint not null,
sexo char(2) not null,
cpf bigint not null,
email varchar(500) not null,
estado_civil varchar(50) not null,
id_plano int not null,
mensalidade float not null,
relacao varchar(50) not null,
data_adesao date not null,
data_termino date,
endereco varchar(500) not null,
numero smallint not null,
bairro varchar(255) not null,
cidade varchar(255) not null,
estado varchar(255) not null,
complemento varchar(500),
FOREIGN KEY (id_plano) REFERENCES planos (id_plano)
);

CREATE TABLE prestadores(
id_prestador int not null auto_increment primary key,
nome_prestador varchar(500) not null,
tipo_prestador varchar(255) not null,
especialidade varchar(255) not null,
endereco varchar(500) not null,
numero smallint not null,
bairro varchar(255) not null,
cidade varchar(255) not null,
estado varchar(255) not null
);

CREATE TABLE atendimentos(
id_atendimento int not null auto_increment primary key,
id_beneficiario int not null,
id_prestador int not null,
data_atendimento date not null,
tipo_guia varchar(255) not null,
descricao_procedimento varchar(500) not null,
valor_cobranca float not null,
valor_coparticipacao float not null,
FOREIGN KEY (id_beneficiario) REFERENCES beneficiarios (id_beneficiario),
FOREIGN KEY (id_prestador) REFERENCES prestadores (id_prestador)
);