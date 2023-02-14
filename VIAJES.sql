CREATE DATABASE VIAJES CHARACTER SET utf8 COLLATE utf8_bin;
USE VIAJES;
CREATE TABLE TOUR(
    Fecha_Ini DATE PRIMARY KEY,
    Finalidad VARCHAR(30),
    Duracion INT,
    Tipo_Trans VARCHAR(20),
    Descrioncion VARCHAR(50),
    Precio INT,
    Plazas_Max INT
);
CREATE TABLE CLIENTE(
    Cod_Cliente VARCHAR(10) PRIMARY KEY,
    Fecha_Viaje DATE
);
CREATE TABLE RESERVA(
    Cod_Cliente VARCHAR(10),
    Fecha_Ini DATE,
    Fecha_Reser DATE,
    Fianza INT,
    PRIMARY KEY(Cod_Cliente, Fecha_Ini),
    FOREIGN KEY (Cod_Cliente) REFERENCES CLIENTE (Cod_Cliente),
    FOREIGN KEY (Fecha_Ini) REFERENCES TOUR (Fecha_Ini)
);
CREATE TABLE HOTEL(
    Cod_Hotel VARCHAR(10) PRIMARY KEY,
    F_Entrada DATE,
    F_Salida DATE,
    Gasto_per INT,
    Tipo_Est VARCHAR(20),
    Precio_Noche INT
);
CREATE TABLE ALOJA(
    Cod_Cliente VARCHAR(10),
    Cod_Hotel VARCHAR(10),
    Fecha_Entra DATE,
    Fecha_Sali DATE,
    PRIMARY KEY(Cod_Cliente, Cod_Hotel, Fecha_Entra),
    FOREIGN KEY(Cod_Cliente) REFERENCES CLIENTE(Cod_Cliente),
    FOREIGN KEY(Cod_Hotel) REFERENCES HOTEL(Cod_Hotel)
);
CREATE TABlE HOTEL_PUNTOINTERES(
    Cod_Punto VARCHAR(10),
    Cod_Hotel VARCHAR(10),
    PRIMARY KEY(Cod_Punto, Cod_Hotel),
    FOREIGN KEY(Cod_Hotel) REFERENCES HOTEL(Cod_Hotel)
);
CREATE TABLE ZONAS_GEOGRAFICAS(
    Cod_Punto VARCHAR(10),
    Cod_Zona  VARCHAR(10),
    PRIMARY KEY(Cod_Zona, Cod_Punto),
    FOREIGN KEY (Cod_Punto) REFERENCES HOTEL_PUNTOINTERES(Cod_Punto)
);
CREATE TABLE MONUMENTOS(
    Cod_Punto VARCHAR(10),
    Cod_Monu  VARCHAR(10),
    PRIMARY KEY(Cod_Monu, Cod_Punto),
    FOREIGN KEY (Cod_Punto) REFERENCES HOTEL_PUNTOINTERES(Cod_Punto)
);
CREATE TABLE PUNTO_INTERES(
    Cod_Punto VARCHAR(10) PRIMARY KEY,
    Tipo  VARCHAR(15),
    DESCRIPCION VARCHAR(50),
    FOREIGN KEY (Cod_Punto) REFERENCES HOTEL_PUNTOINTERES(Cod_Punto)
);
CREATE TABLE CIUDADES(
    Cod_Punto VARCHAR(10),
    Cod_Ciudad  VARCHAR(10),
    PRIMARY KEY(Cod_Ciudad, Cod_Punto),
    FOREIGN KEY (Cod_Punto) REFERENCES HOTEL_PUNTOINTERES(Cod_Punto)
);
CREATE TABLE COMPUESTO(
    Cod_Punto VARCHAR(10),
    Fecha_Ini DATE,
    Dia_Tour DATE,
    PRIMARY KEY(Fecha_Ini, Cod_Punto),
    FOREIGN KEY (Cod_Punto) REFERENCES HOTEL_PUNTOINTERES(Cod_Punto),
    FOREIGN KEY (Fecha_Ini) REFERENCES TOUR(Fecha_Ini)
);