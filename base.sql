
use nfl_teams;

--  DDL

-- drop existing tables

drop table IF EXISTS leagues;
drop table IF EXISTS divisions;
drop table IF EXISTS teams;
drop table IF EXISTS players;
drop table IF EXISTS divisions_teams;
drop table IF EXISTS games;
drop table IF EXISTS game_stats;

-- create tables

create table leagues (id integer, name varchar(80), email varchar(80), phone varchar(20) );

create table divisions (id integer, name varchar(80));

create table teams (id integer, name varchar(255), address varchar(255), city varchar(100), state varchar(50), zip varchar(15), league_id integer);

create table players (id integer, first_name varchar(50), last_name varchar(50), position varchar(20), team_id integer, created_at datetime, updated_at datetime);

create table divisions_teams (division_id integer, team_id integer);

create table games (id integer, home_team_id integer, away_team_id integer, time datetime);

create table game_stats (id integer, game_id integer, player_id integer, yards  integer, touchdown integer);




--   DML

-- leagues

INSERT INTO leagues VALUES (1, 'National Football League', 'nfl@gmail.com', '303-555-1212');
INSERT INTO leagues VALUES (2, 'Major League Baseball', 'mlb@gmail.com', '303-555-1212');
INSERT INTO leagues VALUES (3, 'National Basketball League', 'nba@gmail.com', '303-555-1212');

-- teams

INSERT INTO teams VALUES (1, 'Broncos', 'Dove Valley', 'Denver', 'CO', '80111', 1);
INSERT INTO teams VALUES (2, 'NY Giants', 'Meadowlands', 'East Rutherford', 'NJ', '07073', 1);
INSERT INTO teams VALUES (3, 'Cardinals', 'PO Box 888', 'Phoenix', 'AZ', '85001', null);
INSERT INTO teams VALUES (4, 'Raiders', 'Raiders Way', 'Oakland', 'CA', '96001', 1);

-- players

insert into players values (1, 'Peyton', 'Manning',  'QB', 1, now(), now());
insert into players values (2, 'Ronnie' ,'Hillman',  'RB', 1, now(), now());
insert into players values (3, 'Demariyus', 'Thomas',  'WR', 1, now(), now());

insert into players values (4, 'Eli', 'Manning',  'QB', 2, now(), now());
insert into players values (5, 'Victor', 'Cruz',  'WR', 2, now(), now());
insert into players values (6, 'Justin', 'Pugh',  'WR', 2, now(), now());

insert into players values (7, 'Carson', 'Palmer',  'QB', 3, now(), now());
insert into players values (8, 'John', 'Abraham',  'S', 3, now(), now());
insert into players values (9, 'Jay', 'Feely',  'K', 3, now(), now());

-- division

insert into divisions values (1, 'AFC West');
insert into divisions values (2, 'NFC East');

--  Division and teams

insert into divisions_teams values (1,1);
insert into divisions_teams values (1,4);

insert into divisions_teams values (2, 2);
insert into divisions_teams values (2, 3);

-- games

insert into games values (1, 1, 2, '2013-09-15 19:00:00');
insert into games values (2, 1, 3, '2013-08-29 19:00:00');
insert into games values (3, 1, 4, '2013-12-29 14:05:00');

-- game stats

insert into game_stats values (1, 1, 1, 304, 2);
insert into game_stats values (1, 1, 2, 283, 1);
insert into game_stats values (1, 1, 3, 176, 1);

insert into game_stats values (1, 1, 4, 286, 1);
insert into game_stats values (1, 1, 5, 144, 0);
insert into game_stats values (1, 1, 6, 56, 0);

insert into game_stats values (1, 3, 1, 378, 3);
insert into game_stats values (1, 3, 2, 140, 1);
insert into game_stats values (1, 3, 3, 230, 2);




