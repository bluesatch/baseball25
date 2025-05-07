-- DATABASE USED TO POST DATA SPECIFICALLY DATA FROM A CHECKBOX 
DROP DATABASE IF EXISTS baseballdb;
CREATE DATABASE baseballdb;
USE baseballdb;

-- POSITION
CREATE TABLE position (
    position_id TINYINT UNSIGNED NOT NULL,
    position VARCHAR(20) NOT NULL,
    CONSTRAINT pk_position PRIMARY KEY (position_id)
);

-- TEAM 
CREATE TABLE team (
    team_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    team_name VARCHAR(20) NOT NULL,
    team_location VARCHAR(40) NOT NULL,
    team_city VARCHAR(40) NOT NULL,
    team_state VARCHAR(40) NOT NULL,
    year_established YEAR,
    pennants TINYINT UNSIGNED NOT NULL DEFAULT 0,
    world_series TINYINT UNSIGNED NOT NULL DEFAULT 0,
    CONSTRAINT pk_team PRIMARY KEY (team_id)
);

-- ADD date_created and last_update for team
ALTER TABLE TEAM 
    ADD COLUMN date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ADD COLUMN last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- CHANGING year_established data type to CHAR(4)
ALTER TABLE TEAM 
    MODIFY year_established CHAR(4) NOT NULL;

-- ADD league ENUM ('AL', 'NL')
ALTER TABLE TEAM    
    ADD COLUMN league ENUM('AL', 'NL') DEFAULT 'AL';

CREATE TABLE player (
    player_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    fName VARCHAR(40) NOT NULL,
    lName VARCHAR(40) NOT NULL,
    nickName VARCHAR(40),
    fullName VARCHAR(80) NOT NULL,
    bats ENUM('R', 'L', 'S') DEFAULT 'R',
    throws ENUM('R', 'L') DEFAULT 'R',
    date_of_birth DATE DEFAULT '1877-01-01',
    debut YEAR NOT NULL DEFAULT 1901,
    ended YEAR,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_player PRIMARY KEY (player_id)
);

-- MODIFYING debut to CHAR(4)
ALTER TABLE player 
    MODIFY debut CHAR(4) NOT NULL DEFAULT '1901';

ALTER TABLE player 
    MODIFY ended CHAR(4) NOT NULL DEFAULT 'PRES';

-- Adding imgUrl to player
ALTER TABLE player
    ADD COLUMN imgUrl MEDIUMTEXT;
    
CREATE TABLE player_to_pos (
    player_id MEDIUMINT UNSIGNED NOT NULL,
    position_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT fk_playerpos FOREIGN KEY (player_id) REFERENCES player (player_id),
    CONSTRAINT fk_pos FOREIGN KEY (position_id) REFERENCES position (position_id)
);

CREATE TABLE player_to_team (
    player_id MEDIUMINT UNSIGNED NOT NULL,
    team_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT fk_playerteam FOREIGN KEY (player_id) REFERENCES player (player_id),
    CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES team (team_id)
);

CREATE TABLE user (
    user_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    fName VARCHAR(40) NOT NULL,
    lName VARCHAR(40) NOT NULL,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
    role ENUM('admin', 'user') DEFAULT 'user',
    CONSTRAINT pk_user PRIMARY KEY (user_id)
);


-- RESETTING AUTO_INCREMENT
set @num := 0;
UPDATE my_table SET id = @num:= (@num + 1);
ALTER TABLE my_table AUTO_INCREMENT = 1;