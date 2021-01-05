CREATE DATABASE BDTorino
GO

USE BDTorino
GO

CREATE TABLE Relatorios (
	IDRel int PRIMARY KEY IDENTITY,
	RelUser varchar(30) NOT NULL,
	RelMod varchar(60) NOT NULL,
	RelPN varchar(15) NOT NULL,
	RelQtd varchar(10) NOT NULL,
	RelImg bit NOT NULL,
	DsImg varchar(200),
	RelLogo bit NOT NULL,
	DsLogo varbinary(max),
	RelAsset bit NOT NULL,
	DsAsset varchar(30),
	RelMasc bit NOT NULL,
	DsMasc varchar(30),
	RelPWBios bit NOT NULL,
	DsPWBios varchar(30),
	RelAttBios bit NOT NULL,
	DsAttBios varchar(200),
	RelSetBios bit NOT NULL,
	DsSetBios varchar(200),
	RelData datetime DEFAULT getdate()
)
GO

CREATE TABLE Seriais (
	IDSerial int PRIMARY KEY IDENTITY,
	DsCliente varchar(30) NOT NULL,
	DsEquip varchar(60) NOT NULL,
	DsPN varchar(15) NOT NULL,
	DsSN varchar(15) NOT NULL,
	DsAsset varchar(30) NOT NULL,
	DsDataHr DATETIME DEFAULT getdate()
)
GO

CREATE TABLE Usuarios (
	IDUsuario int PRIMARY KEY IDENTITY,
	DsLogin varchar(60) NOT NULL,
	DsSenha varchar(32) NOT NULL
)
GO

CREATE TABLE Equipamentos (
	IDEquip int PRIMARY KEY IDENTITY,
	NmEquip varchar(60) NOT NULL,
	PNEquip varchar(15) NOT NULL
)
GO

INSERT INTO Usuarios VALUES('admin', 'bfd59291e825b5f2bbf1eb76569f8fe7')

INSERT INTO Seriais VALUES
('DPRJ', '800G4', 'ALKS54AP#AC4', 'BRJUAH4673', '123456', '05/04/2017'),
('DPRJ', '800G4', 'ALKS54AP#AC4', 'BRJUAH4676', '123457', '05/04/2017'),
('DPRJ', '800G4', 'ALKS54AP#AC4', 'BRJUAH4673', '123458', '05/04/2017'),
('MPSP', '640G6', 'LOP946AA#AC4', 'BRJ78HGAN6', '578444', '05/01/2018'),
('MPSP', '640G6', 'LOP946AA#AC4', 'BRJ78HGAN3', '578441', '05/01/2021'),
('MPSP', '640G6', 'LOP946AA#AC4', 'BRJ78HGANN', '578444', '05/01/2021')

INSERT INTO Equipamentos VALUES('800G4', 'ALKS54AP#AC4'),('640G6', 'LOP946AA#AC4')