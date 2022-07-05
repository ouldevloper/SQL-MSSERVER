create database DB_Banque;
use DB_Banque;
create table agence(numAgence int primary key,
					Nom varchar(50),
					ville varchar(25),
					actif varchar(20));
create table client(numClient int primary key,
					nom varchar(50),
					ville varchar(25));
create table compte(numCompte int ,
					numAgence int,
					numClient int,
					solde float(7,2),
					constraint fk_numAgence_comp foreign key (numAgence) references agence (numAgence),
					constraint fk_numClient_comp foreign key (numClient) references client (numClient),
					primary key(numCompte,numAgence,numClient));
create table emprunt(numEmprunt int,
					 numAgence int,
					 numClient int,
					 montant float(7,2),
					 constraint fk_numAgence_emp foreign key (numAgence) references agence (numAgence),
					 constraint fk_numClient_emp foreign key (numClient) references client (numClient),
					 primary key (numEmprunt,numAgence,numClient));
insert into client values(1,'el hachem ben said','tafraout'),
						 (2,'abdellah oulahyane','ait baha'),
						 (3,'hafid id baha','massa'),
						 (4,'mounir ich','agadir'),
						 (5,'driss moufdil','tighmi'),
						 (6,'anjjar youssef','belfa3'),
						 (7,'akoubi mustapha','tarraset'),
						 (8,'el kadiri lahoucin','idawsmlal'),
						 (9,'boukhsima hassna','tafraout'),
						 (10,'nassima elguiddi','tiznit');

insert into agence values(1,'WAFA CASH','ait baha','atif'),
	                     (2,'CHEAABI BANQUE','tafraout','atif'),
	                     (3,'CIH BANCK','aGadir','atif'),
	                     (4,'WAFA CAHSH','massa','actif'),
	                     (5,'MONYGRAMME','belfa3','actif'),
	                     (6,'ATEJARI WAFA BANQUE','tiznit','actif'),
	                     (7,'AMANA L3AMA BANQUE','casa blanca','actif'),
	                     (8,'L9ARED LFILA7I','rabat','actif');
insert into compte values(1,1,1,12000.00),
						 (2,2,1,120040.00),
						 (3,2,5,1200250.00),
						 (4,7,7,1202500.00),
						 (5,4,5,1202400.00),
						 (6,6,6,1205700.00),
						 (7,1,8,12073500.00),
						 (8,3,10,1204200.00);
insert into emprunt values(1,1,1,12000.00),
						 (2,2,1,120040.00),
						 (3,2,5,1200250.00),
						 (4,7,7,1202500.00),
						 (5,4,5,1202400.00),
						 (6,6,6,1205700.00),
						 (7,1,8,12073500.00),
						 (8,3,10,1204200.00);
---------------------------------------------------------------------
--Section 2
--1)
update compte 
set solde=0 
where solde is null;
--2)
update agence 
	set ville=ucase(ville);
--3)
update emprunt emp,client c 
set emp.montant = (emp.montant-(emp.montant*0.05)) 
where c.numClient=emp.numClient 
and c.ville='casablanca';
--4)
alter table compte 
ADD constraint ch_solde_comp check(solde>=0);
----------------------------------------------------------------------
--Section 3
--1)
select * 
from client 
where nom like 'B_A%';
--2)
select * 
from agence 
where numAgence 
in (select numAgence 
	from compte 
	where numClient 
	in(select numClient 
	   from client));
--3)
select * 
from client 
where numClient 
in (select numClient 
	from compte comp 
	where comp.numAgence 
	in(select numAgence 
		from agence ag 
		where ag.ville='casablanca'));
--4)
select * 
from client 
where numClient 
in (select numClient 
	from compte 
	where numAgence 
	in (select numAgence 
		from agence 
		where ville='casablanca'))
	or (select numClient 
		from compte 
		where numAgence 
		in(select numAgence 
			from emprunt 
			where numAgence 
			in(select numAgence 
				from agence 
				where ville='rabat')));
--5)
select nom 
from client  
where numClient 
in (select cm.numClient 
	from compte cm,client cl,agence ag 
	where cm.numClient=cl.numClient 
	and cm.numAgence=ag.numAgence 
	and ag.ville=cl.ville);
--6)
select distinct cl.numclient 
from compte com ,client cl,emprunt emp,agence ag 
where com.numClient=cl.numClient 
and com.numAgence=ag.numAgence 
and ag.numAgence=emp.numAgence;
--7)
select avg(comp.solde),ag.nom 
from compte comp,agence ag 
where comp.numAgence=ag.numAgence 
group by ag.nom;
--8)
select sum(comp.solde),ag.nom 
from compte comp,agence ag 
where comp.numAgence=ag.numAgence 
group by ag.nom;
--9)
select  max(emp.montant) as 'Emprunt Total' ,cl.numClient as 'Numero De Client'  
from client cl,emprunt emp 
where cl.numClient=emp.numclient 
group by cl.numClient 
order by max(emp.montant) desc 
limit 1; 
--10)
select numclient as 'Numero de client ' 
from client 
where numClient 
in(select numclient 
	               from emprunt 
	               where numAgence 
	               in(select numAgence 
	               					  from agence 
	               					  where ville='casablanca'));