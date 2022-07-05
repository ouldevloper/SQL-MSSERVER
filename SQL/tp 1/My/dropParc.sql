--drop database if exists informatique;
--source creProc.sql

use informatique;

drop table if exists segment;
drop table if exists salle;
drop table if exists post;
drop table if exists installer;
drop table if exists logeciel;
drop table if exists types;


create table if not exists segment(indip varchar(11) ,nomsegment varchar(20) not null,etage tinyint(1));

create table if not exists salle(nsalle varchar(7),nomsalle varchar(20) not null,nbpost tinyint(2), indip varchar(11));

create table if not exists post(npost varchar(7) ,nompost varchar(20) not null,indip varchar(7) ,ad varchar(3) ,typepost varchar(9),nsalle varchar(7),constraint check_ad check(to_nember(ad) between 0 and 255));

create table if not exists logeciel(nlog varchar(5),nomlog varchar(20) not null,dateach datetime,version varchar(7),typelog varchar(20),prix decimal(6,2));

create table if not exists installer(npost varchar(7),nlog varchar(5) ,numins int(5) primary key auto_increment ,dateins timestamp,delai smallint);

create table if not exists types(typelp varchar(9),nomtype varchar(20));	