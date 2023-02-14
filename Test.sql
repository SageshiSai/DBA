CREATE DATABASE Prueba;
USE Prueba;
CREATE TABLE Usuario(
    Cod_Usuario INT PRIMARY KEY,
    Nombre VARCHAR(20)
);
CREATE TABLE Asignatura(
    Cod_Asignatura INT PRIMARY KEY,
    Titulo VARCHAR(20),
    Creditos INT
);
CREATE TABLE Matricula(
    Cod_Usuario INT,
    Cod_Asignatura INT,
    PRIMARY KEY(Cod_Asignatura, Cod_Usuario),
    FOREIGN KEY (Cod_Asignatura) REFERENCES Asignatura(Cod_Asignatura),
    FOREIGN KEY (Cod_Usuario) REFERENCES Usuario(Cod_Usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);