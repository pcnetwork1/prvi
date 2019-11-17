drop database if exists taksi;
create database taksi;
  use taksi;

  create table Vozac(
    ID int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    BrojMobitela char(10) not null
  );

create table Voznja(
  ID int not null primary key auto_increment,
  Naziv varchar(50),
  Lokacija varchar(50) not null,
  Vozac int not null,
  putnik int not null
);

  create table putnik(
    ID int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    BrojMobitela char(20) not null,
    Vozac int not null 
  );

alter table putnik add foreign key (Vozac) references Vozac(ID);
alter table Voznja add foreign key (putnik) references putnik(ID);
alter table Voznja add foreign key (Vozac) references Vozac(ID);


insert into vozac (ID,`Ime`,`Prezime`,`BrojMobitela`) values
(null,'Ivan','Jozing',0955087059),
(null, 'Pero','Peric',395955078),
(null,'test','test',02332323);

#select * from vozac;

insert into putnik (ID,`Ime`,`Prezime`,`BrojMobitela`,`Vozac`) values
(null,'test1','test12',0546566563,1),
(null,'test1','test21',0546566563,3),
(null,'test1','test65',0546566563,4);

#select * from putnik;

insert into voznja (ID,`Naziv`,`Lokacija`,`Vozac`,putnik) values
(null,null,'Osijek',1,1),
(null,null,'Tenja',3,2),
(null,null,'Đakovo',4,3);

#select * from voznja;