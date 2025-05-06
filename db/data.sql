INSERT INTO position (position_id, position)
VALUES 
(1, 'pitcher'),
(2, 'catcher'),
(3, 'first base'),
(4, 'second base'),
(5, 'third base'),
(6, 'shortstop'),
(7, 'leftfielder'),
(8, 'centerfielder'),
(9, 'rightfielder'),
(10, 'designated hitter');

INSERT INTO team (
    team_name,
    team_location,
    team_city,
    team_state,
    year_established,
    pennants,
    world_series
)
VALUES (
    'diamondbacks',
    'arizona',
    'phoenix',
    'arizona',
    1998,
    2,
    1
);

INSERT INTO TEAM (
    team_name,
    team_location,
    team_city,
    team_state,
    year_established,
    pennants,
    world_series
)
VALUES 
('athletics', 'las vegas', 'las vegas', 'nevada', '1901', 15, 9),
('braves', 'atlanta', 'atlanta', 'georgia', '1876', 18, 4),
('orioles', 'baltimore', 'baltimore', 'maryland', '1901', 7, 3),
('red sox', 'boston', 'boston', 'massachusetts', '1901', 14, 9),
('cubs', 'chicago', 'chicago', 'illinois', '1876', 17, 3),
('white sox', 'chicago', 'chicago', 'illinois', '1901', 6, 3),
('reds', 'cincinatti', 'cincinatti', 'ohio', '1882', 10, 5),
('guardians', 'cleveland', 'cleveland', 'ohio', '1901', 6, 2),
('rockies', 'colorado', 'denver', 'colorado', '1993', 1, 0),
('tigers', 'detroit', 'detroit', 'michigan', '1901', 11, 4),
('astros', 'houston', 'houston', 'texas', '1962', 5, 2),
('royals', 'kansas city', 'kansas city', 'missouri', '1969', 4, 2),
('angels', 'los angeles', 'anaheim', 'california', '1961', 1, 1),
('dodgers', 'los angeles', 'los angeles', 'california', '1884', 26, 8),
('marlins', 'miami', 'miami', 'florida', '1993', 2, 2),
('brewers', 'milwaukee', 'milwaukee', 'wisconsin', '1969', 1, 0),
('twins', 'minnesota', 'minneapolis', 'minnesota', '1901', 6, 3),
('mets', 'new york', 'queens', 'new york', '1962', 5, 2),
('yankees', 'new york', 'bronx', 'new york', '1903', 41, 27),
('phillies', 'philadelphia', 'philadelphia', 'pennsylvania', '1883', 8, 2),
('pirates', 'pittsburgh', 'pittsburgh', 'pennsylvania', '1882', 9, 5),
('padres', 'san diego', 'san diego', 'california', '1969', 2, 0),
('giants', 'san francisco', 'san francisco', 'california', '1883', 23, 8),
('mariners', 'seattle', 'seattle', 'washington', '1977', 0, 0),
('cardinals', 'st. louis', 'st. louis', 'missouri', '1882', 23, 11),
('rays', 'tampa bay', 'tampa', 'florida', '1998', 2, 0),
('rangers', 'texas', 'arlingon', 'texas', '1961', 3, 1),
('blue jays', 'toronto', 'toronto', 'ontario', '1977', 2, 2),
('nationals', 'washignton', 'washington', 'D.C.', '1969', 1, 1);

INSERT INTO player (
    fName,
    lName,
    nickName,
    fullName,
    bats,
    throws,
    date_of_birth,
    debut,
    ended
)
VALUES 
('barry', 'bonds', '', 'barry lamar bonds', 'L', 'L', '1964-07-24', '1986', '2007');

INSERT INTO player_to_pos (player_id, position_id)
VALUES
(1, 7), (1, 8), (1, 9), (1, 10);

INSERT INTO player_to_team (player_id, team_id)
VALUES 
(1, 22), (1, 24);


