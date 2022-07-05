/* Creation des tables et PK */

CREATE TABLE Segment
	(indIP      varchar(11),
	 nomSegment varchar(20) NOT NULL,
	 etage TINYINT(1),
	 CONSTRAINT pk_Segment PRIMARY KEY (indIP));

CREATE TABLE Salle
	(nSalle     varchar(7),
	 nomSalle   varchar(20) NOT NULL,
	 nbPoste    TINYINT(2),
	 indIP      varchar(11),
	 CONSTRAINT pk_salle PRIMARY KEY (nSalle));

CREATE TABLE Poste
	(nPoste     varchar(7),
	 nomPoste   varchar(20) NOT NULL,
	 indIP      varchar(11),
	 ad         varchar(3),
	 typePoste  varchar(9),
	 nSalle     varchar(7),
	 CONSTRAINT pk_Poste PRIMARY KEY (nPoste),
	 CONSTRAINT ck_ad    CHECK (ad BETWEEN '000' AND '255'));

CREATE TABLE Logiciel
	(nLog       varchar(5),
	 nomLog     varchar(20) NOT NULL,
	 dateAch    DATETIME,
	 version    varchar(7),
	 typeLog    varchar(9),
	 prix       DECIMAL(6,2),
	 CONSTRAINT pk_Logiciel PRIMARY KEY (nLog),
	 CONSTRAINT ck_prix     CHECK (prix >= 0));

CREATE TABLE Installer
	(nPoste     varchar(7),
	 nLog       varchar(5),
	 numIns     INTEGER(5) AUTO_INCREMENT,
	 dateIns    TIMESTAMP DEFAULT NOW(),
	 delai      DECIMAL(8,2),
	 CONSTRAINT pk_Installer PRIMARY KEY(numIns));

CREATE TABLE Types
	(typeLP   varchar(9), nomType varchar(20),
	 CONSTRAINT pk_types PRIMARY KEY(typeLP));
