--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T3-cr-dml.sql

-- ITO Assignment 2 Task 3

--Student ID:27565521
--Student Name:Aleksandar Mitreski

/* Comments for your marker:




*/

-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.

/*
(a)
*/

CREATE SEQUENCE competitor_seq START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE entry_seq START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;


/*
(b) 
*/

INSERT INTO entry (entry_id, comp_no, carn_date, eventtype_code, char_name) 
VALUES (
    entry_seq.NEXTVAL, 
    (SELECT comp_no FROM competitor WHERE comp_phone = '1234567890'),
    TO_DATE('20/FEB/2024', 'DD/MON/YYYY'),
    '21K',
    'Amnesty International'
);
COMMIT;
 


/*
(c)
*/

UPDATE entry 
SET eventtype_code = '10K' 
WHERE comp_no = (SELECT comp_no FROM competitor WHERE comp_phone = '1234567890') 
AND carn_date = TO_DATE('20/FEB/2024', 'DD/MON/YYYY');

INSERT INTO team (team_id, team_name, carn_date, team_no_members, char_name, entry_id) 
VALUES (
    team_seq.NEXTVAL, 
    'Kenya Speedstars', 
    TO_DATE('20/FEB/2024', 'DD/MON/YYYY'),
    3,
    'Beyond Blue', 
    (SELECT entry_id FROM entry WHERE comp_no = (SELECT comp_no FROM competitor WHERE comp_phone = '1234567890') AND carn_date = TO_DATE('20/FEB/2024', 'DD/MON/YYYY'))
);
COMMIT;

/*
(d) 
*/

DELETE FROM team 
WHERE team_name = 'Kenya Speedstars' 
AND carn_date = TO_DATE('20/FEB/2024', 'DD/MON/YYYY');

-- Delete Brigid Radcliffe's entry for the carnival on 20 February 2024
DELETE FROM entry 
WHERE comp_no = (SELECT comp_no FROM competitor WHERE comp_phone = '1234567890') 
AND carn_date = TO_DATE('20/FEB/2024', 'DD/MON/YYYY');

COMMIT;