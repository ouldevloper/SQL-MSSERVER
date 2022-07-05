--Exe 1
use master;
go
create database AcciRoute;
go
use AcciRoute;
--Q1
create proc CreateAcciRoute
as
begin
	--check if the table personne exists
	if  exists(select * from sys.tables where name='Personne')
		begin
			drop table Personne;
			create table Personne(
				Nas char(9) primary key,
				nom varchar(35),
				villeP varchar(50)
			);
		end
	else
		begin 
			create table Personne(
				Nas char(9) primary key,
				nom varchar(35),
				villeP varchar(50)
			);	
		end
		--  end
		-- check for the voiture table
	if  exists(select * from sys.tables where name='Voiture')
		begin
			drop table Voiture;
			create table voiture(
				Imma char(6) primary key,
				modele varchar(20),
				annee char(4),
				nas char(9)
			);
		end
	else
		begin
			create table voiture(
				Imma char(6) primary key,
				modele varchar(20),
				annee char(4),
				nas char(9)
			);
		end
		--end
	if  exists(select * from sys.tables where name='Accident')
		begin
			drop table Accident;
			create table Accident(
				DateAc date primary key,
				Nas char(9) foreign key references Personne(nas),
				dommage numeric(7,2),
				villeAc varchar(50),
				imma char(6) foreign key references Voiture(Imma)
			);
		end
	else
		begin
			create table Accident(
				DateAc date primary key,
				Nas char(9) foreign key references Personne(nas),
				dommage numeric(7,2),
				villeAc varchar(50),
				imma char(6) foreign key references Voiture(Imma)
			);
		end
end

--Q2
Create proc InsertAcciRoute 
	@personneNas char(9),
	@personnenom varchar(35),
	@personneVille varchar(50),
	@voitureImma char(6),
	@voitureModele varchar(20),
	@voitureAnne char(4),
	@AccedentDate date,
	@AccedentDommage numeric(7,2),
	@villeAc varchar(50)
as
begin
	if  exists(select * from sys.tables where name='Personne') and exists(select * from sys.tables where name='Voiture') and exists(select * from sys.tables where name='Accident')
	begin
		insert into Personne Values(@personneNas,@personnenom,@personneVille);
		insert into Voiture values(@voitureImma,@voitureModele,@voitureAnne,@personneNas);
		insert into Accident values(@AccedentDate,@personneNas,@AccedentDommage,@villeAc,@voitureImma);
	end
end

--Q3

create proc GetNumProp
	@annes date,
	@annee date,
	@num int output
as
begin
	select distinct @num = count(distinct nas)  from Accident where dateac between @annes and @annee
	print @num;
end

--Q4
create proc GetProp
@nom varchar(35) output,
@nas char(9) output
as 
declare @maxdate date;
declare @mindate date;
begin 
	select @maxdate=max(dateac) from Accident where nas = 'nas1';
	select @mindate=min(dateac) from Accident where nas = 'nas1';
	select @nas =  p.nas from personne p inner join Accident a on a.Nas = p.Nas where DATEDIFF(MONTH,@maxdate,@mindate) = 4 group by p.nas having count(p.nas) = 2
	select @nom = nom from personne where nas=@nas;
end

--Q5
create proc GetDamCity
@city varchar(50)
as
declare @c numeric(7,2);
begin
	select @c = sum(dommage) from Accident where villeac = @city 
	if @c<=5000
	begin 
		print 'categoie1';
	end
	else if @c between 5000 and 10000
	begin 
		print 'categorie2'
	end
	else
	begin
		print 'categorie3'
	end
end

--Q6
create proc GetNumAcci
as
begin
	select villeac,count(villeac)as[le nombre total d'accident] from accident group by(villeac)
end

--Q7
create proc GetNumProp
@x int,
@nom varchar(20) output
as
declare @ville varchar(50);
begin	
	select @ville = a.villeac from personne p inner join accident a on a.nas= p.nas  group by(a.villeac) having count(a.villeac) > @x;
	select @nom = nom from personne where villep = @ville;
end

--Q8

create proc GetnumAccidat 
@date date
as
begin
select count(*) from accident where dateac = @date;
end

--Q9
create proc GetnumAcciHour
@fhour int,
@lhour int
as

begin
	
	select count(*) from accident datepart(hour,dateac) between 00 and 12 
end

--Q10
create proc updateDam
as
begin
	update accident set dommage=dommage-(dommage*5/100)
end


----------------------Ex2
--Q1
use master;
go
create database GestLog;
go
use GestLog;

create proc GestLogTable
as
begin
	create table Personne(
		Nump int primary key,
		nom varchar(20),
		prenom varchar(20),
		tel varchar(10)
	);
	
	create table Commune(
		Nomcom varchar(20) primary key,
		NbreLog varchar(20)
	);
	create table type(
		typelog varchar(10) primary key,
		chargefix varchar(10)
	);
	create table logement(
		numlog int primary key,
		address varchar(50),
		supperficie varchar(10),
		loyer float,
		typelog varchar(10) foreign key references type(typelog),
		nomlcom varchar(20) foreign key references commune(Nomcom)
	);
	create table Occupe(
		nump int foreign key references Personne(Nump),
		Numlog int foreign key references logement(numlog),
		dated date,
		datef date
	);
end

--Q2
create proc aaffiche
as
declare @month int;
begin 
	select @month = datepart(month,getdate());
	select * from logement where numlog not in(select numlog from occupe) or numlog in(select numlog from Occupe where datepart(month,datef) <= @month)
end

--Q4

create proc MajLoyer
@perc int ,
@somme float output
as
begin
	update logement set loyer = loyer+((loyer*@perc)/100) 
	
end

--Q6
create function NbreMois(@nump int)
returns int
as
begin
	
end 