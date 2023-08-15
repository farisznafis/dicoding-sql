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

-- insert column
insert into shinkansen_station ()
values
	('Toyohashi', 'Tokaido_Shinkansen', 1964, 'Aichi', 293.6, 'JR_Central'),
    ('Mikawa-Anjo', 'Tokaido_Shinkansen', 1988, 'Aichi', 336.3, 'JR_Central')
;

