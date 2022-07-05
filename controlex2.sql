--EX2

create database GestLog;
use GestLog
---------------------------------------------------------------------------------------------------------------------------------------
--1)
create proc GestLogTable
as
begin
--if exists(select * from personne) drop table personne;
create table personne(nump int primary key,nom varchar(55),prenom varchar(55),tel varchar(55));

--if exists(select * from Commune) drop table Commune;
create table Commune(nomcom varchar(55) primary key,nblog int);

--if exists(select * from Type) drop table Type;
create table Type(Typelog int primary key,chargefix varchar(25));

--if exists(select * from Logement) drop table Logement;
create table Logement(numlogement int primary key,address varchar(55),superficie varchar(55),
					  teloyerl varchar(55),nomcom varchar(55) foreign key references Commune (nomcom) );


--if exists(select * from Occupe) drop table Occupe
create table Occupe(	nump int foreign key references personne(nump),
					 	numlog int foreign key references Logement (numlogement),
					 	datd date,datf date);

end


insert into personne values(1,'abc','def','0000000'),(2,'abc1','def1','0000000'),(3,'abc2','def2','0000000');
insert into Commune values('xyz',18),('xyz1',12),('xyz2',10);
insert into Type values(1,'aaaaa'),(2,'aaaaa1'),(3,'aaaaa2');
insert into Logement values(1,'ait baha','abc','mef','xyz'),(2,'ait baha','abc','mef','xyz2'),(3,'ait baha','abc','mef','xyz1');
insert into occupe values(1,2,'01-01-2011','02-02-2011'),(2,1,'01-01-2011','02-02-2011'),(1,1,'01-01-2011','02-02-2011');
---------------------------------------------------------------------------------------------------------------------------------------
--2)
create proc Showlogements
as
select distinct * from Logement l inner join Occupe o on l.numlogement<>o.numlog and 
datepart(month,o.datf)=datepart(Month,o.datf)+1

---------------------------------------------------------------------------------------------------------------------------------------
--4)
create proc MAJLoyer
@a float,
@b float output
as
set @b=((@b*@a)/100)


create proc AficheTAbleLogment
as

---------------------------------------------------------------------------------------------------------------------------------------
--5)


---------------------------------------------------------------------------------------------------------------------------------------
--6)


create  function Nump(@a int)
returns int
as
begin
Declare @b int;
set @b=(select top 1 DATEDIFF(MONTH,o.datf,o.datd) from Occupe o INNER JOIN PERSONNE P ON	p.nump=o.numlog where o.nump=@a);
return @b
end

---------------------------------------------------------------------------------------------------------------------------------------
--7)
create function SomLoyer(@a int)
	returns int
	as
	begin
	declare @b int;
	set @b = (select dbo.Nump(1)*l.teloyerl from occupe o inner join Logement l on l.numlogement=o.numlog);
	return @b
	end

