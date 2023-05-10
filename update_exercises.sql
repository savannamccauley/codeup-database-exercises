USE codeup_test_db;
    select record_name as 'all record names'
    from album;

    update albums
    set sales = sales * 10
    where sales;

    select artist_name, record_name, sales from albums;

    select record_name as 'all albums before 1980'
    from albums
    where release_date<1980;

    update albums
    set release_date = 1800
    where release_date < 1980;

    select artist_name, record_name, release_date from albums;

    --MJ

    select record_name as 'All MJ albums'
    form albums
    where artist_name = 'MJ';

    update albums
    set artist_name = 'Peter Jackson'
    where artist_name = 'Michael Jackson';

    select artist_name, record_name
    from albums
    where artist_name = 'Peter Jackson'