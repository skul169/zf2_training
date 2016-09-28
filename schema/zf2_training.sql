/*
Navicat MySQL Data Transfer

Source Server         : 192.168.33.10
Source Server Version : 50633
Source Host           : 192.168.33.10:3306
Source Database       : zf2_training

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-09-28 21:32:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('2', 'Adele', '21');
INSERT INTO `album` VALUES ('3', 'Bruce  Springsteen', 'Wrecking Ball (Deluxe)');
INSERT INTO `album` VALUES ('4', 'Lana  Del  Rey', 'Born  To  Die');
INSERT INTO `album` VALUES ('5', 'Gotye', 'Making  Mirrors');
INSERT INTO `album` VALUES ('6', 'YYY', 'X');
INSERT INTO `album` VALUES ('7', 'David Bowie', 'The Next Day (Deluxe Version)');
INSERT INTO `album` VALUES ('8', 'Bastille', 'Bad Blood');
INSERT INTO `album` VALUES ('9', 'Bruno Mars', 'Unorthodox Jukebox');
INSERT INTO `album` VALUES ('10', 'Emeli Sandé', 'Our Version of Events (Special Edition)');
INSERT INTO `album` VALUES ('11', 'Bon Jovi', 'What About Now (Deluxe Version)');
INSERT INTO `album` VALUES ('12', 'Justin Timberlake', 'The 20/20 Experience (Deluxe Version)');
INSERT INTO `album` VALUES ('13', 'Bastille', 'Bad Blood (The Extended Cut)');
INSERT INTO `album` VALUES ('14', 'P!nk', 'The Truth About Love');
INSERT INTO `album` VALUES ('15', 'Sound City - Real to Reel', 'Sound City - Real to Reel');
INSERT INTO `album` VALUES ('16', 'Jake Bugg', 'Jake Bugg');
INSERT INTO `album` VALUES ('17', 'Various Artists', 'The Trevor Nelson Collection');
INSERT INTO `album` VALUES ('18', 'David Bowie', 'The Next Day');
INSERT INTO `album` VALUES ('19', 'Mumford & Sons', 'Babel');
INSERT INTO `album` VALUES ('20', 'The Lumineers', 'The Lumineers');
INSERT INTO `album` VALUES ('21', 'Various Artists', 'Get Ur Freak On - R&B Anthems');
INSERT INTO `album` VALUES ('22', 'The 1975', 'Music For Cars EP');
INSERT INTO `album` VALUES ('23', 'Various Artists', 'Saturday Night Club Classics - Ministry of Sound');
INSERT INTO `album` VALUES ('24', 'Hurts', 'Exile (Deluxe)');
INSERT INTO `album` VALUES ('25', 'Various Artists', 'Mixmag - The Greatest Dance Tracks of All Time');
INSERT INTO `album` VALUES ('26', 'Ben Howard', 'Every Kingdom');
INSERT INTO `album` VALUES ('27', 'Stereophonics', 'Graffiti On the Train');
INSERT INTO `album` VALUES ('28', 'The Script', '#3');
INSERT INTO `album` VALUES ('29', 'Stornoway', 'Tales from Terra Firma');
INSERT INTO `album` VALUES ('30', 'David Bowie', 'Hunky Dory (Remastered)');
INSERT INTO `album` VALUES ('31', 'Worship Central', 'Let It Be Known (Live)');
INSERT INTO `album` VALUES ('32', 'Ellie Goulding', 'Halcyon');
INSERT INTO `album` VALUES ('33', 'Various Artists', 'Dermot O\'Leary Presents the Saturday Sessions 2013');
INSERT INTO `album` VALUES ('34', 'Stereophonics', 'Graffiti On the Train (Deluxe Version)');
INSERT INTO `album` VALUES ('35', 'Dido', 'Girl Who Got Away (Deluxe)');
INSERT INTO `album` VALUES ('36', 'Hurts', 'Exile');
INSERT INTO `album` VALUES ('37', 'Bruno Mars', 'Doo-Wops & Hooligans');
INSERT INTO `album` VALUES ('38', 'Calvin Harris', '18 Months');
INSERT INTO `album` VALUES ('39', 'Olly Murs', 'Right Place Right Time');
INSERT INTO `album` VALUES ('40', 'Alt-J (?)', 'An Awesome Wave');
INSERT INTO `album` VALUES ('41', 'One Direction', 'Take Me Home');
INSERT INTO `album` VALUES ('42', 'Various Artists', 'Pop Stars');
INSERT INTO `album` VALUES ('43', 'Various Artists', 'Now That\'s What I Call Music! 83');
INSERT INTO `album` VALUES ('44', 'John Grant', 'Pale Green Ghosts');
INSERT INTO `album` VALUES ('45', 'Paloma Faith', 'Fall to Grace');
INSERT INTO `album` VALUES ('46', 'Laura Mvula', 'Sing To the Moon (Deluxe)');
INSERT INTO `album` VALUES ('47', 'Duke Dumont', 'Need U (100%) [feat. A*M*E] - EP');
INSERT INTO `album` VALUES ('48', 'Watsky', 'Cardboard Castles');
INSERT INTO `album` VALUES ('49', 'Blondie', 'Blondie: Greatest Hits');
INSERT INTO `album` VALUES ('50', 'Foals', 'Holy Fire');
INSERT INTO `album` VALUES ('51', 'Maroon 5', 'Overexposed');
INSERT INTO `album` VALUES ('52', 'Bastille', 'Pompeii (Remixes) - EP');
INSERT INTO `album` VALUES ('53', 'Imagine Dragons', 'Hear Me - EP');
INSERT INTO `album` VALUES ('54', 'Various Artists', '100 Hits: 80s Classics');
INSERT INTO `album` VALUES ('55', 'Various Artists', 'Les Misérables (Highlights From the Motion Picture Soundtrack)');
INSERT INTO `album` VALUES ('56', 'Mumford & Sons', 'Sigh No More');
INSERT INTO `album` VALUES ('57', 'Frank Ocean', 'Channel ORANGE');
INSERT INTO `album` VALUES ('58', 'Bon Jovi', 'What About Now');
INSERT INTO `album` VALUES ('59', 'Various Artists', 'BRIT Awards 2013');
INSERT INTO `album` VALUES ('60', 'Taylor Swift', 'Red');
INSERT INTO `album` VALUES ('61', 'Fleetwood Mac', 'Fleetwood Mac: Greatest Hits');
INSERT INTO `album` VALUES ('62', 'David Guetta', 'Nothing But the Beat Ultimate');
INSERT INTO `album` VALUES ('63', 'Various Artists', 'Clubbers Guide 2013 (Mixed By Danny Howard) - Ministry of Sound');
INSERT INTO `album` VALUES ('64', 'David Bowie', 'Best of Bowie');
INSERT INTO `album` VALUES ('65', 'Laura Mvula', 'Sing To the Moon');
INSERT INTO `album` VALUES ('66', 'ADELE', '21');
INSERT INTO `album` VALUES ('67', 'Of Monsters and Men', 'My Head Is an Animal');
INSERT INTO `album` VALUES ('68', 'Rihanna', 'Unapologetic');
INSERT INTO `album` VALUES ('69', 'Various Artists', 'BBC Radio 1\'s Live Lounge - 2012');
INSERT INTO `album` VALUES ('70', 'Avicii & Nicky Romero', 'I Could Be the One (Avicii vs. Nicky Romero)');
INSERT INTO `album` VALUES ('71', 'The Streets', 'A Grand Don\'t Come for Free');
INSERT INTO `album` VALUES ('72', 'Tim McGraw', 'Two Lanes of Freedom');
INSERT INTO `album` VALUES ('73', 'Foo Fighters', 'Foo Fighters: Greatest Hits');
INSERT INTO `album` VALUES ('74', 'Various Artists', 'Now That\'s What I Call Running!');
INSERT INTO `album` VALUES ('75', 'Swedish House Mafia', 'Until Now');
INSERT INTO `album` VALUES ('76', 'The xx', 'Coexist');
INSERT INTO `album` VALUES ('77', 'Five', 'Five: Greatest Hits');
INSERT INTO `album` VALUES ('78', 'Jimi Hendrix', 'People, Hell & Angels');
INSERT INTO `album` VALUES ('79', 'Biffy Clyro', 'Opposites (Deluxe)');
INSERT INTO `album` VALUES ('80', 'The Smiths', 'The Sound of the Smiths');
INSERT INTO `album` VALUES ('81', 'The Saturdays', 'What About Us - EP');
INSERT INTO `album` VALUES ('82', 'Fleetwood Mac', 'Rumours');
INSERT INTO `album` VALUES ('83', 'Various Artists', 'The Big Reunion');
INSERT INTO `album` VALUES ('84', 'Various Artists', 'Anthems 90s - Ministry of Sound');
INSERT INTO `album` VALUES ('85', 'The Vaccines', 'Come of Age');
INSERT INTO `album` VALUES ('86', 'Nicole Scherzinger', 'Boomerang (Remixes) - EP');
INSERT INTO `album` VALUES ('87', 'Bob Marley', 'Legend (Bonus Track Version)');
INSERT INTO `album` VALUES ('88', 'Josh Groban', 'All That Echoes');
INSERT INTO `album` VALUES ('89', 'Blue', 'Best of Blue');
INSERT INTO `album` VALUES ('90', 'Ed Sheeran', '+');
INSERT INTO `album` VALUES ('91', 'Olly Murs', 'In Case You Didn\'t Know (Deluxe Edition)');
INSERT INTO `album` VALUES ('92', 'Macklemore & Ryan Lewis', 'The Heist (Deluxe Edition)');
INSERT INTO `album` VALUES ('93', 'Various Artists', 'Defected Presents Most Rated Miami 2013');
INSERT INTO `album` VALUES ('94', 'Gorgon City', 'Real EP');
INSERT INTO `album` VALUES ('95', 'Mumford & Sons', 'Babel (Deluxe Version)');
INSERT INTO `album` VALUES ('96', 'Various Artists', 'The Music of Nashville: Season 1, Vol. 1 (Original Soundtrack)');
INSERT INTO `album` VALUES ('97', 'Various Artists', 'The Twilight Saga: Breaking Dawn, Pt. 2 (Original Motion Picture Soundtrack)');
INSERT INTO `album` VALUES ('98', 'Various Artists', 'Mum - The Ultimate Mothers Day Collection');
INSERT INTO `album` VALUES ('99', 'One Direction', 'Up All Night');
INSERT INTO `album` VALUES ('100', 'Bon Jovi', 'Bon Jovi Greatest Hits');
INSERT INTO `album` VALUES ('101', 'Agnetha Fältskog', 'A');
INSERT INTO `album` VALUES ('102', 'Fun.', 'Some Nights');
INSERT INTO `album` VALUES ('103', 'Justin Bieber', 'Believe Acoustic');
INSERT INTO `album` VALUES ('104', 'Atoms for Peace', 'Amok');
INSERT INTO `album` VALUES ('105', 'Justin Timberlake', 'Justified');
INSERT INTO `album` VALUES ('106', 'Passenger', 'All the Little Lights');
INSERT INTO `album` VALUES ('107', 'Kodaline', 'The High Hopes EP');
INSERT INTO `album` VALUES ('108', 'Lana Del Rey', 'Born to Die');
INSERT INTO `album` VALUES ('109', 'JAY Z & Kanye West', 'Watch the Throne (Deluxe Version)');
INSERT INTO `album` VALUES ('110', 'Biffy Clyro', 'Opposites');
INSERT INTO `album` VALUES ('111', 'Various Artists', 'Return of the 90s');
INSERT INTO `album` VALUES ('112', 'Gabrielle Aplin', 'Please Don\'t Say You Love Me - EP');
INSERT INTO `album` VALUES ('113', 'Various Artists', '100 Hits - Driving Rock');
INSERT INTO `album` VALUES ('114', 'Jimi Hendrix', 'Experience Hendrix - The Best of Jimi Hendrix');
INSERT INTO `album` VALUES ('115', 'Various Artists', 'The Workout Mix 2013');
INSERT INTO `album` VALUES ('116', 'The 1975', 'Sex');
INSERT INTO `album` VALUES ('117', 'Chase & Status', 'No More Idols');
INSERT INTO `album` VALUES ('118', 'Rihanna', 'Unapologetic (Deluxe Version)');
INSERT INTO `album` VALUES ('119', 'The Killers', 'Battle Born');
INSERT INTO `album` VALUES ('120', 'Olly Murs', 'Right Place Right Time (Deluxe Edition)');
INSERT INTO `album` VALUES ('121', 'A$AP Rocky', 'LONG.LIVE.A$AP (Deluxe Version)');
INSERT INTO `album` VALUES ('122', 'Various Artists', 'Cooking Songs');
INSERT INTO `album` VALUES ('123', 'Haim', 'Forever - EP');
INSERT INTO `album` VALUES ('124', 'Lianne La Havas', 'Is Your Love Big Enough?');
INSERT INTO `album` VALUES ('125', 'Michael Bublé', 'To Be Loved');
INSERT INTO `album` VALUES ('126', 'Daughter', 'If You Leave');
INSERT INTO `album` VALUES ('127', 'The xx', 'xx');
INSERT INTO `album` VALUES ('128', 'Eminem', 'Curtain Call');
INSERT INTO `album` VALUES ('129', 'Kendrick Lamar', 'good kid, m.A.A.d city (Deluxe)');
INSERT INTO `album` VALUES ('130', 'Disclosure', 'The Face - EP');
INSERT INTO `album` VALUES ('131', 'Palma Violets', '180');
INSERT INTO `album` VALUES ('132', 'Cody Simpson', 'Paradise');
INSERT INTO `album` VALUES ('133', 'Ed Sheeran', '+ (Deluxe Version)');
INSERT INTO `album` VALUES ('134', 'Michael Bublé', 'Crazy Love (Hollywood Edition)');
INSERT INTO `album` VALUES ('135', 'Bon Jovi', 'Bon Jovi Greatest Hits - The Ultimate Collection');
INSERT INTO `album` VALUES ('136', 'Rita Ora', 'Ora');
INSERT INTO `album` VALUES ('137', 'g33k', 'Spabby');
INSERT INTO `album` VALUES ('138', 'Various Artists', 'Annie Mac Presents 2012');
INSERT INTO `album` VALUES ('139', 'David Bowie', 'The Platinum Collection');
INSERT INTO `album` VALUES ('140', 'Bridgit Mendler', 'Ready or Not (Remixes) - EP');
INSERT INTO `album` VALUES ('141', 'Dido', 'Girl Who Got Away');
INSERT INTO `album` VALUES ('142', 'Various Artists', 'Now That\'s What I Call Disney');
INSERT INTO `album` VALUES ('143', 'The 1975', 'Facedown - EP');
INSERT INTO `album` VALUES ('144', 'Kodaline', 'The Kodaline - EP');
INSERT INTO `album` VALUES ('145', 'Various Artists', '100 Hits: Super 70s');
INSERT INTO `album` VALUES ('146', 'Fred V & Grafix', 'Goggles - EP');
INSERT INTO `album` VALUES ('147', 'Biffy Clyro', 'Only Revolutions (Deluxe Version)');
INSERT INTO `album` VALUES ('148', 'Train', 'California 37');
INSERT INTO `album` VALUES ('149', 'Ben Howard', 'Every Kingdom (Deluxe Edition)');
INSERT INTO `album` VALUES ('150', 'Various Artists', 'Motown Anthems');
INSERT INTO `album` VALUES ('151', 'Courteeners', 'ANNA');
INSERT INTO `album` VALUES ('152', 'Johnny Marr', 'The Messenger');
INSERT INTO `album` VALUES ('153', 'Rodriguez', 'Searching for Sugar Man');
INSERT INTO `album` VALUES ('154', 'Jessie Ware', 'Devotion');
INSERT INTO `album` VALUES ('155', 'Bruno Mars', 'Unorthodox Jukebox');
INSERT INTO `album` VALUES ('156', 'Various Artists', 'Call the Midwife (Music From the TV Series)');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, 'truong@gmail.com', null, '$2y$14$wzGbv53I66vDaivK/N3Mceqf2pJxLJ13HZho3D7lvWYO7hy1gWTNS', null);

-- ----------------------------
-- Table structure for user_provider
-- ----------------------------
DROP TABLE IF EXISTS `user_provider`;
CREATE TABLE `user_provider` (
  `user_id` int(11) NOT NULL,
  `provider_id` varchar(50) NOT NULL,
  `provider` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`provider_id`),
  UNIQUE KEY `provider_id` (`provider_id`,`provider`),
  CONSTRAINT `user_provider_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_provider
-- ----------------------------
