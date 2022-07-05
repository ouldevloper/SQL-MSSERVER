create database AcciRoute;
use AcciRoute;
create table Personne(Nas varchar(9) primary key,nom varchar(35),villep varchar(50));
create table voiture (Imma varchar(6) primary key,model varchar(20),anne varchar(4),nas varchar(9));
create table accident(dateac date,nas varchar(9) foreign key references Personne(nas),dommage numeric(7,2),villeac varchar(50),imma varchar(6) foreign key references voiture(imma));
----------------------------------------------------------------------------------------------------------------------------------------------
--1
create proc createpersonne
as
begin
--if exists(select * from Personne) drop table Personne;
create table Personne(Nas varchar(9) primary key,nom varchar(35),villep varchar(50));
end

create proc createvoitur
as
begin
--if exists(select * from voiture) drop table voiture;
create table voiture (Imma varchar(6) primary key,model varchar(20),anne varchar(4),nas varchar(9));
end

create proc createaccid
as
begin
--if exists(select * from accident) drop table accident;
create table accident(dateac date,nas varchar(9) foreign key references Personne(nas),dommage numeric(7,2),villeac varchar(50),imma varchar(6) foreign key references voiture(imma));
end
	
----------------------------------------------------------------------------------------------------------------------------------------------
--2
create proc insertRoute
@Imma varchar(6) ,@model varchar(20),@anne varchar(4),@nas varchar(9)
as
insert into AcciRoute values(@Imma,@model,@anne,@nas);

----------------------------------------------------------------------------------------------------------------------------------------------
--3

create proc GetnumProp
@a int,
@b int
as
select count(nas) from accident where datepart(YEAR,dateac) between @a and @b;

----------------------------------------------------------------------------------------------------------------------------------------------
--4
create proc GetProp
as
begin

select p.nom,p.nas from Personne p where p.nas in (select a.nas from AcciRoute a where DATEDIFF(MONTH,GETDATE(),dateac)>=4);

end
----------------------------------------------------------------------------------------------------------------------------------------------
--5
create proc GetDamCity
@a varchar(55)
as
begin
if(select sum(dommage) from AcciRoute where villeac=@a)<=5000
begin
print 'catégorie1';
end

if (select sum(dommage) from AcciRoute where villeac=@a)>=5000 and (select sum(dommage) from AcciRoute where villeac=@a)<=10000
begin
print 'catégorie2';
end


if(select sum(dommage) from AcciRoute where villeac=@a)>10000
begin
print 'catégorie3';
end
end
----------------------------------------------------------------------------------------------------------------------------------------------
--6
create proc GetnumAcci
as
select count(*),villeac from accident group by villeac;

----------------------------------------------------------------------------------------------------------------------------------------------
--7
create proc GetNamProp
@a int
as
begin 
select nas from pesonne p inner join accident a on p.nas=a.nas where p.villep=a.villeac and count(*)>=@a;
end

----------------------------------------------------------------------------------------------------------------------------------------------
--8
create proc GetnumAcciDat
@a date
as
select count(*) from accident where dateac=@a;


----------------------------------------------------------------------------------------------------------------------------------------------
--9
create proc GetnumAcciHour
@a int,
@b int
as
select count(*) from accident where datepart(HOUR,dateac) between @a and @b;

----------------------------------------------------------------------------------------------------------------------------------------------
--10
create proc UpdateDam
as
update accident set dommage=dommage*0.05;




