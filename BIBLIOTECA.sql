CREATE DATABASE BIBLIOTECA CHARACTER SET utf8 COLLATE utf8_bin;
USE BIBLIOTECA;
CREATE TABLE AUTOR(
    CodigoAutor INT PRIMARY KEY,
    Nombre VARCHAR(20)
);
CREATE TABLE LIBRO(
    CodigoLibro VARCHAR(10) PRIMARY KEY,
    Titulo VARCHAR(50),
    ISBN VARCHAR(25),
    Editorial VARCHAR(25),
    Paginas INT
);
CREATE TABLE ESCRIBE(
    CodigoLibro VARCHAR(10),
    CodigoAutor INT,
    PRIMARY KEY(CodigoAutor, CodigoLibro),
    CONSTRAINT FK1 FOREIGN KEY (CodigoAutor) REFERENCES AUTOR (CodigoAutor),
    CONSTRAINT FK2 FOREIGN KEY (CodigoLibro) REFERENCES LIBRO (CodigoLibro)
);
CREATE TABLE EJEMPLAR(
    CodigoEjemplar VARCHAR(10) PRIMARY KEY,
    Localizacion VARCHAR(10),
    CodigoLibro VARCHAR(10),
    CONSTRAINT FK3 FOREIGN KEY (CodigoLibro) REFERENCES LIBRO (CodigoLibro)
);
CREATE TABLE USUARIO(
    CodigoUsuario VARCHAR(10) PRIMARY KEY,
    Nombre VARCHAR(25)
);
CREATE TABLE TOMA_PRESTADO(
    CodigoUsuario VARCHAR(10),
    CodigoEjemplar VARCHAR(10),
    Fecha_Prestamo DATE,
    Fecha_Devoluion DATE,
    PRIMARY KEY(CodigoUsuario, CodigoEjemplar, Fecha_Prestamo),
    CONSTRAINT FK4 FOREIGN KEY (CodigoUsuario) REFERENCES USUARIO (CodigoUsuario), 
    CONSTRAINT FK5 FOREIGN KEY (CodigoEjemplar) REFERENCES EJEMPLAR (CodigoEjemplar)
);