insert into installer(nposte,nlog,dateins,delai) values('p2','log6',sysdate(),null),('p8','log1',sysdate(),null),('p10','log1',sysdate(),null);

update segment s set nbsalle =(select count(indip) from salle sa where sa.indip=s.indip);
update segment s set nbpost =(select count(indip) from poste p where p.indip=s.indip);
update logiciel l set nbinstalle=(select count(nlog) from installer i where i.nlog=l.nlog);
update poste p set nblog =(select count(nposte) from installer i,logiciel l where i.nlog=l.nlog and p.nposte=i.nposte);

select * from segment;
select * from logiciel;
select * from poste;

