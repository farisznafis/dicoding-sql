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

select station_name
from shinkansen_station;

-- numeric
select *
from shinkansen_station
where distance_from_tokyo = 293.6;

-- non-numeric
select *
from shinkansen_station
where prefecture = 'Shizuoka';

-- where-and
select *
from shinkansen_station
where year = 1964
and prefecture = 'Shizuoka';

-- where-or
select *
from shinkansen_station
where prefecture = 'Tokyo'
or prefecture = 'Aichi';

-- where-or
select *
from shinkansen_station
where not year = 1964;

-- tantangan where
select *
from shinkansen_station
where shinkansen_line = 'Tokaido_Shinkansen'
and year = 1988
and prefecture = 'Shizuoka';

select *
from shinkansen_station
where prefecture = 'Kanagawa'
or prefecture = 'Shizuoka';

select *
from shinkansen_station
where not year = 1988;

-- LIKE
select *
from shinkansen_station
where prefecture like 's%';

-- ALIAS
select station_name as nama_stasiun,
	   year as tahun,
	   distance_from_tokyo as jarak_dari_tokyo
from shinkansen_station;

-- UPDATE
update shinkansen_station
set station_name = 'Bandung'
where station_name = 'Atami';

select *
from shinkansen_station
where station_name = 'Bandung';

update shinkansen_station
set station_name = 'Atami'
where station_name = 'Bandung';
-- ORDER BY
select *
from shinkansen_station
order by station_name desc;

-- LIMIT
select *
from shinkansen_station
limit 7;

-- OFFSET
select *
from shinkansen_station
limit 7
offset 3;