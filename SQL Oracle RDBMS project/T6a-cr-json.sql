
--T6a-cr-json.sql

-- Testing SQL statements to generate JSON documents

/*
(a) 
*/

SELECT JSON_OBJECT(
    '_id' VALUE TO_CHAR(event.carn_date, 'DDMMYYYY') || '_' || event.eventtype_code,
    'carnival_date' VALUE TO_CHAR(carnival.carn_date, 'DD-Mon-YYYY'),
    'carnival_location' VALUE carnival.carn_location,
    'event' VALUE JSON_OBJECT(
        'type' VALUE event.eventtype_code,
        'description' VALUE (SELECT eventtype_desc FROM eventtype WHERE eventtype_code = event.eventtype_code)
    ) FORMAT JSON,
    'no_competitors' VALUE COUNT(entry.comp_no),
    'competitors' VALUE JSON_ARRAYAGG(
        JSON_OBJECT(
            'comp_no' VALUE competitor.comp_no,
            'name' VALUE competitor.comp_fname || ' ' || competitor.comp_lname,
            'gender' VALUE CASE competitor.comp_gender WHEN 'F' THEN 'Female' WHEN 'M' THEN 'Male' ELSE 'Undisclosed' END,
            'phone' VALUE competitor.comp_phone
        ) FORMAT JSON
    ) FORMAT JSON
) AS json_output
FROM carnival
JOIN event ON carnival.carn_date = event.carn_date
LEFT JOIN entry ON event.carn_date = entry.carn_date AND event.eventtype_code = entry.eventtype_code
LEFT JOIN competitor ON entry.comp_no = competitor.comp_no
GROUP BY event.carn_date, event.eventtype_code, carnival.carn_date, carnival.carn_location
ORDER BY event.carn_date, event.eventtype_code;


