use parcinformation;
	create table softs(nomsoft varchar(20),version varchar(7),prix decimal(6,2));
	create table pcseuls(np varchar(7),nomp varchar(20),seg varchar(11),ad varchar(3),typep varchar(9),salle varchar(7));
	insert into softs select nomlog,version,prix from logiciel;
	insert into pcseuls select * from poste;
	select * from softs;
	select * from pcseuls;