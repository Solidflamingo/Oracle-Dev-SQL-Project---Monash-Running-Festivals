--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T2-cr-insert.sql

-- ITO Assignment 2 Task 2

--Student ID:27565521
--Student Name:Aleksandar Mitreski

/* Comments for your marker:

I have inserted 20 entry rows with null for team_id to avoid referential integrity issues.

I have inserted 10 team rows referencing 10 different entry_ids.

*/


-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.




-- Insert into ENTRY --



INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    1,
    TO_DATE('04/SEP/2022 08:30', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 10:45', 'DD/MON/YYYY HH24:MI'),
    'Amnesty International',
    16, 
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '10K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    2,
    TO_DATE('04/SEP/2022 07:50', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 09:20', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    17, 
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '10K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    3,
    TO_DATE('04/SEP/2022 09:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 11:00', 'DD/MON/YYYY HH24:MI'),
    'RSPCA',
    18, 
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    4,
    TO_DATE('04/SEP/2022 08:15', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 10:45', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    19,
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    5,
    TO_DATE('04/SEP/2022 08:30', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 11:00', 'DD/MON/YYYY HH24:MI'),
    'Amnesty International',
    20,
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    6,
    TO_DATE('01/FEB/2023 08:45', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('01/FEB/2023 10:00', 'DD/MON/YYYY HH24:MI'),
    NULL,
    1,
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    7,
    TO_DATE('01/FEB/2023 09:15', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('01/FEB/2023 11:15', 'DD/MON/YYYY HH24:MI'),
    'RSPCA',
    2,
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    '10K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    8,
    TO_DATE('01/FEB/2023 07:30', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('01/FEB/2023 09:45', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    3,
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    '21K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    9,
    TO_DATE('01/FEB/2023 07:45', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('01/FEB/2023 10:20', 'DD/MON/YYYY HH24:MI'),
    'RSPCA',
    4,
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    10,
    TO_DATE('01/FEB/2023 08:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('01/FEB/2023 09:30', 'DD/MON/YYYY HH24:MI'),
    NULL,
    5,
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    '21K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    11,
    TO_DATE('06/APR/2023 08:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('06/APR/2023 10:30', 'DD/MON/YYYY HH24:MI'),
    'Amnesty International',
    6, 
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    '10K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    12,
    TO_DATE('06/APR/2023 07:45', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('06/APR/2023 11:15', 'DD/MON/YYYY HH24:MI'),
    NULL,
    7, 
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    '3K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    13,
    TO_DATE('06/APR/2023 09:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('06/APR/2023 10:00', 'DD/MON/YYYY HH24:MI'),
    'Salvation Army',
    8,
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    14,
    TO_DATE('06/APR/2023 08:30', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('06/APR/2023 09:45', 'DD/MON/YYYY HH24:MI'),
    NULL,
    9,
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    '21K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    15,
    TO_DATE('06/APR/2023 09:15', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('06/APR/2023 11:00', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    10,
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    '3K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    16,
    TO_DATE('08/SEP/2023 08:15', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('08/SEP/2023 10:20', 'DD/MON/YYYY HH24:MI'),
    'RSPCA',
    11, 
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    '3K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    17,
    TO_DATE('08/SEP/2023 07:30', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('08/SEP/2023 09:00', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    12, 
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    18,
    TO_DATE('08/SEP/2023 09:45', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('08/SEP/2023 11:30', 'DD/MON/YYYY HH24:MI'),
    NULL,
    13, 
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    '42K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    19,
    TO_DATE('08/SEP/2023 08:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('08/SEP/2023 10:30', 'DD/MON/YYYY HH24:MI'),
    'Amnesty International',
    14,
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    '42K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    20,
    TO_DATE('08/SEP/2023 09:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('08/SEP/2023 10:45', 'DD/MON/YYYY HH24:MI'),
    'Salvation Army',
    15, 
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    '3K',
    NULL
);


-- enriching entry data --

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    21,
    TO_DATE('19/SEP/2021 07:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('19/SEP/2021 08:30', 'DD/MON/YYYY HH24:MI'),
    'RSPCA',
    19, 
    TO_DATE('19/SEP/2021', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    22,
    TO_DATE('19/SEP/2021 08:15', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('19/SEP/2021 10:15', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    20,
    TO_DATE('19/SEP/2021', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    23,
    TO_DATE('06/APR/2023 09:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('06/APR/2023 11:30', 'DD/MON/YYYY HH24:MI'),
    'Salvation Army',
    1, 
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    '10K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    24,
    TO_DATE('19/SEP/2021 07:30', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('19/SEP/2021 09:00', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    3,
    TO_DATE('19/SEP/2021', 'DD/MON/YYYY'),
    '10K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    25,
    TO_DATE('19/SEP/2021 08:00', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('19/SEP/2021 10:30', 'DD/MON/YYYY HH24:MI'),
    'RSPCA',
    4,
    TO_DATE('19/SEP/2021', 'DD/MON/YYYY'),
    '10K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    26,
    TO_DATE('04/SEP/2022 09:15', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 11:45', 'DD/MON/YYYY HH24:MI'),
    'Amnesty International',
    5,
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    27,
    TO_DATE('04/SEP/2022 07:45', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 09:30', 'DD/MON/YYYY HH24:MI'),
    'Beyond Blue',
    6,
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '5K',
    NULL
);

INSERT INTO entry (
    entry_id,
    entry_starttime,
    entry_finishtime,
    char_name,
    comp_no,
    carn_date,
    eventtype_code,
    team_id
) VALUES (
    28,
    TO_DATE('04/SEP/2022 08:30', 'DD/MON/YYYY HH24:MI'),
    TO_DATE('04/SEP/2022 10:00', 'DD/MON/YYYY HH24:MI'),
    'RSPCA',
    7,
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    '5K',
    NULL
);




-- Insert into TEAM --

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    11,
    'Hunter X Hunter Squad',
    TO_DATE('19/SEP/2021', 'DD/MON/YYYY'),
    5,
    'RSPCA',
    1
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    21,
    'Hunter X Hunter Squad',
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    6,
    'Beyond Blue',
    11
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    27,  
    'Hunter X Hunter Squad',
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),  
    4,  
    'Amnesty International',  
    17  
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    12,
    'The Constanza Constables',
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    4,
    'Beyond Blue',
    2
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    13,
    'Its always sunny in Melbourne',
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    6,
    'Amnesty International',
    3
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    26,
    'Its always sunny in Melbourne',
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    6,
    'Beyond Blue',
    16
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    14,
    'Iron 1 Squad',
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    3,
    NULL,
    4
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    23,
    'Iron 1 Squad',
    TO_DATE('19/SEP/2021', 'DD/MON/YYYY'),
    7,
    'Salvation Army',
    13
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    15,
    'Dwayne the Rock',
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    7,
    'Salvation Army',
    5
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    16,
    'The Turtles',
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    8,
    NULL,
    6
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    17,
    'Seven Deadly Sins',
    TO_DATE('01/FEB/2023', 'DD/MON/YYYY'),
    5,
    'RSPCA',
    7
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    18,
    'We should not be here',
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),
    4,
    'Beyond Blue',
    8
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    25,
    'We should not be here',
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    8,
    NULL,
    15
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    19,
    'The Fast and Furious Nine',
    TO_DATE('08/SEP/2023', 'DD/MON/YYYY'),
    6,
    NULL,
    9
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    22,
    'The Fast and Furious Nine',
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    4,
    'RSPCA',
    12
);

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    20,
    'H2O Drinkers',
    TO_DATE('19/SEP/2021', 'DD/MON/YYYY'),
    5,
    'Amnesty International',
    10
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    28,  
    'H2O Drinkers',
    TO_DATE('06/APR/2023', 'DD/MON/YYYY'),  
    6, 
    'Beyond Blue',  
    18  
);

INSERT INTO TEAM (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    char_name,
    entry_id
) VALUES (
    24,
    'H2O Drinkers',
    TO_DATE('04/SEP/2022', 'DD/MON/YYYY'),
    5,
    'Amnesty International',
    14
);

COMMIT








