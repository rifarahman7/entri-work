CREATE DATABASE JOINS;
USE JOINS;
CREATE table Country (Id int primary key, Country_name VARCHAR(20), Population INT not null , area varchar(30));
desc Country;
insert into Country values (1, 'India','1000000','Kerala');
insert into Country values (2, 'India','100000','goa');
insert into Country values (3, 'India','40000','tamilnadu');
insert into Country values (4, 'India','35800','Karnataka');
insert into Country values (5, 'India','80000','delhi');
select * from Country;

CREATE table Persons (Id int primary key, Fname VARCHAR(20), Lname VARCHAR(20) ,Population int not null, Rating int , Counrty_id int ,country_name varchar(30));
desc Persons;
insert into Persons values (1,'rifa','rahman','10000',4,1,'india');
insert into Persons values (2, 'anil','ambani','100400','5','2','us');
insert into Persons  values (3, 'aswin','sankn','470000','3','3','uk');
insert into Persons  values (4, 'rafi','rahman','47000','4','4','germany');
insert into Persons  values (5, 'lijo','jose','47800','3','5','italy');
select * from Persons ;

SELECT Country.Country_name, Persons.Country_name FROM Country
LEFT JOIN Persons ON Country.Country_name = Persons.country_name;


SELECT Country.Id, Persons.Id FROM Country
RIGHT JOIN Persons ON Country.Id = Persons.Id;



