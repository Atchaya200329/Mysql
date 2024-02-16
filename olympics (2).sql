create database Olympic_2021;
show databases;
use Olympic_2021;
create table Games(Game_id int,Game_name varchar(20),constraint pk primary key(Game_id));
insert into Games values(1,'Shooting'),(2,'Badminton'),(3,'Boxing'),(4,'Karate'),(5,'Swimming'),(6,'Table tennis'),(7,'Wrestling'),(8,'Weightlifting'),(9,'Cycling road'),(10,'Football');
select * from Games;
drop table Games;
drop database Olympic_2021;
drop table Athletes;
create table Athletes(Athlete_id int,Athlete_name varchar(30),Athlete_dob timestamp default current_timestamp on update current_timestamp,Athlete_gender enum('Female','Male'),
Athlete_country varchar(20),Athlete_weight int,Athlete_phonenumber bigint,
Game_id int,constraint pk primary key (Athlete_id),constraint ck check(Athlete_weight>30),constraint uk unique(Athlete_name,Athlete_phonenumber),
constraint fk foreign key(Game_id) references Games(Game_id));
select * from Athletes;
insert into Athletes values (1001,'Wei pang','1986-07-19','Male','China',73,9876543210,1);
insert into Athletes values (1002,'Javad foroughi','1979-09-11','Male','Iranian',92,9765432180,1);
insert into Athletes values(1003,'Viktor axelsen','1994-01-04','Male','Denmark',88,9678543210,2);
insert into Athletes values(1004,'Buse naz cakiroglu','1996-05-26','Female','Turkish',51,9988776655,3);
insert into Athletes values(1005,'Ali sofuoglu','1995-06-03','Male','Turkish',78,9678542310,4);
insert into Athletes values(1006,'Regan smith','2002-02-09','Female','America',56,9567843212,5);
insert into Athletes values(1007,'Ma long','1988-10-20','Male','China',72,9087564321,6);
insert into Athletes values(1008,'Geno petriashvili','1994-04-01','Male','Georgia',125,9876504321,7);
insert into Athletes values(1009,'Saikhom mirabai chanu','1994-08-09','Female','India',49,9765432410,8);
insert into Athletes values(1010,'Tadej pogacar','1998-09-21','Male','Slovenia',66,9054367210,9);
insert into Athletes values(1011,'Stephanie labbe','1986-10-10','Female','Canada',63,6789054321,10);
insert into Athletes values(1012,'Damir mikec','1984-03-31','Male','Serbian',80,5432198760,1);
insert into Athletes values(1013,'Chen long','1989-01-18','Male','China',75,6789054321,2);
insert into Athletes values(1014,'Anthony sinisuka ginting','1996-10-20','Male','Indonesia',66,5432198760,2);
insert into Athletes values(1015,'Damian quintero','1984-07-04','Male','Spain',50,8765432100,4);
insert into Athletes values(1016,'Eumir marcial','1995-10-29','Male','Philippines',69,7890654321,3);
insert into Athletes values(1017,'Stoyka krasteva','1985-09-18','Female','Bulgarian',51,6789054321,3);
insert into Athletes values(1018,'Ryo kiyuna','1990-07-12','Male','Japan',78,4678905321,4);
insert into Athletes values(1019,'Kylie masse','1996-01-18','Female','Canada',61,4321567890,5);
insert into Athletes values(1020,'kaylee mckeown','2001-07-12','Female','Canada',60,3456789021,5);
insert into Athletes values(1021,'Fan zhendong','1997-01-22','Male','China',77,2456789013,6);
insert into Athletes values(1022,'Dimitrij ovtcharov','1988-09-02','Male','Germany',79,1234567890,6);
insert into Athletes values(1023,'Taha akgul','1990-11-22','Male','Turkiye',120,9806543219,7);
insert into Athletes values(1024,'Gable steveson','2000-05-31','Male','America',120,9876504321,7);
insert into Athletes values(1025,'Hou zhihui','1997-03-18','Female','China',49,7890654321,8);
insert into Athletes values(1026,'Windy cantika aisah','2002-06-11','Female','Indonesia',49,5678904321,8);
insert into Athletes values(1027,'Wout van aert','1994-09-15','Male','Belgium',78,8769054321,9);
insert into Athletes values(1028,'Richard carapaz','1993-05-29','Male','Ecuador',66,5432198760,9);
insert into Athletes values(1029,'Mikel merino','1996-06-22','Male','Spain',83,4567890321,10);
insert into Athletes values(1030,'Luis malagon','1997-03-02','Male','Mexico',78,3456789012,10);
select * from Athletes;
create table Medals(Medal_id int ,Medal_name varchar(10),constraint pk primary key(Medal_id));
insert into Medals values(1,'Gold'),(2,'Silver'),(3,'Bronze');
select * from Medals;
drop table Medals;
create table Events(Event_id int,Athlete_id int,Medal_id int,Event_place varchar(50),Event_date date,
constraint fKk foreign key(Medal_id) references Medals(Medal_id),constraint abc foreign key (Athlete_id) references Athletes(Athlete_id));
insert into Events values(201,1001,3,'Asaka shooting range in japan','2021-07-24'),(201,1002,1,'Asaka shooting range in japan','2021-07-24'),(201,1012,2,'Asaka shooting range in japan','2021-07-24');
insert into Events values(202,1003,1,'Musashino forest sport plaza','2021-07-24'),(202,1013,2,'Musashino forest sport plaza','2021-07-24'),(202,1014,3,'Musashino forest sport plaza','2021-07-24');
insert into Events values(203,1004,2,'Ryogoku kohugikan','2021-08-02'),(203,1016,3,'Ryogoku kohugikan','2021-08-02'),(203,1017,1,'Ryogoku kohugikan','2021-08-02');
insert into Events values(204,1005,3,'Nippon budokan','2021-08-05'),(204,1015,2,'Nippon budokan','2021-08-05'),(204,1018,1,'Nippon budokan','2021-08-05');
insert into Events values(205,1006,3,'Tokyo aquatics centre','2021-07-24'),(205,1019,2,'Tokyo aquatics centre','2021-07-24'),(205,1020,1,'Tokyo aquatics centre','2021-07-24');
insert into Events values(206,1007,1,'Tokyo metropolitan gymna','2021-07-24'),(206,1021,2,'Tokyo metropolitan gymna','2021-07-24'),(206,1022,3,'Tokyo metropolitan gymna','2021-07-24');
insert into Events values(207,1009,2,'Tokyo international forum','2021-07-24'),(207,1025,1,'Tokyo international forum','2021-07-24'),(207,1026,3,'Tokyo international forum','2021-07-24');
insert into Events values(208,1010,3,'Musashinonomori park','2021-07-24'),(208,1027,2,'Musashinonomori park','2021-07-24'),(208,1028,1,'Musashinonomori park','2021-07-24');
insert into Events values(209,1011,1,'Six stadiums across japan','2021-07-21'),(209,1029,2,'Six stadiums across japan','2021-07-21'),(209,1030,3,'Six stadiums across japan','2021-07-21');
insert into Events values(210,1008,2,'Makuhari messe','2021-08-01'),(210,1023,3,'Makuhari messe','2021-08-01'),(210,1024,1,'Makuhari messe','2021-08-01');
select * from Events;
drop table events;
## populate the number of athlets in each country
select athlete_country,count(athlete_id)as num_country from athletes group by athlete_country;
##which country has the highest number of athlets
select athlete_country from athletes group by athlete_country order by count(athlete_id) desc limit 1;
##display the athlets in the order of country and games
select athlete_country,game_id from athletes ;
###display all the athlets first 4 letters in upper case
select concat (upper(substr(athlete_name,1,4)),lower(substr(athlete_name,5))) from athletes;
### display all the athlete starting with "g"
select * from athletes where athlete_name like 'g%';
## reverse the athlete name
select reverse(athlete_name) from athletes;
## replace the 'winwin' 'w' by 'olympics'
select replace(athlete_name,"w","winwin") from athletes;
###give the difference between in and between 
select * from athletes where athlete_id in(1001,1002,1003,1004);
select * from athletes where athlete_id between 1001 AND 1010;
select athlete_name,athlete_country,game_name from athletes,games where athletes.game_id=games.game_id;
### give the name of the games for which the athlets are associated with?
select game_name,athlete_name from athletes,games where athletes.game_id=games.game_id;
select athlete_name,medal_name from athletes,medals where athletes.athlete_id=events.athlete_id;
select  a.athlete_name,a.athlete_id,e.athlete_id from athletes a left outer join Events e on a.athlete_id=e.athlete_id where e.athlete_id is null;
select a.athlete_name,g.game_name from games g left outer join athletes a on g.game_id=a.game_id where a.athlete_id is null;
select * from athletes a inner join games g
 inner join events e inner join medals m on a.game_id=g.game_id and a.athlete_id=e.athlete_id and m.medal_id=e.medal_id;
 select a.athlete_country,sum(case when medal_id=1 then 1 else 0 end) as gold,sum(case when medal_id=2 then 1 else 0 end) as silver,
 sum(case when medal_id=3 then 1 else 0 end) as bronze from  athletes a inner join Events e on a.athlete_id=e.athlete_id group by a.athlete_country;
 select distinct(athlete_country) from athletes;
 select athlete_country from athletes;
 select * from athletes where athlete_name is null;
 select * from athletes where athlete_name is not null;
 select * from athletes where game_id in (select game_id from games) ;
 select count(distinct(game_id)) from athletes;
 select  count( Athlete_country) from athletes group by Athlete_country;
 select athlete_name,Athlete_country,Game_id,rank() over ( partition by game_id order by Athlete_id ) from Athletes;
 select athlete_country,medal_name,game_name from athletes a inner join games g
 inner join events e inner join medals m where a.game_id=g.game_id and a.athlete_id=e.athlete_id and m.medal_id=e.medal_id and a.athlete_country="america";