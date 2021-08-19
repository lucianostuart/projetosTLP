CREATE DATABASE biblioteca;

CREATE TABLE exemplar (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    ano INT,
    idioma VARCHAR(30)
);

CREATE TABLE livro (
    codigo INT PRIMARY KEY,
    ISBN VARCHAR(20), 
    numero_paginas INT,
    editora VARCHAR(30),

    CONSTRAINT fk_exemplar_livro FOREIGN KEY(codigo) REFERENCES exemplar(id)
);

CREATE TABLE midia (
    codigo INT PRIMARY KEY,
    tipo VARCHAR(20),
    tempo_duracao DECIMAL,

    CONSTRAINT fk_exemplar_midia FOREIGN KEY(codigo) REFERENCES exemplar(id)
);

CREATE TABLE curso(

    idCurso SERIAL PRIMARY KEY,
    nomeCurso VARCHAR(30),
    quantidadeSemestre INT,
    tipo VARCHAR(10)
);

CREATE TABLE aluno(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    cpf VARCHAR(13),
    ra VARCHAR(20),
    idCurso INT,

    CONSTRAINT fk_curso_aluno FOREIGN KEY(idCurso) REFERENCES curso(idCurso)
);

CREATE TABLE emprestimo(
    id_consulta SERIAL PRIMARY KEY,
    id_exemplar INT,
    id_aluno INT,
    data_retirada DATE,
    data_devolucao DATE,

    CONSTRAINT fk_emprestimo FOREIGN KEY(id_exemplar) REFERENCES exemplar(id),
    CONSTRAINT fk_emprestimo_aluno FOREIGN KEY(id_aluno) REFERENCES aluno(id)
);


/*
Banco legal do Luciano
*/

CREATE DATABASE banco_legal;

CREATE TABLE cliente(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(40),
    CPF VARCHAR(13)
);

CREATE TABLE conta(
    numero INT PRIMARY KEY,
    agencia VARCHAR(10),
    saldo DECIMAL,
    id_cliente INT,

    CONSTRAINT fk_conta_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id)
);

CREATE TABLE corrente(

    numero_conta INT PRIMARY KEY,
    limite DECIMAL,

    CONSTRAINT fk_conta_corrente FOREIGN KEY(numero_conta) REFERENCES conta(numero)
);

CREATE TABLE poupanca(
    n_conta INT PRIMARY KEY,
    juros DECIMAL,

    CONSTRAINT fk_conta_poupanca FOREIGN KEY(n_conta) REFERENCES conta(numero)
);

CREATE TABLE movimento (
    id SERIAL PRIMARY KEY,
    id_conta INT,
    data DATE,
    tipo VARCHAR(9),
    valor DECIMAL,

    CONSTRAINT fk_movimento_conta FOREIGN KEY(id_conta) REFERENCES conta(numero)
);