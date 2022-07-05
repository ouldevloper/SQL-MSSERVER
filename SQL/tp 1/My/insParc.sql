use informatique;
--insert into segement
delete from segment;
insert into segment values('130.120.80','brin RDC' ,null);
insert into segment values('130.120.81','brin 1ere etage' ,null); 
insert into segment values('130.120.82','brin 2eme etage',null) ;

--insert into salle
delete from salle;
insert into salle values('s01','salle1',3,'130.120.80' );
insert into salle values('s02','salle2',2,'130.120.80' );
insert into salle values('s03','salle3',2,'130.120.80' );
insert into salle values('s04','salle11',2,'130.120.81');
insert into salle values('s05','salle12',1,'130.120.81');
insert into salle values('s06','salle21',2,'130.120.82');
insert into salle values('s07','salle22',0,'130.120.83');
insert into salle values('s08','salle23',0,'130.120.83');

--insert into post
delete from post;
insert into post values('p1','Post 1','130.120.80','01','TX','s01'  );
insert into post values('p2','Post 2','130.120.80','02','UNIX','s01'  );
insert into post values('p3','Post 3','130.120.80','03','TX','s01'  );
insert into post values('p4','Post 4','130.120.80','04','PCWS','s02'  );
insert into post values('p5','Post 5','130.120.80','05','PCWS','s02'  );
insert into post values('p6','Post 6','130.120.80','06','UNIX','s03'  );
insert into post values('p7','Post 7','130.120.80','07','TX','s03'  );
insert into post values('p8','Post 8','130.120.81','01','UNIX','s11'  );
insert into post values('p9','Post 9','130.120.81','02','TX','s11'  );
insert into post values('p10','Post 10','130.120.81','03','UNIX','s12'  );
insert into post values('p11','Post 11','130.120.82','01','PCNT','s21'  );
insert into post values('p12','Post 12','130.120.82','02','PCWS','s21' );

--insert into logeciel
delete from logeciel;
insert into logeciel values('log1','oracle 6','1995-05-13','6.2','UNIX', 3000  );
insert into logeciel values('log2','oracle 8','1999-09-15','8i', 'UNIX', 5600  );
insert into logeciel values('log3','SQL Server','1998-04-12','7','PCNT', 2700  );
insert into logeciel values('log4','Font Page','1997-06-03','5','PCWS', 500  );
insert into logeciel values('log5','WinDev','1997-05-12','5','PCWS', 750  );
insert into logeciel values('log6','SQL * Net',NULL,'2.0','UNIX',500  );
insert into logeciel values('log7','I.I.S','2002-04-12','2','PCNT', 810  );
insert into logeciel values('log8','DreamWeaver','2003-09-21','2.0','PCWS', 1400  );


--insert into TYPES
delete from types;
insert into types values('TX','Terminal X-Windows');
insert into types values('UNIX','System UNIX');
insert into types values('PCNT','PC Windows NT');
insert into types values('PCWS','PC Windows');
insert into types values('NC','Network Computer');

--alter table installer numins modify numins int  AUTO_INCREMENT; 

--insert into insttaler table
delete from installer;
insert into installer(npost,nlog,delai) values('p2','log1',null );
insert into installer(npost,nlog,delai) values('p2','log2',null );
insert into installer(npost,nlog,delai) values('p4','log5', null);
insert into installer(npost,nlog,delai) values('p6','log6',null );
insert into installer(npost,nlog,delai) values('p6','log1',null );
insert into installer(npost,nlog,delai) values('p8','log2',null );
insert into installer(npost,nlog,delai) values('p8','log6',null );
insert into installer(npost,nlog,delai) values('p11','log3',null );
insert into installer(npost,nlog,delai) values('p12','log4',null );
insert into installer(npost,nlog,delai) values('p11','log7',null );
insert into installer(npost,nlog,delai) values('p7','log7',null );
