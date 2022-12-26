use TestDb;
create table if not exists Roles(
id_role int primary key auto_increment,
rolename text
);
create table if not exists Users(
id_user int primary key auto_increment,
username text,
usersurname text,
id_role int,
constraint fk_users_roles foreign key(id_role) references Roles(id_role)
);

insert into Roles(rolename) values ("Студент");
insert into Roles(rolename) values ("Преподаватель");
insert into Roles(rolename) values ("Директор");
insert into Users(username,usersurname,id_role) values ("Диана","Сакаева",1);
insert into Users(username,usersurname,id_role) values ("Кирилл","Быков",2);
insert into Users(username,usersurname,id_role) values ("Аделя","Исхакова",3);