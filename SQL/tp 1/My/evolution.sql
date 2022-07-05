alter table segment add (nbsalle tinyint(2) default 0,nbpost tinyint(2) default 0);

alter table logeciel add (nbpost tinyint(2) default 0);

alter table post add(nblog tinyint(2) default 0);

alter table salle modify nomsalle varchar(30);

alter table segment modify nomsegment varchar(15);

alter table segment modify nomsegment varchar(10);


select * from segment ;
select * from salle ;
select * from post ;
select * from installer ;
select * from logeciel ;
select * from types ;