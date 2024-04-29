
--T5-cr-mods.sql

-- Testing modifications to schema.


/*
(a) Alters table to include a unique constraint that combines comp_no and carn_date to ensure that competitors can only enter into one event on a specific carnival.
*/


ALTER TABLE entry
ADD CONSTRAINT unique_comp_carnival UNIQUE (comp_no, carn_date);

COMMIT;
   
/*
(b)Alters entry TABLE to include a new attribute that calculates the elapsed time between start and finish of runners in all events.
*/

ALTER TABLE entry
ADD elapsed_time NUMBER(5,2);


UPDATE entry
SET elapsed_time = ROUND((entry_finishtime - entry_starttime) * 24 * 60, 2)
WHERE entry_starttime IS NOT NULL AND entry_finishtime IS NOT NULL;

COMMIT;

/*
(c) Alters the competitor table to remove the ec_phone attribute and creating a new table that links competitor and emercontact that can store multiple emergency contacts.
*/

ALTER TABLE competitor
DROP COLUMN ec_phone;

CREATE TABLE competitor_emercontact (
    comp_no NUMBER(5) NOT NULL,
    ec_phone CHAR(10) NOT NULL,
    PRIMARY KEY (comp_no, ec_phone),
    FOREIGN KEY (comp_no) REFERENCES competitor(comp_no),
    FOREIGN KEY (ec_phone) REFERENCES emercontact(ec_phone)
);

COMMIT;



