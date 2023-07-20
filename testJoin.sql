create database testeInterviu;
create table marca(
id int primary key auto_increment,
name varchar(50));
insert into marca values(null, 'Franta');
insert into marca values(null, 'Spania');
select*from marca;
create table produse_alimentare(
id int primary key auto_increment,
nume_product varchar(50),
id_marca int,
foreign key(id_marca) references marca(id));

insert into produse_alimentare values(null, 'Castraveti', 1);
insert into produse_alimentare values(null, 'Rosii', 2);
insert into produse_alimentare values(null, 'Banane', 2);
insert into produse_alimentare values(null, 'Paine', 1);
insert into produse_alimentare values(null, 'Fructe de mare', 2);

select*from produse_alimentare;

#//pentru Joinuri se foloseste acest model de lucru, atenti atunci cand specificam campurile de asociere, trebuie indicat tabelul.coloana
# iar pentru a redenumi coloana noua obtinuta folosim cuvantul "as"
select nume_product as Nume, name as Tara from produse_alimentare join marca on produse_alimentare.id_marca=marca.id;


create table Cats(
id int primary key auto_increment,
name varchar(50),
shop_id int,
foreign key(shop_id) references Shops(id));
drop table Cats;
create table Shops(
id int primary key auto_increment,
shopname varchar(50));

insert into Shops values(null, 'Four Paws');
insert into Shops values(null, 'New Market');

insert into Cats values(null, 'Nika', 1);
insert into Cats values(null, 'Nemo', 1);
insert into Cats values(null, 'Puk', 2);

select Cats.name, Shops.shopname from Cats join Shops on Cats.shop_id=Shops.id;

