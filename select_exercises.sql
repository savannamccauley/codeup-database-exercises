use codeup_test_db;
select artist_name as 'info' from albums where artist_name = 'Pink Floyd';

select artist_name as 'Artist Name', record_name AS 'Album name', release_date as 'release date' from albums
where record_name = 'Sgt. Peppers''s Lonely Hearts Club Band';

select genre as 'Genre Born in the U.S.A.'
from albums
where record_name = 'Born in the U.S.A.';

select release_date as 'Albums released in the 1990s'
from albums
where release_date between 1990 and 1999;

select sales as 'Albums released in the 1990s'
from albums
where sales<20;

select record_name as 'Rock Genre'
from albums
where genre = 'Rock'

