create database tpasp1;
use tpasp1;


create table theme(codetheme int primary key ,nomtheme varchar(55),description varchar(255));
create table recette(numrec int primary key identity ,nomrec varchar(55),datecreationrecete varchar(55),difficulte varchar(55),temppreparation varchar(55),methodpreparation varchar(55),photo varchar(55),codetheme int foreign key references theme);
create table ingredient(numing int primary key,noming varchar(55),puing varchar(55),unitemesureing varchar(55) );
create table ingredients_recette(numrec int foreign key references recette,numing int foreign key references ingredient , qteUtilisee float);
