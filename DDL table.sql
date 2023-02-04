create database sigal;   
USE sigal;
CREATE TABLE highschool ( 
    id INT PRIMARY KEY,
    firstname VARCHAR(45) NOT NULL,
    lastname VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    gender VARCHAR(45),
    ip_address VARCHAR(45),
    cm_height FLOAT,
    age INT CHECK (AGE > 0),
    has_car VARCHAR(45) ,
    car_color VARCHAR(45) ,
    grade INT,
    grade_avg FLOAT,
    fiendship_id VARCHAR(50) UNIQUE
  CONSTRAINT `highschool_chk_1` CHECK ((`age` > 0)),
  CONSTRAINT `highschool_chk_2` CHECK ((`has_car` in ('True','False'))),
  CONSTRAINT `highschool_chk_3` CHECK ((`grade` between 1 and 12)),
  CONSTRAINT `highschool_chk_4` CHECK ((`grade_avg` between 0 and 100))
);
select * from highschool;

CREATE TABLE highschool_friendships(
id INT PRIMARY KEY NOT NULL,
friend_id INT FOREIGN KEY REFERENCES highschool(Id),
other_friend_id INT FOREIGN KEY REFERENCES highschool(Id)
);
select * from highschool_friendships;
