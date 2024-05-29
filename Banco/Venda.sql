
CREATE DATABASE Gestran COLLATE Latin1_General_100_CI_AI

USE Gestran;

SET DATEFORMAT dmy;

CREATE TABLE Venda (
  Id        INT NOT NULL IDENTITY,
  DataVenda DATE NOT NULL,
  Vendedor  VARCHAR(12) NOT NULL,
  Valor     MONEY NOT NULL,
  Descto    MONEY,
  Total     NUMERIC(19, 15) NOT NULL
  CONSTRAINT PK_Venda PRIMARY KEY(Id)
);

CREATE INDEX IX_VendaData     ON Venda(DataVenda);
CREATE INDEX IX_VendaVendedor ON Venda(DataVenda);