INSERT INTO player (
    fName,
    lName,
    nickName,
    fullName,
    bats,
    throws,
    date_of_birth,
    debut,
    ended
)
VALUES 
('rickey', 'henderson', 'man of steal', 'rickey nelson henley henderson', 'R', 'L', '1958-12-20', '1979', '2003'),
('mookie', 'betts', 'mookie batts', 'markus lynn betts', 'R', 'R', '1992-10-07', '2014', 'PRES'),
('shohei', 'ohtani', 'showtime', 'shohei ohtani', 'L', 'R', '1994-07-05', '2018', 'PRES'),
('clayton', 'kershaw', 'kershgawd', 'clayton edward kershaw', 'L', 'L', '1988-03-19', '2008', 'PRES'),
('satchel', 'paige', 'satchel', 'leroy robert paige', 'R', 'R', '1906-07-07', '1927', '1965'),
('jackie', 'robinson', '', 'jack roosevelt robinson', 'R', 'R', '1919-01-31', '1945', '1956'),
('enrique', 'hernández', 'kiké', 'enrique j. hernández', 'R', 'R', '1991-08-24', '2014', 'PRES' ),
('ken', 'griffey', 'junior', 'george kenneth griffey, jr', 'L', 'L', '1969-11-21', '1989', '2010'),
('kirby', 'puckett', 'puck', 'kirby puckett', 'R', 'R', '1960-03-14', '1984', '1995');

INSERT INTO player_to_team (player_id, team_id) 
VALUES 
(2, 2), (2, 20), (2, 23), (2, 19), (2, 25), (2, 5), (2, 29), (2, 14), (2, 15),
(3, 5), (3, 15),
(4, 14), (4, 15),
(5, 15),
(6, 4), (6, 9), (6, 2),
(7, 15),
(8, 15), (8, 5), (8, 12), (8, 16),
(9, 25), (9, 8), (9, 7),
(10, 18);

INSERT INTO player_to_pos (player_id, position_id) 
VALUES 
(2, 7), (2, 10), (2, 8), (2, 9),
(3, 9), (3, 4), (3, 8), (3, 10), (3, 6),
(4, 10), (4, 1), (4, 9), (4, 7),
(5, 1),
(6, 1), (6, 3), (6, 9), (6, 7),
(7, 4), (7, 3), (7, 5), (7, 7), (7, 6), (7, 9),
(8, 4), (8, 8), (8, 6), (8, 7), (8, 5), (8, 9), (8, 3), (8, 10), (8, 1),
(9, 8), (9, 10), (9, 7), (9, 9), (9, 3),
(10, 8), (10, 10), (10, 9), (10, 4), (10, 5), (10, 6), (10, 7);

-- updating team setting leaugue to 'NL'
UPDATE team SET league = 'NL' WHERE team_id = 1;

UPDATE team SET league = 'NL' WHERE team_id = 3;
UPDATE team SET league = 'NL' WHERE team_id = 6;
UPDATE team SET league = 'NL' WHERE team_id = 8;
UPDATE team SET league = 'NL' WHERE team_id = 10;
UPDATE team SET league = 'NL' WHERE team_id = 15;
UPDATE team SET league = 'NL' WHERE team_id = 16;
UPDATE team SET league = 'NL' WHERE team_id = 17;
UPDATE team SET league = 'NL' WHERE team_id = 19;
UPDATE team SET league = 'NL' WHERE team_id = 21;
UPDATE team SET league = 'NL' WHERE team_id = 22;
UPDATE team SET league = 'NL' WHERE team_id = 23;
UPDATE team SET league = 'NL' WHERE team_id = 24;
UPDATE team SET league = 'NL' WHERE team_id = 26;
UPDATE team SET league = 'NL' WHERE team_id = 30;

-- FINDING TEAM AND PLAYERS
SELECT p.player_id, concat(p.fName, ' ', p.lName) player, t.team_name 
FROM player p 
JOIN player_to_team pt ON p.player_id = pt.player_id
JOIN team t ON pt.team_id = t.team_id 
WHERE t.team_name = 'dodgers';