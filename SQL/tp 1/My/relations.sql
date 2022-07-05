alter table installer add constraint fk_npost1 foreign key(npost) references post(npost);
alter table installer add constraint fk_nlg foreign key(nlog) references logeciel(nlog);
alter table installer add constraint U_npost1_nlog1 unique(npost,nlog);

alter table post add constraint pk_post1 primary key(npost);
alter table post add constraint fk_post_indip1 foreign key(indip) references segment(indip),
alter table post add constraint fk_post_nsalle1 foreign key(nsalle) references salle(nsalle);

alter table types add constraint pk_typelp_types1 primary key(typelp);
alter table types add constraint fk_post_typepost_types1 foreign key(typelp) references post(typepost);

--EX 9
alter table salle add constraint fk_indip_salle1 foreign key(indip) references segment(indip);
alter table types add constraint fk_typelp_types1 foreign key(typelp) references logeciel(typelog);