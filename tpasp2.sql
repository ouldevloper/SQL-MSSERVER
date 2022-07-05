create database tpAsp2;
use tpAsp2;


create table vihicule(  immat varchar(55) primary key,
						marque varchar(55),
						model varchar(55),
						puissance int,
						carburant varchar(55),
						dateach date,
						compteur int,
						conducteur int foreign key references conducteur);

create table conducteur (	idconducteur int primary key identity,
							nomc varchar(55),
							prenc varchar(55),
							daten date,
							pass varchar(55)
							);

create table entretien (	identveh int primary key identity,
							immat varchar(55) foreign key references vihicule,
							idconducteur int foreign key references conducteur,
							dateentretien date,
							kmvehicule int 
						);

create table assvehicule(idass int primary key,
						nomassureur varchar(55),
						dateass date,
						dateexpiration date,
						immat int foreign key references vihicule
						);