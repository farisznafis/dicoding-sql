create table shinkasnsen_station (
  station_name varchar(255) not null auto_increment,
  shinkansen_line varchar(255) not null,
  year int not null,
  prefecture varchar(255) not null,
  distance numeric not null,
  company varchar(255) not null
);