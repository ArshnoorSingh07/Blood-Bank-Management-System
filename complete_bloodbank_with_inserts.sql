-- Create Database
CREATE DATABASE IF NOT EXISTS bloodbank;
USE bloodbank;

-- Donor Table
CREATE TABLE donor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  Phone_number BIGINT,
  email VARCHAR(50),
  DOB DATE,
  pwd VARCHAR(50),
  blood_group VARCHAR(5)
);

-- Recipient Table
CREATE TABLE recipient (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  phone_no BIGINT,
  email VARCHAR(50),
  blood_group VARCHAR(5)
);

-- Request Table
CREATE TABLE request (
  id1 INT,
  id2 INT,
  FOREIGN KEY (id1) REFERENCES donor(id),
  FOREIGN KEY (id2) REFERENCES recipient(id)
);

-- Organisation Table
CREATE TABLE organisation (
  oid INT PRIMARY KEY,
  contact_id BIGINT,
  email VARCHAR(50),
  state VARCHAR(50),
  address VARCHAR(100),
  city VARCHAR(50)
);

-- Donation Table
CREATE TABLE donation (
  id INT PRIMARY KEY,
  certificate_id INT,
  name VARCHAR(50),
  phone_no BIGINT,
  email VARCHAR(50),
  DOB DATE,
  pwd VARCHAR(50),
  blood_group VARCHAR(5),
  oid1 INT,
  FOREIGN KEY (oid1) REFERENCES organisation(oid)
);

-- Organizes Table
CREATE TABLE organizes (
  oid1 INT,
  cid INT PRIMARY KEY,
  date1 DATE,
  timer TIME,
  info VARCHAR(100),
  venue VARCHAR(100),
  name VARCHAR(50),
  FOREIGN KEY (oid1) REFERENCES organisation(oid)
);

-- Inventory Table
CREATE TABLE inventory (
  oid1 INT,
  bloodid INT PRIMARY KEY,
  btype VARCHAR(5),
  date1 DATE,
  amount INT,
  FOREIGN KEY (oid1) REFERENCES organisation(oid)
);

-- Blood Table
CREATE TABLE blood (
  bloodid INT PRIMARY KEY,
  btype VARCHAR(5),
  date1 DATE,
  amount INT
);

-- Recipient1 Table
CREATE TABLE recipient1 (
  id INT PRIMARY KEY,
  bloodgroup VARCHAR(5),
  email VARCHAR(50),
  name VARCHAR(50),
  phone BIGINT,
  bid1 INT,
  FOREIGN KEY (bid1) REFERENCES blood(bloodid)
);


-- Insert Statements


INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (1, 'Ram', 9898989898, '1@gmail.com', '2001-01-01', 'xyzabc', 'b+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (2, 'Ama', 9898989898, '2@gmail.com', '2001-01-02', 'xyzabc', 'A+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (3, 'jili', 9898989898, '3@gmail.com', '2001-01-03', 'xyzabc', 'o+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (4, 'Juli', 9898989898, '4@gmail.com', '2001-01-04', 'xyzabc', 'A+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (5, 'aka', 9898989898, '5@gmail.com', '2001-01-05', 'xyzabc', 'B+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (6, 'baka', 9898989898, '6@gmail.com', '2001-01-06', 'xyzabc', 'C+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (7, 'daka', 9898989898, '7@gmail.com', '2001-01-07', 'xyzabc', 'A+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (8, 'sid', 9898989898, '8@gmail.com', '2001-01-10', 'xyzabc', 'B+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (9, 'mid', 9898989898, '9@gmail.com', '2001-01-11', 'xyzabc', 'C+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (10, 'rewa', 9898989898, '10@gmail.com', '2001-01-12', 'xyzabc', 'B+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (11, 'raywa', 9898989898, '11@gmail.com', '2001-01-13', 'xyzabc', 'AB+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (12, 'rahwa', 9898989898, '12@gmail.com', '2001-01-14', 'xyzabc', 'O-');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (13, 'gourab', 9898989898, '13@gmail.com', '2001-01-15', 'xyzabc', 'A+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (14, 'Gaurav', 9898989898, '14@gmail.com', '2001-01-16', 'xyzabc', 'b+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (15, 'Kasis', 9898989898, '15@gmail.com', '2001-01-17', 'xyzabc', 'AB-');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (16, 'Kosis', 9898989898, '16@gmail.com', '2001-01-18', 'xyzabc', 'A-');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (17, 'kasol', 9898989898, '17@gmail.com', '2001-01-19', 'xyzabc', 'B+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (18, 'Bani', 9898989898, '18@gmail.com', '2001-01-20', 'xyzabc', 'AB+');
INSERT INTO donor (id, name, Phone_number, email, DOB, pwd, blood_group) VALUES (19, 'Banno', 9898989898, '19@gmail.com', '2001-01-21', 'xyzabc', 'B-');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (2, 'KAma', 9898989898, '2@gmail.com', 'A+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (1, 'KRam', 9898189898, '1@gmail.com', 'b+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (3, 'Kjili', 9892989898, '3@gmail.com', 'o+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (4, 'KJuli', 9892989898, '4@gmail.com', 'A+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (5, 'Kaka', 9898289898, '5@gmail.com', 'B+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (6, 'kbaka', 9892989898, '6@gmail.com', 'C+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (7, 'kdaka', 9893989898, '7@gmail.com', 'A+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (8, 'ksid', 9898984898, '8@gmail.com', 'B+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (9, 'kmid', 9898989898, '9@gmail.com', 'C+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (10, 'krewa', 9898939898, '10@gmail.com', 'B+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (11, 'kraywa', 9898389898, '11@gmail.com', 'AB+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (12, 'krahwa', 9898389898, '12@gmail.com', 'O-');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (13, 'kgourab', 9893989898, '13@gmail.com', 'A+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (14, 'kGaurav', 9898398989, '14@gmail.com', 'b+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (16, 'kKosis', 9898939898, '16@gmail.com', 'A-');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (15, 'kKasis', 9898939898, '15@gmail.com', 'AB-');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (17, 'kkasol', 9898989898, '17@gmail.com', 'B+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (18, 'kBani', 9198989898, '18@gmail.com', 'AB+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (19, 'kBanno', 9298989898, '19@gmail.com', 'B-');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (21, 'kRama', 9198949898, '1@gmail.com', 'b+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (22, 'kAmaa', 9298949898, '2@gmail.com', 'A+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (23, 'kjilia', 9398289898, '3@gmail.com', 'o+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (24, 'kJulia', 9498589898, '4@gmail.com', 'A+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (25, 'kakaa', 9818969898, '5@gmail.com', 'B+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (26, 'kbakaa', 9198589898, '6@gmail.com', 'C+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (27, 'kdkakaa', 9198889898, '7@gmail.com', 'A+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (28, 'kskida', 9818979898, '8@gmail.com', 'B+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (29, 'kmida', 9891959898, '9@gmail.com', 'C+');
INSERT INTO recipient (id, name, phone_no, email, blood_group) VALUES (20, 'krewaa', 9818389898, '10@gmail.com', 'B+');
INSERT INTO request (id1, id2) VALUES (2, 1);
INSERT INTO request (id1, id2) VALUES (1, 2);
INSERT INTO request (id1, id2) VALUES (3, 3);
INSERT INTO request (id1, id2) VALUES (4, 4);
INSERT INTO request (id1, id2) VALUES (5, 5);
INSERT INTO request (id1, id2) VALUES (6, 6);
INSERT INTO request (id1, id2) VALUES (7, 7);
INSERT INTO request (id1, id2) VALUES (8, 8);
INSERT INTO request (id1, id2) VALUES (9, 9);
INSERT INTO request (id1, id2) VALUES (10, 10);
INSERT INTO request (id1, id2) VALUES (11, 11);
INSERT INTO request (id1, id2) VALUES (12, 12);
INSERT INTO request (id1, id2) VALUES (13, 13);
INSERT INTO request (id1, id2) VALUES (14, 14);
INSERT INTO request (id1, id2) VALUES (15, 15);
INSERT INTO request (id1, id2) VALUES (1, 16);
INSERT INTO request (id1, id2) VALUES (17, 17);
INSERT INTO request (id1, id2) VALUES (18, 18);
INSERT INTO request (id1, id2) VALUES (19, 19);
INSERT INTO organisation (oid, contact_id, email, state, address, city) VALUES (1111, 9898989898, 'org1@gmail.com', 'Punjab', 'TIET', 'Patiala');
INSERT INTO organisation (oid, contact_id, email, state, address, city) VALUES (1112, 9898989898, 'org2@gmail.com', 'Punjab', 'Abc road', 'Ludhiana');
INSERT INTO organisation (oid, contact_id, email, state, address, city) VALUES (1113, 1898989898, 'org3@gmail.com', 'Punjab', 'BT NAGAR', 'Amritsar');
INSERT INTO organisation (oid, contact_id, email, state, address, city) VALUES (1114, 9298989898, 'org4@gmail.com', 'Punjab', 'RP ROAD', 'Bhatinda');
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (10, 10, 'rewa', 9898989898, '10@gmail.com', '2001-01-12', 'xyzabc', 'B+', 1111);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (11, 11, 'raywa', 9898989898, '11@gmail.com', '2001-01-13', 'xyzabc', 'AB+', 1112);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (12, 12, 'rahwa', 9898989898, '12@gmail.com', '2001-01-14', 'xyzabc', 'O-', 1113);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (13, 13, 'gourab', 9898989898, '13@gmail.com', '2001-01-15', 'xyzabc', 'A+', 1114);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (14, 14, 'Gaurav', 9898989898, '14@gmail.com', '2001-01-16', 'xyzabc', 'b+', 1111);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (15, 15, 'Kasis', 9898989898, '15@gmail.com', '2001-01-17', 'xyzabc', 'AB-', 1112);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (16, 16, 'Kosis', 9898989898, '16@gmail.com', '2001-01-18', 'xyzabc', 'A-', 1113);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (17, 17, 'kasol', 9898989898, '17@gmail.com', '2001-01-19', 'xyzabc', 'B+', 1114);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (18, 18, 'Bani', 9898989898, '18@gmail.com', '2001-01-20', 'xyzabc', 'AB+', 1111);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (19, 19, 'Banno', 9898989898, '19@gmail.com', '2001-01-21', 'xyzabc', 'B-', 1112);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (20, 21, 'Rama', 9898949898, '1@gmail.com', '2001-01-01', 'xyzfbc', 'b+', 1113);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (21, 22, 'Amaa', 9898949898, '2@gmail.com', '2001-01-02', 'xyzfbc', 'A+', 1114);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (22, 23, 'jilia', 9898289898, '3@gmail.com', '2001-01-03', 'xyfabc', 'o+', 1111);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (23, 24, 'Julia', 9898589898, '4@gmail.com', '2001-01-04', 'xyfabc', 'A+', 1112);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (24, 25, 'akaa', 9898969898, '5@gmail.com', '2001-01-05', 'xyfabc', 'B+', 1113);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (25, 26, 'bakaa', 9898589898, '6@gmail.com', '2001-01-06', 'xfzabc', 'C+', 1114);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (26, 27, 'dakaa', 9898889898, '7@gmail.com', '2001-01-07', 'xyzafc', 'A+', 1111);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (27, 28, 'sida', 9898979898, '8@gmail.com', '2001-01-10', 'xyzabf', 'B+', 1112);
INSERT INTO donation (id, certificate_id, name, phone_no, email, DOB, pwd, blood_group, oid1) VALUES (28, 29, 'mida', 9898959898, '9@gmail.com', '2001-01-11', 'xyzafc', 'C+', 1113);
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1111, 21, '2022-01-10', '10:00:00', 'weekly blood donation camp', 'abc Chowk', 'camp1');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1112, 31, '2022-02-09', '11:00:00', 'monthly blood donation camp', 'abc Chowk', 'camp2');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1113, 40, '2022-03-08', '12:00:00', 'weekly blood donation camp', 'ab road', 'camp3');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1114, 50, '2022-04-07', '13:00:00', 'quarterly blood donation camp', 'aadarsh nagar', 'camp4');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1111, 22, '2022-05-06', '14:00:00', 'weekly blood donation camp', 'rc colony', 'camp5');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1112, 32, '2022-06-05', '14:00:00', 'monthly blood donation camp', 'op road', 'camp6');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1113, 41, '2022-07-04', '11:00:00', 'weekly blood donation camp', 'nabha road', 'camp7');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1114, 51, '2022-08-03', '12:00:00', 'yearly blood donation camp', 'tiet road', 'camp8');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1111, 23, '2022-09-02', '13:00:00', 'weekly blood donation camp', 'a colony', 'camp9');
INSERT INTO organizes (org_id, camp_id, camp_date, camp_time, description, location, name) VALUES (1112, 33, '2022-10-01', '14:00:00', 'monthly blood donation camp', 'akas homes', 'camp10');
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 100, 'B+', '2021-05-01', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1112, 101, 'AB+', '2021-05-04', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1113, 102, 'AB-', '2021-05-06', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1114, 103, 'b+', '2021-03-01', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 104, 'AB-', '2021-05-10', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1112, 105, 'b+', '2021-03-01', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1113, 106, 'b+', '2021-05-20', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1114, 107, 'b-', '2021-05-01', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 108, 'AB+', '2021-02-01', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1112, 109, 'o-', '2021-05-30', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1113, 110, 'b+', '2021-02-03', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1114, 111, 'AB-', '2021-04-25', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 112, 'b+', '2021-05-11', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1112, 113, 'o+', '2021-05-01', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1113, 114, 'b+-', '2021-05-12', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1114, 115, 'o+', '2021-06-13', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 116, 'AB+', '2021-05-01', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1112, 117, 'o+', '2021-03-01', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1113, 118, 'b-', '2021-05-16', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1114, 119, 'AB+', '2021-05-01', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 120, 'o-', '2021-02-20', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1112, 121, 'b+', '2021-05-01', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1113, 122, 'b-', '2021-02-11', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1114, 123, 'AB+', '2021-05-01', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 124, 'o+', '2021-05-13', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1112, 125, 'b+', '2021-03-22', 2);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1113, 126, 'o-', '2021-05-23', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1114, 127, 'AB+', '2021-04-08', 1);
INSERT INTO inventory (org_id, blood_id, blood_group, collection_date, quantity) VALUES (1111, 128, 'o-', '2021-05-09', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (100, 'B+', '2021-05-01', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (101, 'AB+', '2021-05-04', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (102, 'AB-', '2021-05-06', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (103, 'b+', '2021-03-01', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (104, 'AB-', '2021-05-10', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (105, 'b+', '2021-03-01', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (106, 'b+', '2021-05-20', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (107, 'b-', '2021-05-01', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (108, 'AB+', '2021-02-01', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (109, 'o-', '2021-05-30', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (110, 'b+', '2021-02-03', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (111, 'AB-', '2021-04-25', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (112, 'b+', '2021-05-11', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (113, 'o+', '2021-05-01', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (114, 'b+-', '2021-05-12', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (115, 'o+', '2021-06-13', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (116, 'AB+', '2021-05-01', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (117, 'o+', '2021-03-01', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (118, 'b-', '2021-05-16', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (119, 'AB+', '2021-05-01', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (120, 'o-', '2021-02-20', 2);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (121, 'b+', '2021-05-01', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (122, 'b-', '2021-02-11', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (123, 'AB+', '2021-05-01', 1);
INSERT INTO blood (blood_id, blood_group, collection_date, quantity) VALUES (124, 'o+', '2021-05-13', 1);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('A+', 1001, '1@gmail.com', 'ram', 6565656565, 100);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('O+', 1002, '2@gmail.com', 'Shayam', 6565656565, 101);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('AB+', 1003, '3@gmail.com', 'Shyama', 6565656565, 102);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('A+', 1004, '4@gmail.com', 'rama', 6565656565, 103);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1005, '5@gmail.com', 'Harsh', 6565656565, 104);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('O+', 1006, '6@gmail.com', 'Harsha', 6565636565, 105);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('AO+', 1007, '7@gmail.com', 'Hari', 6565616565, 106);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('AB+', 1008, '8@gmail.com', 'Haria', 6562656565, 107);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('A+', 1009, '9@gmail.com', 'Rahul', 6565656565, 108);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('AB+', 1010, '10@gmail.com', 'Rohit', 6565656565, 109);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1011, '11@gmail.com', 'Raghav', 6565656165, 110);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('O+', 1012, '12@gmail.com', 'Ram', 6565656561, 111);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('AB+', 1013, '13@gmail.com', 'Rohit', 6565651565, 112);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('O+', 1014, '14@gmail.com', 'Raman', 6565651565, 113);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('AO+', 1015, '15@gmail.com', 'Gaurav', 6561656565, 114);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('AO+', 1016, '16@gmail.com', 'Anamik', 6562656565, 115);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('BA+', 1017, '17@gmail.com', 'Ana', 6565656265, 116);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1018, '18@gmail.com', 'Aman', 6565656365, 117);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1020, '19@gmail.com', 'Amanik', 6565456565, 118);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1021, '20@gmail.com', 'Ram', 6565456565, 119);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1022, '21@gmail.com', 'ram', 6515656565, 120);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1023, '22@gmail.com', 'ram', 6265656565, 121);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1024, '23@gmail.com', 'ram', 6565636565, 122);
INSERT INTO recipient1 (blood_group, recipient_id, email, name, phone, blood_id) VALUES ('B+', 1025, '24@gmail.com', 'ram', 6565636565, 123);