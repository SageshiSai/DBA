CREATE DATABASE GIMNASIO CHARACTER SET utf8 COLLATE utf8_bin;
USE GIMNASIO;
CREATE TABLE BANCOS (
    ENT_SUC INT NOT NULL PRIMARY KEY,
    NOMBRE VARCHAR(50),
    DIRECCION VARCHAR(50),
    LOCALIDAD VARCHAR(30),
    TELEFONOS VARCHAR(30)
);
CREATE TABLE ACTIVIDADES(
    CODIGO_ACTIVIDAD    VARCHAR(7) NOT NULL PRIMARY KEY,
    DESCRIPCION VARCHAR(20),
    CUOTA   INT
);
CREATE TABLE USUARIOS(
    NUM_SOCIO VARCHAR(7) NOT NULL PRIMARY KEY,
    DNI VARCHAR(9) NOT NULL,
    NOMBRE VARCHAR(20),
    APELLIDOS VARCHAR(30),
    FOTOGRAFIA VARCHAR(30),
    DOMICILIO VARCHAR(40),
    LOCALIDAD VARCHAR(50),
    CP VARCHAR(5),
    FECHA_NACIMIENTO DATE,
    TELEFONOS VARCHAR(20),
    TAQUILLA VARCHAR(15),
    HORARIO VARCHAR(15),
    FECHA_ALTA DATE,
    FECHA_BAJA DATE,
    CUOTA_SOCIO INT,
    CUOTA_FAMILIAR INT,
    PAGA_BANCO VARCHAR(20) NOT NULL,
    CODIGO_BANCO INT,
    CUENTA INT,
    DIGITO_CONTROL INT,
    OBSERVACIONES VARCHAR(500),
    CONSTRAINT FK1
    FOREIGN KEY (CODIGO_BANCO) REFERENCES BANCOS (ENT_SUC)
);
CREATE TABLE ACTIVIDADES_USUARIOS(
    CODIGO_ACTIVIDAD VARCHAR(7) NOT NULL,
    CODIGO_USUARIO VARCHAR(7) NOT NULL,
    FECHA_ALTA DATE,
    FECHA_BAJA DATE,
    PRIMARY KEY(CODIGO_ACTIVIDAD, CODIGO_USUARIO),
    CONSTRAINT FK2
    FOREIGN KEY (CODIGO_ACTIVIDAD) REFERENCES ACTIVIDADES (CODIGO_ACTIVIDAD),
    CONSTRAINT FK3
    FOREIGN KEY (CODIGO_USUARIO) REFERENCES USUARIOS (NUM_SOCIO)
);
CREATE TABLE PAGOS(
    CODIGO_USUARIO VARCHAR(7) NOT NULL,
    NUMERO_MES INT NOT NULL,
    CUOTA INT,
    OBSERVACIONES VARCHAR(500),
    PRIMARY KEY (CODIGO_USUARIO, NUMERO_MES),
    CONSTRAINT FK4
    FOREIGN KEY (CODIGO_USUARIO) REFERENCES USUARIOS (NUM_SOCIO)
);
CREATE TABLE USUARIOS_ASOCIADOS (
    CODIGO_USUARIO VARCHAR(7) NOT NULL,
    USUARIOS_ASOCIADOS VARCHAR(7) NOT NULL,
    PRIMARY KEY(CODIGO_USUARIO, USUARIOS_ASOCIADOS),
    CONSTRAINT FK5
    FOREIGN KEY (CODIGO_USUARIO) REFERENCES USUARIOS (NUM_SOCIO),
    CONSTRAINT FK6
    FOREIGN KEY (USUARIOS_ASOCIADOS) REFERENCES USUARIOS_ASOCIADOS (CODIGO_USUARIO)
);