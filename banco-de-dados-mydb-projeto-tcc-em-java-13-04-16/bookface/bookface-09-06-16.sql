-- BookFace

create database bookface;

use bookface;

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS ads;
CREATE TABLE ads (
  ads_id int(11) NOT NULL AUTO_INCREMENT,
  ads_title varchar(25) NOT NULL,
  ads_content varchar(135) NOT NULL,
  ads_pic varchar(90) NOT NULL,
  PRIMARY KEY (ads_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS bleh;
CREATE TABLE bleh (
  bleh_id int(11) NOT NULL AUTO_INCREMENT,
  remarks text NOT NULL,
  remarksby varchar(30) NOT NULL,
  PRIMARY KEY (bleh_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS day;
CREATE TABLE day (
  day_id int(11) NOT NULL AUTO_INCREMENT,
  day int(2) NOT NULL,
  PRIMARY KEY (day_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO day (day_id, day) VALUES
(1,	1),
(2,	2),
(3,	3),
(4,	4),
(5,	5),
(6,	6),
(7,	7),
(8,	8),
(9,	9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30),
(31,31);

DROP TABLE IF EXISTS event;
CREATE TABLE event (
  id int(11) NOT NULL AUTO_INCREMENT,
  EventInput varchar(255) NOT NULL,
  datepicker varchar(255) NOT NULL,
  where_text varchar(255) NOT NULL,
  WhoInvited varchar(255) NOT NULL,
  users_ip varchar(200) NOT NULL,
  date_created int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS friendlist;
CREATE TABLE friendlist (
  friends_id int(11) NOT NULL AUTO_INCREMENT,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  address varchar(80) NOT NULL,
  contact_no int(14) NOT NULL,
  website text NOT NULL,
  gender varchar(6) NOT NULL,
  addby text NOT NULL,
  status varchar(30) NOT NULL,
  location varchar(100) NOT NULL,
  PRIMARY KEY (friends_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS friends;
CREATE TABLE friends (
  friend_id int(11) NOT NULL AUTO_INCREMENT,
  member_id int(11) NOT NULL,
  datetime datetime NOT NULL,
  group_id int(11) NOT NULL,
  status int(11) NOT NULL,
  PRIMARY KEY (friend_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
  group_id int(11) NOT NULL AUTO_INCREMENT,
  grupo varchar(50) NOT NULL,
  PRIMARY KEY (group_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS invite_status;
CREATE TABLE invite_status (
  status_id int(11) NOT NULL AUTO_INCREMENT,
  status int(10) NOT NULL,
  PRIMARY KEY (status_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS member_status;
CREATE TABLE member_status (
  Status_ID int(11) NOT NULL AUTO_INCREMENT,
  Status varchar(10) NOT NULL,
  PRIMARY KEY (Status_ID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO member_status (Status_ID, Status) VALUES
(1,	'approved'),
(2,	'pending');

DROP TABLE IF EXISTS members;
CREATE TABLE members (
  member_id int(11) NOT NULL AUTO_INCREMENT,
  UserName varchar(10) NOT NULL,
  Password varchar(16) NOT NULL,
  FirstName varchar(30) NOT NULL,
  LastName varchar(30) NOT NULL,
  Address varchar(200) NOT NULL,
  ContactNo varchar(14) NOT NULL,
  Url varchar(100) NOT NULL,
  Status_ID int(11) NOT NULL,
  Birthdate varchar(20) NOT NULL,
  Gender varchar(6) NOT NULL,
  DateAdded datetime NOT NULL,
  Relationship_ID int(14) NOT NULL,
  profImage varchar(100) NOT NULL,
  curcity varchar(50) NOT NULL,
  hometown varchar(50) NOT NULL,
  Interested varchar(30) NOT NULL,
  language varchar(30) NOT NULL,
  college varchar(100) NOT NULL,
  highschool varchar(100) NOT NULL,
  experiences varchar(200) NOT NULL,
  arts text NOT NULL,
  aboutme text NOT NULL,
  month varchar(4) NOT NULL,
  day varchar(2) NOT NULL,
  year varchar(4) NOT NULL,
  PRIMARY KEY (member_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS message;
CREATE TABLE message (
  messages_id int(11) NOT NULL AUTO_INCREMENT,
  messages text NOT NULL,
  user text NOT NULL,
  picture varchar(100) NOT NULL,
  date_created varchar(50) NOT NULL,
  poster varchar(30) NOT NULL,
  PRIMARY KEY (messages_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  message_id int(11) NOT NULL AUTO_INCREMENT,
  sender varchar(30) NOT NULL,
  receiver varchar(30) NOT NULL,
  content text NOT NULL,
  status varchar(30) NOT NULL,
  PRIMARY KEY (message_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS month;
CREATE TABLE month (
  month_id int(11) NOT NULL AUTO_INCREMENT,
  month varchar(15) NOT NULL,
  PRIMARY KEY (month_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO month (month_id, month) VALUES
(1,	'Jan'),
(2,	'Feb'),
(3,	'Mar'),
(4,	'Apr'),
(5,	'May'),
(6,	'Jun'),
(7,	'Jul'),
(8,	'Aug'),
(9,	'Sep'),
(10,'Oct'),
(11,'Nov'),
(12,'Dec');

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
  photo_id int(11) NOT NULL AUTO_INCREMENT,
  term varchar(30) NOT NULL,
  location varchar(200) NOT NULL,
  uploadedby int(11) NOT NULL,
  caption varchar(50) NOT NULL,
  PRIMARY KEY (photo_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS photoscomment;
CREATE TABLE photoscomment (
  comment_id int(11) NOT NULL AUTO_INCREMENT,
  comment text NOT NULL,
  commentby int(100) NOT NULL,
  PIC varchar(30) NOT NULL,
  PRIMARY KEY (comment_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS postcomment;
CREATE TABLE postcomment (
  comment_id int(11) NOT NULL AUTO_INCREMENT,
  content text NOT NULL,
  commentedby varchar(30) NOT NULL,
  pic varchar(100) NOT NULL,
  id int(40) NOT NULL,
  date_created varchar(50) NOT NULL,
  PRIMARY KEY (comment_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS relationship;
CREATE TABLE relationship (
  relationship_ID int(11) NOT NULL AUTO_INCREMENT,
  relationship varchar(10) NOT NULL,
  PRIMARY KEY (relationship_ID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS year;
CREATE TABLE year (
  year_id int(11) NOT NULL AUTO_INCREMENT,
  year int(4) NOT NULL,
  PRIMARY KEY (year_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO year (year_id, year) VALUES
(1,	2011),
(2,	2010),
(3,	2009),
(4,	2008),
(5,	2007),
(6,	2006),
(7,	2005),
(8,	2004),
(9,	2003),
(10,2002),
(11,2001),
(12,2000),
(13,1999),
(14,1998),
(15,1997),
(16,1996),
(17,1995),
(18,1994),
(19,1993),
(20,1992),
(21,1991),
(22,1990),
(23,1989),
(24,1988),
(25,1987),
(26,1986),
(27,1985),
(28,1984),
(29,1983),
(30,1982),
(31,1981),
(32,1980),
(33,1979),
(34,1978),
(35,1977),
(36,1976),
(37,1975),
(38,1974),
(39,1973),
(40,1972),
(41,1971),
(42,1970);

-- 2016-06-09 20:28:19