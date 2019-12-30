/*  CREATION OF DATABASE*/
DROP DATABASE IF EXISTS BugMeTracker;
CREATE DATABASE BugMeTracker;
USE BugMeTracker;

GRANT ALL PRIVILEGES ON BugMeTracker.* TO 'admin'@'localhost' IDENTIFIED BY 'password123';

/*  CREATION OF Users Table*/
DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    id INT AUTO_INCREMENT,
    firstname char(40) NOT NULL ,
    lastname char(40) NOT NULL,
    password char(40) NOT NULL,
    email char(40) NOT NULL,
    date_joined DATETIME NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO Users (firstname, lastname, password, email, date_joined) VALUES ('BugMe', 'Admin', MD5('password123'), 'admin@bugme.com', '2012-01-01 00:00:00');
INSERT INTO Users (firstname, lastname, password, email, date_joined) VALUES ('LeBron', 'James', MD5('12345'), 'lbjames@bugme.com', '2019-09-12 13:23:42');
INSERT INTO Users (firstname, lastname, password, email, date_joined) VALUES ('James', 'Jones', MD5('12345'), 'jamesjones@bugme.com', '2019-11-21 19:44:02');
INSERT INTO Users (firstname, lastname, password, email, date_joined) VALUES ('Jackie', 'Sharp', MD5('12345'), 'jackiesharp@bugme.com', '2012-01-01 00:00:00');

/*  CREATION OF Issues Table*/
DROP TABLE IF EXISTS Issues;
CREATE TABLE Issues(
id INT AUTO_INCREMENT,
title char(40) DEFAULT NULL,
description char(255) DEFAULT NULL,
type char(40) DEFAULT NULL,
priority char(40) DEFAULT NULL,
status char(40) DEFAULT NULL,
assigned_to char(20) DEFAULT NULL,
created_by char(20) DEFAULT NULL,
created DATETIME DEFAULT NULL,
updated DATETIME DEFAULT NULL,
PRIMARY KEY(id)
);

INSERT INTO Issues (title, description, type, priority, status, assigned_to, created_by, created, updated) VALUES ('XSS Vulnerability in Add User Form', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Proposal', 'Major', 'OPEN', 'Tom Brady', 'Marsha Brady', '2019-11-01 16:30:12', '2019-11-08 10:00:00');
INSERT INTO Issues (title, description, type, priority, status, assigned_to, created_by, created, updated) VALUES ('Location Service isnt working', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Bug', 'Major', 'OPEN', 'Jan Brady', 'Marsha Brady', '2019-10-15 16:30:12', '2019-12-08 10:00:00');
INSERT INTO Issues (title, description, type, priority, status, assigned_to, created_by, created, updated) VALUES ('Setup Logger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Proposal', 'Major', 'CLOSED', 'Marsha Brady', 'Marsha Brady', '2019-08-10 18:32:12', '2019-10-18 01:00:00');
INSERT INTO Issues (title, description, type, priority, status, assigned_to, created_by, created, updated) VALUES ('Create API Documentation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Proposal', 'Minor', 'IN PROGRESS', 'Mike Brady', 'Tom Brady', '2019-10-29 17:33:12', '2019-11-29 12:34:18');





