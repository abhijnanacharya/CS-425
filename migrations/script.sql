-- Create the initial table structure<boats>
CREATE TABLE boats (
    bid serial PRIMARY KEY,
    bname character varying(20),
    fee integer,
    location character varying
);

-- Create the initial table structure<sailors>
CREATE TABLE sailors (
    sid serial,
    sname character varying(20),
    rating integer,
    age integer,
    PRIMARY KEY (sid)
);
-- Create the initial table structure<captain>
CREATE TABLE captain (
    sid serial,
    sname character varying,
    rating integer,
    age integer,
    PRIMARY KEY (sid, sname)
);

-- Create the initial table structure<reserves>
CREATE TABLE reserves (
    sid serial ,
    bid serial ,
    day date,
    deposit integer,
    PRIMARY KEY (sid, bid)
);

-- Adding foreign key constraints
ALTER TABLE reserves
    ADD CONSTRAINT fk_sid FOREIGN KEY (sid) REFERENCES sailors(sid)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE reserves
    ADD CONSTRAINT fk_bid FOREIGN KEY (bid) REFERENCES boats(bid)
    ON DELETE CASCADE ON UPDATE CASCADE;
