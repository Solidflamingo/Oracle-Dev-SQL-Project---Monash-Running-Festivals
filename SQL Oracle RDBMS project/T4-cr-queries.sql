
--T4-cr-queries.sql

-- Testing queries on schema data


/*
(a) the first and last names of runners who have registered using a gmail account in carnivals organised by City Run.
*/

SELECT 
    TO_CHAR(carnival.carn_date, 'Dy DD Month YYYY') AS CARNIVAL_DATE, 
    carnival.carn_name AS CARNNAME, 
    eventtype.eventtype_desc AS EVENTTYPEDESC, 
    competitor.comp_fname || ' ' || competitor.comp_lname AS FULLNAME
FROM 
    carnival
INNER JOIN 
    event ON carnival.carn_date = event.carn_date
INNER JOIN 
    eventtype ON event.eventtype_code = eventtype.eventtype_code
INNER JOIN 
    entry ON carnival.carn_date = entry.carn_date AND event.eventtype_code = entry.eventtype_code
INNER JOIN 
    competitor ON entry.comp_no = competitor.comp_no
WHERE 
    LOWER(competitor.comp_email) LIKE '%@gmail.com'
ORDER BY 
    carnival.carn_date ASC, 
    FULLNAME ASC;


/*
(b)All registered runners who are supporting a charity as an individual for the 42.2 km marathon event. 
*/ 

SELECT
    carnival.carn_date AS carnival_date,
    competitor.comp_fname || ' ' || competitor.comp_lname AS runner,
    charity.char_name AS charity_name,
    charity.char_contact AS charity_contact,
    '42.2 Km Marathon' AS event_description
FROM
    entry
    INNER JOIN competitor ON entry.comp_no = competitor.comp_no
    INNER JOIN carnival ON entry.carn_date = carnival.carn_date
    INNER JOIN charity ON entry.char_name = charity.char_name
WHERE
    entry.eventtype_code = '42K'
    AND entry.team_id IS NULL
ORDER BY
    carnival.carn_date ASC,
    charity.char_name ASC,
    runner ASC;

/*
(c) Lists the number of events all registered competitors have completed over the previous two calendar years, sorted into three different columns.
*/

SELECT
    competitor.comp_no AS COMPNO,
    competitor.comp_fname AS COMPFNAME,
    competitor.comp_lname AS COMPLNAME,
    competitor.comp_gender AS COMPGENDER,
    SUM(CASE WHEN EXTRACT(YEAR FROM entry.carn_date) = EXTRACT(YEAR FROM SYSDATE) - 2 THEN 1 ELSE 0 END) AS TWOYRSBACK,
    SUM(CASE WHEN EXTRACT(YEAR FROM entry.carn_date) = EXTRACT(YEAR FROM SYSDATE) - 1 THEN 1 ELSE 0 END) AS LASTCALYEAR,
    CASE 
        WHEN SUM(CASE WHEN EXTRACT(YEAR FROM entry.carn_date) IN (EXTRACT(YEAR FROM SYSDATE) - 1, EXTRACT(YEAR FROM SYSDATE) - 2) THEN 1 ELSE 0 END) = 0 THEN 'Completed No Runs'
        ELSE TO_CHAR(SUM(CASE WHEN EXTRACT(YEAR FROM entry.carn_date) IN (EXTRACT(YEAR FROM SYSDATE) - 1, EXTRACT(YEAR FROM SYSDATE) - 2) THEN 1 ELSE 0 END))
    END AS LAST2CALENDARYEARS
FROM
    competitor
LEFT JOIN entry ON competitor.comp_no = entry.comp_no
GROUP BY
    competitor.comp_no,
    competitor.comp_fname,
    competitor.comp_lname,
    competitor.comp_gender
ORDER BY
    CASE WHEN SUM(CASE WHEN EXTRACT(YEAR FROM entry.carn_date) IN (EXTRACT(YEAR FROM SYSDATE) - 1, EXTRACT(YEAR FROM SYSDATE) - 2) THEN 1 ELSE 0 END) = 0 THEN 0 ELSE 1 END,
    COMPNO;

/*
(d) Lists the total number of entries/participants in the 5 KM Run for each carnival held in 2023. 
*/

SELECT
    carnival.carn_date AS CARNIVAL_DATE,
    carnival.carn_name AS CARNNAME,
    COUNT(entry.entry_id) AS TOTAL_ENTRIES5KM
FROM
    carnival
JOIN entry ON carnival.carn_date = entry.carn_date
JOIN event ON entry.eventtype_code = event.eventtype_code AND entry.carn_date = event.carn_date
WHERE
    event.eventtype_code = '5K'
    AND EXTRACT(YEAR FROM carnival.carn_date) = 2023
GROUP BY
    carnival.carn_date,
    carnival.carn_name
ORDER BY
    COUNT(entry.entry_id) DESC,
    carnival.carn_date ASC;

/* 
(e) Lists all events which have no entries in all carnivals that have been completed.
*/


SELECT
    carnival.carn_date AS CARNIVAL_DATE,
    carnival.carn_name AS CARNNAME,
    eventtype.eventtype_desc AS EVENTTYPEDESC
FROM
    carnival
JOIN event ON carnival.carn_date = event.carn_date
JOIN eventtype ON event.eventtype_code = eventtype.eventtype_code
LEFT JOIN entry ON event.carn_date = entry.carn_date AND event.eventtype_code = entry.eventtype_code
WHERE
    entry.entry_id IS NULL
    AND carnival.carn_date < SYSDATE
GROUP BY
    carnival.carn_date,
    carnival.carn_name,
    eventtype.eventtype_desc
ORDER BY
    carnival.carn_date,
    eventtype.eventtype_desc;

/*
(f)List team details for each carnival where the most popular team names have been used.
*/

WITH TeamPopularity AS (
    SELECT 
        team_name, 
        COUNT(*) AS usage_count
    FROM 
        team
    GROUP BY 
        team_name
),
MostPopularTeamName AS (
    SELECT 
        team_name
    FROM 
        TeamPopularity
    WHERE 
        usage_count = (SELECT MAX(usage_count) FROM TeamPopularity)
)
SELECT
    t.team_name AS TEAMNAME,
    TO_CHAR(c.carn_date, 'DD-Mon-YYYY') AS CARNIVALDATE,
    LPAD(comp.comp_no, 4, '0') || ' ' || comp.comp_fname || ' ' || comp.comp_lname AS TEAMLEADER,
    t.team_no_members AS TEAMNOMEMBERS
FROM
    team t
JOIN carnival c ON t.carn_date = c.carn_date
JOIN competitor comp ON t.entry_id = comp.comp_no
WHERE
    t.team_name IN (SELECT team_name FROM MostPopularTeamName)
ORDER BY
    t.team_name,
    c.carn_date;