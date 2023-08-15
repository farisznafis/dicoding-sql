create table shinkasnsen_station (
  station_name varchar(255) not null auto_increment,
  shinkansen_line varchar(255) not null,
  year int not null,
  prefecture varchar(255) not null,
  distance numeric not null,
  company varchar(255) not null
);
drop table shinkasnsen_station;

-- import csv file
LOAD DATA LOCAL INFILE 'C:\Users\faris\OneDrive - UGM 365\Documents\GitHub\dicoding-sql\shinkansen.csv'
INTO TABLE shinkasnsen_station
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(station_name, shinkansen_line, year, prefecture, distance, company);

SHOW VARIABLES LIKE "secure_file_priv";
SELECT @@global.secure_file_priv;

select *
from shinkansen_station;

-- rename column
ALTER TABLE shinkansen_station
RENAME COLUMN Station_Name to station_name,
RENAME COLUMN Shinkansen_Line to shinkansen_line,
RENAME COLUMN Year to year,
RENAME COLUMN Prefecture to prefecture,
RENAME COLUMN `Distance from Tokyo st` TO distance_from_tokyo,
RENAME COLUMN Company to company
;

-- add values
INSERT INTO shinkansen_station (station_name, shinkansen_line, year, prefecture, distance_from_tokyo, company)
va