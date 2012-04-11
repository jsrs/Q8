-- createTables.sql
drop sequence if exists users_id_seq cascade;
create sequence users_id_seq;
drop table if exists users cascade;
create table users(
  id integer not null default nextval('users_id_seq'),
  first_name varchar(40),
  last_name varchar(50),
  username text unique,
  password text,
  department varchar(30),
  division varchar(30),
  primary key (id)
);

insert into users(first_name, last_name, username, password,  division, department) 
  values ('Jane','Doe','janedoe',md5('janedoe'),'div1','div1');
insert into users(first_name, last_name, username, password, division, department) 
  values ('John','Doe','johndoe',md5('johndoe'),'div1','dep1');
insert into users(first_name, last_name, username, password, division, department)  
  values ('Bill','Gates','johndoe',md5('johndoe'),'div1','dep2');
insert into users(first_name, last_name, username, password, division, department)  
  values ('admin','admin','admin',md5('admin'),'admin','admin');


