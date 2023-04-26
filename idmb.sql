create database imdbtask;

CREATE TABLE movie (
    Id INT Primary key auto_increment,
    MovieName VARCHAR(255),
    Director VARCHAR(255),
    Language VARCHAR(255)
);
select * from movie;
Insert Into movie (MovieName,  Director, Language) Values ("Varisu","Vamsi","Tamil"), ("Vikram","Lokesh Kanagaraj","Tamil"), ("Thunivu","Vinoth","Tamil"), ("Love Today","Pradeep","Tamil");


--  1. Movie should have multiple media(Video or Image)

CREATE TABLE media (
    Id INT Primary key auto_increment,
    Name VARCHAR(255),
    Type VARCHAR(255),
    Size VARCHAR(255),
    MovieId VARCHAR(255)
);
select * from media;
ALTER TABLE media  DROP COLUMN MovieId;
Insert Into media (Name, Type, Size) Values ("Varisu Video","Video","50MB"), ("Vikram Image","Image","200KB"), ("Thunivu Image","Image","300KB"), ("Love Today Video","Video","100MB");
ALTER TABLE media  ADD COLUMN MovieId INT;
UPDATE media SET MovieId=1 WHERE Id=1;
UPDATE media SET MovieId=2 WHERE Id=2;
UPDATE media SET MovieId=3 WHERE Id=3;
UPDATE media SET MovieId=4 WHERE Id=4;


--   2. Movie can belongs to multiple Genre 
CREATE TABLE genre (
    Id INT Primary key auto_increment,
    Name VARCHAR(255)
);
select * from genre;
Insert Into genre (Name) Values ("Action"), ("Thriller"), ("Comedy"), ("Love") ;

CREATE TABLE Movie_genre (
    Id INT ,
    MovieId INT,
    FOREIGN KEY (MovieId) REFERENCES movie(Id),
    GenreId INT,
    FOREIGN KEY (GenreId) REFERENCES genre(Id)
);
select * from  Movie_genre;
Insert Into Movie_genre (Id) Values (1), (2), (3), (4), (5);
UPDATE Movie_genre SET MovieId=1, GenreID=1 WHERE Id=1;
UPDATE Movie_genre SET MovieId=1, GenreID=4 WHERE Id=2;
UPDATE Movie_genre SET MovieId=2, GenreID=1 WHERE Id=3;
UPDATE Movie_genre SET MovieId=3, GenreID=3 WHERE Id=4;
UPDATE Movie_genre SET MovieId=3, GenreID=2 WHERE Id=5;

--   3. Movie can have multiple reviews and Review can belongs to a user 

CREATE TABLE user (
    Id INT Primary key auto_increment,
    Name VARCHAR(255),
    Age INT
);
select * from user;
Insert Into user (Name, Age) Values ("Boo", 23), ("Bala",25);

CREATE TABLE review (
    Id INT Primary key auto_increment,
     MovieId INT,
    FOREIGN KEY (MovieId) REFERENCES movie(Id),
    UserId INT,
    FOREIGN KEY (UserId) REFERENCES user(Id),
    Review_points INT
);
select * from review;
Insert Into review (Id) Values (1), (2), (3), (4);
UPDATE review SET MovieId=1,UserId=1,Review_points=4 WHERE Id=1;
UPDATE review SET MovieId=2,UserId=2,Review_points=3 WHERE Id=2;
UPDATE review SET MovieId=3,UserId=2,Review_points=4 WHERE Id=3;
UPDATE review SET MovieId=4,UserId=1,Review_points=3 WHERE Id=4;

--   4. Artist can have multiple skills 

CREATE TABLE arist (
    Id INT Primary key auto_increment,
    Arist_Name VARCHAR(255),
    Experience VARCHAR(255),
    Contact_Number DOUBLE
);
select * from arist;
Insert Into arist (Arist_Name, Experience, Contact_Number) Values ("Vijay","30 years",987654321), ("Ajith","29 years",985555274), ("Kamalhaasan","50 years",95896557274),("Pradeep","5 years",987555321);

CREATE TABLE skills (
    Id INT Primary key auto_increment,
    Skills VARCHAR(255)
);
select * from skills;
Insert Into skills (Skills) Values ("Dancer"), ("Fighter"), ("Actor"), ("Director");

CREATE TABLE Arist_skills (
    Id INT Primary key auto_increment,
	AristId INT,
    FOREIGN KEY (AristId) REFERENCES arist(Id),
    SkillId INT,
    FOREIGN KEY (SkillId ) REFERENCES skills(Id)
    );


--   5. Artist can perform multiple role in a single film

select * from Arist_skills;
Insert Into Arist_skills (Id) Values (1), (2), (3), (4), (5), (6);
UPDATE Arist_skills SET AristId=1,SkillId=1 WHERE Id=1;
UPDATE Arist_skills SET AristId=2,SkillId=1 WHERE Id=2;
UPDATE Arist_skills SET AristId=2,SkillId=2 WHERE Id=3;
UPDATE Arist_skills SET AristId=3,SkillId=1 WHERE Id=4;
UPDATE Arist_skills SET AristId=3,SkillId=3 WHERE Id=5;
UPDATE Arist_skills SET AristId=3,SkillId=4 WHERE Id=6;

ALTER TABLE movie ADD COLUMN HeroId INT;                               
ALTER TABLE movie ADD FOREIGN KEY (HeroId) REFERENCES arist(Id);
ALTER TABLE movie ADD COLUMN VillanId INT;
ALTER TABLE movie ADD FOREIGN KEY (VillanId) REFERENCES arist(Id);
UPDATE movie SET HeroId=2,VillanId=1 WHERE Id=1;
UPDATE movie SET HeroId=3,VillanId=1 WHERE Id=2;
UPDATE movie SET HeroId=2,VillanId=1 WHERE Id=3;
UPDATE movie SET HeroId=1,VillanId=1 WHERE Id=4;

select * from movie;
select * from media;
select * from genre;
select * from  Movie_genre;
select * from user;
select * from review;
select * from arist;
select * from skills;
select * from Arist_skills;
