create database if not exists tp3;
use tp3;
create table employes(ne int primary key auto_increment,
					  nom varchar(10) not null,
					  job varchar(9) not null,
					  datemb date ,sal float(7,2),
					  comm float(7,2),
					  nd int not null,
					  nechef int);
create table departements(nd int primary key,nom varchar(20),ville varchar(10));
alter table employes add constraint fk_nd foreign key (nd) references departements (nd);
alter table employes add constraint fk_ne foreign key (nechef) references employes (ne);

INSERT INTO departements VALUES (10,'Informatique','tafraout'),(20,'SALES','rabat'),(30,'Management','Agadir');
INSERT INTO employes VALUES (7839,'KING','PRESIDENT','1981-11-17',5000,NULL,10,NULL);
INSERT INTO employes VALUES (7698,'BLAKE','MANAGER','1981-05-1',2850,NULL,30,7839);
INSERT INTO employes VALUES (7782,'CLARK','MANAGER','1981-06-9',2450,NULL,10,7839);
INSERT INTO employes VALUES (7566,'JONES','MANAGER','1981-04-2',2975,NULL,20,7839);
INSERT INTO employes VALUES (7654,'MARTIN','SALESMAN','1981-09-28',1250,1400,30,7698);
INSERT INTO employes VALUES (7499,'ALLEN','SALESMAN','1981-02-20',1600,300,30,7698);
INSERT INTO employes VALUES (7844,'TURNER','SALESMAN','1981-09-8',1500,0,30,7698);
INSERT INTO employes VALUES (7900,'JAMES','CLERK','1981-12-3',950,NULL,30,7698);
INSERT INTO employes VALUES (7521,'WARD','SALESMAN','1981-02-22',1250,500,30,7698);
INSERT INTO employes VALUES (7902,'FORD','ANALYST','1981-12-3',3000,NULL,20,7566);
INSERT INTO employes VALUES (7369,'SMITH','CLERK','1980-12-17',800,NULL,20,7902);
INSERT INTO employes VALUES (7788,'SCOTT','ANALYST','1982-12-09',3000,NULL,20,7566);
INSERT INTO employes VALUES (NULL,'ADAMS','CLERK','1983-01-12',1100,NULL,20,7788);
INSERT INTO employes VALUES (NULL,'MILLER','CLERK','1982-01-23',1300,NULL,10,7782);
