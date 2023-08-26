-- Insert data into boats table
INSERT INTO boats (bname, bid, fee, location)
VALUES
    ('Wayfarer', 109, 120, 'Hout Bay'),
    ('SeaPride', 108, 500, 'Fish Hoek'),
    ('Yuppie', 101, 400, 'Hout Bay'),
    ('Joy', 104, 200, 'Hout Bay');

-- Insert data into sailors table
INSERT INTO sailors (sname, sid, rating, age)
VALUES
    ('Marx', 23, 8, 52),
    ('Martin', 25, 9, 51),
    ('Adams', 27, 8, 36),
    ('Carrey', 33, 10, 22);

-- Insert data into reserves table
INSERT INTO reserves (sid, bid, day, deposit)
VALUES
    (23, 109, '2014-08-01', 120),
    (23, 108, '2014-08-08', 120),
    (25, 101, '2014-08-08', 0),
    (27, 101, '2014-08-09', 100),
    (27, 109, '2014-08-15', 120),
    (33, 109, '2014-09-04', 0),
    (33, 104, '2014-09-11', 0);

-- Insert data into captain table
INSERT INTO captain (sname, sid, rating, age)
VALUES
    ('Martin', 25, 9, 51),
    ('Carrey', 33, 10, 22);