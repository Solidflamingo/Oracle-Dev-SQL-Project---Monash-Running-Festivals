### SQL Oracle RDBMS University Project using mock data in relational database built from a logical model

## Overview

Implented a database in Oracle RDBMS via SQL from a logical model (another project I worked on, URL = ) followed by an insertion of data from Monash University City Run events into tables. 
Populated the database to be able to run trial DML commands and make changes to database structure via SQL
Utilised relational algebra, SQL and NoSQL to write queries to produce specific output.

# Brief data:

City Run (CR) is a running carnival which is held on separate dates at various capital cities in Australia during different seasons (Summer, Autumn, Winter and Spring) of the year. The carnival naming convention that City Run uses is CR <season name> Series <city name> <year>. So, for example, a carnival to be held during the Summer season in Melbourne in 2024 will be named as CR Summer Series Melbourne 2024.
Anyone can attend a CR Carnival, the carnivals are open to all members of the public. A carnival is run on a particular date, in a particular location and only lasts for one day. CR only runs one carnival on any particular date. During a carnival a range of events are offered from the following list (only some may be offered):

    Marathon 42.2 Km
    Half Marathon 21.1 Km
    10 Km Run
    5 Km Run
    3 Km Community Run/Walk

City Run expects to offer around 10 - 20 such events across all carnivals in a given year. When a competitor initially registers for City Run, they are assigned a unique competitor number. A competitor is required to provide details of an emergency contact at the time of registration. The relationship to the competitor can be Parent (P), Guardian (G), Partner (T) or Friend (F).
When a carnival is being offered, City Run contacts all registered competitors and provides details of the carnival date and what events are on offer. Competitors can enter for only one event within a carnival. Every entry is assigned a unique entry id (e.g. 3021). Using official timing devices at the carnival, City Run records the entrants starting and finishing times.

A major focus of the City Run Carnivals is to raise funds for various charities. When a competitor enters an event, they may nominate a charity for which they will raise funds (not all competitors will select a charity for each event they enter). Competitors who have entered the carnival can also form teams with other competitors, whom they know and who have entered the carnival, to support their training and run as a group. The first competitor to register a team for a given carnival is assigned as the Team Manager. Teams are identified by a unique team name which the team manager must select when they first create the team. This team manager can then add/invite other competitors from the carnival to join their team. Team names are unique only within a given carnival, A given team name may be reused by different competitors in a different carnival as teams are recreated for each carnival depending on which competitors have entered an event for the carnival. City Run wishes to record, as part of the stored data, how many members are on each team. Teams may also nominate a charity for which they will raise funds, although not all teams will do so. All charities for which funds can be raised must first be approved by City Run.
Note that an individual competitor may be supporting a charity as an individual and also the same or a different charity as a team member.

## Breakdown of files:

# cr-schema-insert.sql
Contains the schema for all City Run event details under a relational model.
**This file is property of Monash University, do not use for resale.**

# T1-cr-ra.pdf
Contains queries with relational algebra operations that manipulate the competitor and carnival data.

# T2-cr-insert.sql
SQL query to insert additional mock data into the schema.

# T3-cr-dml.sql 
SQL queries to manipulate the data generated from the T2-cr-insert.sql.

# T4-cr-queries.sql
Additional test SQL queries to generate reports from the data including:
- Registered runner details
- Register runners who support a charity as an INDIVIDUAL
- Number of events all runners have completed over two calendar years
- Total number of entries/participants in specific events
- All carnivals
- Team details for the team that ran the most events across all carnivals

# T5-cr-mods.sql
SQL queries that directly modify the relational database structure

# T6a-cr-JSON.sql
SQL queries that are used to generate JSON documents of specific data

# T6b-cr-mongo.mongodb.js
Send JSON data into mongodb with queries to manipulate the data within the JSON documents


