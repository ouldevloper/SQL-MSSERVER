select typeposte from poste where nposte='p8';
select nomlog from logeciel where typelog='UNIX';
select nomposte,indip,nsalle from poste where typeposte in ('UNIX','PCWS');
select nomposte,indip,nsalle from poste where indip='130.120.80' order by nsalle desc;
select nblog from poste where nposte='p6';
select nposte from installer where nlog='log1';
select nomposte,concat(indip,'.',ad) from poste where typeposte='TX';
select nposte as 'nome du poste',count(nposte) as 'nember de logiciel installer' from installer group by nposte ;
select nsalle as nembersalle,count(nposte) as 'nember poste' from poste group by nsalle;
select distinct nlog,count(nposte) from installer group by nposte;
select avg(prix) from logiciel where typelog='UNIX';
select MAX(dateAch) from logiciel;
select nposte,count(nlog) from installer group by nposte having count(nlog)=2;
-- 14 not understood
select count(nposte),count(nlog) from installer;
-- 16 not understood too 
select p.typeposte from installer i,poste p ,logiciel l where i.nposte=p.nposte and i.nlog=l.nlog and l.typelog='';
select concat(p.indip,'.',p.ad) from poste p,installer i where p.nposte=i.nposte and i.nlog='log6';
select concat(p.indip,'.',p.ad) from poste p,installer i,logiciel l where p.nposte=i.nposte and i.nlog=l.nlog and l.nomlog='oracle 8';
select s.nomsegment from segment s,poste p where s.indip=p.indip and p.typeposte='TX';
select nomesalle from salle sa,poste p,logiciel l,installer i where sa.nSalle=p.nSalle and p.nposte=i.nposte and i.nlog=l.nlog and l.nomlog='oracle 8';
select max(dateach) from logiciel;
select s.nomsegment,sa.nomesalle,concat(p.indip,'.',p.ad),l.nomlog,i.dateins from segment s,salle sa,poste p,logiciel l,installer i where 
					s.indip=sa.indip and s.indip=p.indip and
					sa.nsalle=p.nSalle and
					p.nposte=i.nposte and 
					i.nlog=l.nlog
				order by s.nomsegment,sa.nomesalle,concat(p.indip,'.',ad);


select distinct nomposte from poste where nposte in (select nposte from installer where nlog in (select distinct nlog from installer where nposte='p6'));
select distinct nomposte from poste where nposte in (select nposte from installer i where nlog in (select nlog from installer ii where nposte ='p6' group by nposte having count(i.nlog)=count(ii.nlog)));