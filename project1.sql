create database project;
  use project;

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `car` (
  car_id int(11) NOT NULL AUTO_INCREMENT,
  car_type varchar(255) NOT NULL,
  car_name varchar(255) NOT NULL,
  car_model varchar(25) NOT NULL,
  car_no varchar(255) NOT NULL,
  UNIQUE(car_no),
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

CREATE TABLE IF NOT EXISTS driver (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(250) NOT NULL,
  user_name varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  phone varchar(122) NOT NULL,
  email varchar(250) NOT NULL,
  car_type varchar(255) NOT NULL ,
  gender varchar(255) NOT NULL,
  rating int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;



CREATE TABLE IF NOT EXISTS `driver_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `driver_lat` float NOT NULL ,
  `driver_long` float NOT NULL ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `driver_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raterid` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `driver_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT'7:00:00',
  `end_time` datetime NOT NULL DEFAULT '19:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=UTF8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `driver_for_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL ,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=UTF8 AUTO_INCREMENT=1 ;

C:\\Users\\AB_OL\\Desktop\\project1.sql





--RATING = TASNIF
--Seating = MA9A3ID
--
--
--
--


