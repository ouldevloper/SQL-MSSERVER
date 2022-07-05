
drop database if exists informatique;
create database informatique;
use informatique;
create table segment(indip varchar(11) ,nomsegment varchar(20) not null,etage tinyint(1));

create table salle(nsalle varchar(7),nomsalle varchar(20) not null,nbpost tinyint(2), indip varchar(11));

create table post(npost varchar(7) ,nompost varchar(20) not null,indip varchar(7) ,ad varchar(3) ,
				  typepost varchar(9),nsalle varchar(7),constraint check_ad check(to_nember(ad) between 0 and 255));

create table logeciel(nlog varchar(5),nomlog varchar(20) not null,dateach datetime,version varchar(7),
					  typelog varchar(20),prix decimal(6,2));

create table installer(npost varchar(7),nlog varchar(5) ,numins int(5),dateins timestamp,delai smallint);

create table types(	typelp varchar(9),nomtype varchar(20));	
