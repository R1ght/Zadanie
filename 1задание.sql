/* С 1 заданием проблем не возникло:*/

CREATE TABLE Users (
	id_Users int NOT NULL PRIMARY KEY,
	FIO varchar(150)
)

CREATE TABLE Roles (
	id_Roles int NOT NULL PRIMARY KEY,
	Name varchar(45)
)


CREATE TABLE Users_roles
(
    Users_id_Users INT NOT NULL FOREIGN KEY REFERENCES Users(id_Users),
    Roles_id_Roles INT NOT NULL FOREIGN KEY REFERENCES Roles(id_Roles)
)

insert into Users values (1,'Gorelikov')
insert into Users values (2,'Kosachev')
insert into Users values (3,'Kirzhaev')
insert into Users values (4,'Sorokin')

insert into Roles values (1,'Admin')
insert into Roles values (2,'User')
insert into Roles values (3,'Sys admin')
insert into Roles values (4,'Manager')
insert into Roles values (5,'Lead')

insert into Users_roles values (1,1)
insert into Users_roles values (1,2)
insert into Users_roles values (1,3)
insert into Users_roles values (2,2)
insert into Users_roles values (2,3)
insert into Users_roles values (2,4)
insert into Users_roles values (3,2)
insert into Users_roles values (3,3)
insert into Users_roles values (3,4)
insert into Users_roles values (1,2)
insert into Users_roles values (1,3)

/* Ðàáî÷èé çàïðîñ: */

SELECT Users.FIO, COUNT(Users.FIO) AS 'Counts roles' FROM Users inner join Users_roles ON Users.id_Users = Users_roles.Users_id_Users inner join Roles on Users_roles.Roles_id_Roles = Roles.id_Roles
WHERE Roles.Name <> 'Admin'
GROUP BY Users.FIO
HAVING COUNT(Users.FIO) = 3
