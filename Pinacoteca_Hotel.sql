/*4.4*/
CREATE DATABASE Pinacoteca CHARACTER SET utf8 COLLATE utf8_bin;
CREATE TABLE Pinacoteca (
    Nombre VARCHAR(20) PRIMARY KEY,
    Ciudad VARCHAR (20),
    Direccion VARCHAR (50),
    Metros INT
);
CREATE TABLE Cuadro (
    Codigo VARCHAR (9) PRIMARY KEY,
    Fecha DATE,
    Tecnica VARCHAR (20),
    nomPinacoteca VARCHAR(20),
    nomPintor VARCHAR(20),
    CONSTRAINT FK1
    FOREIGN KEY (nomPinacoteca) REFERENCES Pinacoteca (Nombre),
    CONSTRAINT FK2
    FOREIGN KEY (nomPintor) REFERENCES Pintor(Nombre)
);
CREATE TABLE Pintor (
    Nombre VARCHAR (20) PRIMARY KEY,
    Pais VARCHAR (20),
    FechNac DATE,
    FechDefun DATE,
    nomMaestro VARCHAR (20),
    nomEscuela VARCHAR (20),
    CONSTRAINT FK3
    FOREIGN KEY (nomMaestro) REFERENCES Pintor (Nombre),
    CONSTRAINT FK4
    FOREIGN KEY (nomEscuela) REFERENCES Escuela (Nombre)
);
CREATE TABlE Escuela (
    Nombre VARCHAR (20) PRIMARY KEY,
    Pais VARCHAR(20),
    FechaAparic DATE
);
CREATE TABLE Mecenas (
    Nombre VARCHAR (20) PRIMARY KEY,
    FechDefun DATE,
    CiudadNac VARCHAR(20),
    Pais VARCHAR(20),
    Fecha DATE
);
CREATE TABLE Proteger (
    nomPintor VARCHAR (20),
    nomMecenas VARCHAR (20),
    CONSTRAINT FK5
    FOREIGN KEY (nomPintor) REFERENCES Pintor (Nombre),
    CONSTRAINT FK6
    FOREIGN KEY (nomMecenas) REFERENCES Mecenas (Nombre),
    PRIMARY KEY (nomPintor, nomMecenas)
);
/*4.5*/
CREATE DATABASE Hotel CHARACTER SET utf8 COLLATE utf8_bin;
CREATE TABLE Hotel (
    Cod_hotel VARCHAR(9) PRIMARY KEY,
    Identificativo VARCHAR (9),
    nombre VARCHAR (20),
    Categoria VARCHAR (20),
    Direccion VARCHAR (20),
    Telefono VARCHAR (20),
    Director VARCHAR (20),
    Ciudad VARCHAR (20)
);
CREATE TABLE Plantas (
    Cod_Planta VARCHAR (5) PRIMARY KEY,
    Cod_hotel VARCHAR (9),
    CONSTRAINT FKhotel
    FOREIGN KEY (Cod_hotel) REFERENCES Hotel (Cod_hotel)
);
CREATE TABLE Estancia (
    Cod_Estancia VARCHAR (9) PRIMARY KEY,
    Cod_Planta VARCHAR (5),
    CONSTRAINT FKPlanta
    FOREIGN KEY (Cod_Planta) REFERENCES Plantas (Cod_Planta)
);
CREATE TABLE Salon (
    Cod_Estancia VARCHAR (9) PRIMARY KEY,
    Aforo INT,
    Equipamiento VARCHAR(20),
    CONSTRAINT FKEstancia
    FOREIGN KEY (Cod_Estancia) REFERENCES Estancia (Cod_Estancia)
);
CREATE TABLE Habitacion (
    Cod_Estancia VARCHAR (9) PRIMARY KEY,
    CONSTRAINT FKEstanhabi
    FOREIGN KEY (Cod_Estancia) REFERENCES Estancia (Cod_Estancia)
);
CREATE TABLE Indivual (
    Cod_Estancia VARCHAR (9) PRIMARY KEY,
    Decoracion VARCHAR (20),
    dimen_cama INT (8),
    internet VARCHAR (9),
    CONSTRAINT FKEstanIndi
    FOREIGN KEY (Cod_Estancia) REFERENCES Estancia (Cod_Estancia)
);
CREATE TABLE Doble (
    Cod_Estancia VARCHAR (9) PRIMARY KEY,
    Decoracion VARCHAR (20),
    dimen_cama INT (8),
    internet VARCHAR (9),
    CONSTRAINT FKEstanDoble
    FOREIGN KEY (Cod_Estancia) REFERENCES Estancia (Cod_Estancia)
);
CREATE TABLE Suit (
    Cod_Estancia VARCHAR (9) PRIMARY KEY,
    Decoracion VARCHAR (20),
    dimen_cama INT (8),
    internet VARCHAR (9),
    CONSTRAINT FKEstanSuit
    FOREIGN KEY (Cod_Estancia) REFERENCES Estancia (Cod_Estancia)
);
CREATE TABLE Factura (
    Cod_Factura INT (7)PRIMARY KEY,
    Importe INT (7),
    Gastos_tlf INT (7)
);
CREATE TABLE Cliente (
    Cod_Cliente VARCHAR (9) PRIMARY KEY,
    NIF_DNI VARCHAR (9),
    Descripcion VARCHAR (20),
    Tfno VARCHAR (9)
);
CREATE TABLE Reserva (
    Cod_Estancia VARCHAR (9),
    Cod_Cliente VARCHAR (9),
    Cod_Factura INT (7),
    Fecha_entrada DATE,
    Fecha_Salida DATE,
    PRIMARY KEY (Cod_Estancia, Cod_Cliente, Cod_Factura),
    CONSTRAINT FKEstanReserva
    FOREIGN KEY (Cod_Estancia) REFERENCES Estancia (Cod_Estancia),
    CONSTRAINT FKCliente
    FOREIGN KEY (Cod_Cliente) REFERENCES Cliente (Cod_Cliente),
    CONSTRAINT FKFactura
    FOREIGN KEY (Cod_Factura) REFERENCES Factura (Cod_Factura)
);
CREATE TABLE Usa (
    Cod_Estancia VARCHAR (9),
    Cod_Cliente VARCHAR (9),
    Conferencia VARCHAR (20),
    Cursillo VARCHAR (20),
    Exposicion VARCHAR(20),
    Congreso VARCHAR (20),
    PRIMARY KEY (Cod_Estancia, Cod_Cliente),
    CONSTRAINT FKEstanReserva
    FOREIGN KEY (Cod_Estancia) REFERENCES Estancia (Cod_Estancia),
    CONSTRAINT FKCliente
    FOREIGN KEY (Cod_Cliente) REFERENCES Cliente (Cod_Cliente)
);
