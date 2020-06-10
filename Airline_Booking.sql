CREATE DATABASE Airline_Booking;
USE Airline_Booking;
create table Flight(
	flight_id int NOT NULL,
    airline_id int NOT NULL,
    airline_name varchar(50) NOT NULL,
	from_location varchar(20) NOT NULL,
	to_location varchar(20) NOT NULL,
    departure_time datetime NOT NULL,
    arrival_time datetime NOT NULL,
    Duration int NOT NULL,
    total_seats int NOT NULL,
	PRIMARY KEY (flight_id)
	);
	
	create table Flight_Details(
	flight_id int NOT null,
	flight_departure_date datetime NOT NULL,
	price int NOT NULL,
	available_seats int NOT NULL,
	FOREIGN KEY (flight_id) REFERENCES Flight(flight_id)
        );
        
    create table Passenger_Profile(
	profile_id int NOT null,
	First_name varchar(20) NOT NULL,
	Last_name varchar(20) NOT NULL,
    address varchar(50),
	Phone_number varchar(20),
    email_id varchar(50),
	PRIMARY KEY (profile_id)
);
  
    create table Credit_Card_Details(
	profile_id int NOT NULL,
	card_number varchar(50) NOT NULL,
	card_type varchar(20) NOT NULL,
	expiration_month int NOT NULL,
    expiration_year int NOT NULL,
	FOREIGN KEY(profile_id) REFERENCES Passenger_Profile(profile_id)
);

create table Ticket_Info(
	ticket_id int NOT NULL,
	profile_id int NOT NULL,
	flight_id int NOT NULL,
	flight_departure_date datetime NOT NULL,
	status_ varchar(20) NOT NULL,
	PRIMARY KEY (ticket_id),
	FOREIGN KEY (flight_id) REFERENCES Flight(flight_id),
    FOREIGN KEY (profile_id) REFERENCES Passenger_Profile (profile_id)

	);
insert into Flight values (1,1,'EgyptAir','Cairo','Dubai','2019-09-16 05:00:00','2019-09-16 10:00:00',5,530);
insert into Flight values (2,2,'All Nippon Airways','Tokyo','Washington','2019-10-22 06:00:00','2019-10-22 23:00:00',17,538);
insert into Flight values (3,3,'Air China','Beijing','Moscow','2019-02-12 07:00:00','2019-02-12 22:00:00',15,530);
insert into Flight values (4,4,'Emirates Airline','Paris','Dubai','2019-12-01 08:00:00','2019-12-01 14:00:00',6,615);
insert into Flight values (5,5,'Air France','Berlin','Paris','2019-08-28 09:00:00','2019-08-28 11:00:00',2,530);
insert into Flight values (6,6,'Alsie Express','Moscow','Copenhagen','2019-04-17 10:00:00','2019-04-17 17:00:00',7,538);
insert into Flight values (7,7,'EgyptAir','Cairo','Kuwait City','2019-12-16 11:00:00','2019-12-16 13:00:00',2,530);
insert into Flight values (8,8,'Aerolíneas Argentinas','santiago','buenos aires','2019-01-25 12:00:00','2019-01-25 14:00:00',2,538);
insert into Flight values (9,9,'Emirates Airline','Moscow','Dubai','2019-03-03 00:00:00','2019-03-03 14:00:00',14,615);
insert into Flight values (10,10,'Saudia','Dubai','riyadh','2019-01-24 04:00:00','2019-01-24 06:00:00',2,538);
insert into Flight values (11,11,'Eurowings','Vienna','Berlin','2019-09-16 5:00:00','2019-09-16 09:00:00',4,530);
insert into Flight values (12,12,'Air France','Paris','Cairo','2019-11-07 16:00:00','2019-11-07 20:00:00',4,530);
insert into Flight values (13,13,'American Airlines','Monte Carlo','Washington','2019-11-07 12:30:00','2019-11-07 22:30:00',10,538);
insert into Flight values (14,14,'Alsie Express','Copenhagen','Washington','2019-09-12 01:00:00','2019-09-12 13:00:00',12,530);
insert into Flight values (15,15,'Tunisair','Dubai','tunis','2019-03-26 03:00:00','2019-03-26 9:00:00',6,538);
insert into Flight values (16,16,'Royal Jordanian','Cairo','Amman','2019-10-11 20:00:00','2019-10-11 22:00:00',2,530);
insert into Flight values (17,17,'Libyan Airlines','Tripoli','Cairo','2019-12-03 21:00:00','2019-12-03 23:00:00',2,538);
insert into Flight values (18,18,'Etihad Airways','Tehran','Dubai','2019-01-24 04:00:00','2019-01-24 06:00:00',2,615);
insert into Flight values (19,19,'EgyptAir','Cairo','Dammam','2019-08-9 06:00:00','2019-08-9 08:00:00',2,530);


SELECT * FROM Flight;

insert into Flight_Details values(1,'2019-09-16 05:00:00',430,52);
insert into Flight_Details values(2,'2019-10-22 06:00:00',2250,10);
insert into Flight_Details values(3,'2019-02-12 07:00:00',2000,148);
insert into Flight_Details values(4,'2019-12-01 08:00:00',550,12);
insert into Flight_Details values(5,'2019-08-28 09:00:00',350,39);
insert into Flight_Details values(6,'2019-04-17 10:00:00',790,255);
insert into Flight_Details values(7,'2019-12-16 11:00:00',380,19);
insert into Flight_Details values(8,'2019-01-25 12:00:00',440,145);
insert into Flight_Details values(9,'2019-03-03 00:00:00',1600,15);
insert into Flight_Details values(10,'2019-01-24 04:00:00',420,17);
insert into Flight_Details values(11,'2019-09-16 05:00:00',600,36);
insert into Flight_Details values(12,'2019-11-07 16:00:00',350,98);
insert into Flight_Details values(13,'2019-09-12 12:30:00',1100,87);
insert into Flight_Details values(14,'2019-03-26 01:00:00',1500,69);
insert into Flight_Details values(15,'2019-10-11 09:00:00',750,18);
insert into Flight_Details values(16,'2019-09-09 22:00:00',250,21);
insert into Flight_Details values(17,'2019-12-03 23:00:00',150,17);
insert into Flight_Details values(18,'2019-01-24 04:00:00',350,222);
insert into Flight_Details values(19,'2019-08-09 08:00:00',300,189);


SELECT * FROM Flight_Details;

insert into Passenger_Profile values(1,'Ahmed','Mohamed','Cairo-Egypt','+20101023457','ahmedmohamed652@yahoo.com');
insert into Passenger_Profile values(2,'Yasser','Ali','Giza-Egypt','+201270845416','yasserali54@yahoo.com');
insert into Passenger_Profile values(3,'Mohamed','Tawfiq','Alexandria-Egypt','+201011677722','mohamedtawfiq698@yahoo.com');
insert into Passenger_Profile values(4,'Rashed','Khaled','Dubai-UAE','+971521234567','rashed47@yahoo.com');
insert into Passenger_Profile values(5,'Zein','Saad','Riyadh-Saudi Arabia','+966225411890','zeinsaad102@yahoo.com');
insert into Passenger_Profile values(6,'Fahd','Monzer','Dubai-UAE','+971521233589','fahad98@yahoo.com');
insert into Passenger_Profile values(7,'David','Robert','Berlin-Germany','+49221544789','davidrobert122@yahoo.com');
insert into Passenger_Profile values(8,'Karem','Hesham','Casablanca-Morocco','+212669852324','karemhesham227@yahoo.com');
insert into Passenger_Profile values(9,'Ragab','Nasr','Cairo-Egypt','+201273892833','ragabnasr151@yahoo.com');
insert into Passenger_Profile values(10,'Jhon','Alfred','Berlin-Germany','+49258569337','jhonalfred21@yahoo.com');
insert into Passenger_Profile values(11,'Martha','Albert','London-England','+44550225471','marthaalbert55@yahoo.com');
insert into Passenger_Profile values(12,'Jordi','Tiago','Madrid-Spain','+34225820142','jorditiago41@yahoo.com');
insert into Passenger_Profile values(13,'Mark','Hank','Sevilla-Spain','+34221593227','markhank17@yahoo.com');
insert into Passenger_Profile values(14,'Yara','Ashraf','Banha-Egypt','+201252455986','yaraashraf998@yahoo.com');
insert into Passenger_Profile values(15,'Zaki','Sami','Cairo-Egypt','+201112566941','zakisami58@yahoo.com');
insert into Passenger_Profile values(16,'Reda','Nagi','Rebat-Morocco','+212214588932','redanagi369@yahoo.com');
insert into Passenger_Profile values(17,'Stef','Roxi','Barcelona-Spain','+34558922014','stefroxi32@yahoo.com');
insert into Passenger_Profile values(18,'Leonardo','Giali','Rome-Italy','+39558963248','leonardogiali14@yahoo.com');
insert into Passenger_Profile values(19,'Samuel','Macron','Nice-France','+33(0)558964228','samuelmacron104@yahoo.com');



SELECT * FROM Passenger_Profile;

insert into Credit_Card_Details values(1,'6954263225704892-214','Visa',4,2022);
insert into Credit_Card_Details values(2,'5896554712036995-352','Visa',11,2020);
insert into Credit_Card_Details values(3,'2258974136995471-496','Visa',9,2021);
insert into Credit_Card_Details values(4,'8895614720365887-269','Visa',2,2023);
insert into Credit_Card_Details values(5,'4785216935478829-689','Visa',8,2021);
insert into Credit_Card_Details values(6,'7884159266587488-589','Visa',12,2022);
insert into Credit_Card_Details values(7,'4425116987036579-147','Visa',3,2021);
insert into Credit_Card_Details values(8,'9632585965587147-478','Visa',12,2020);
insert into Credit_Card_Details values(9,'2547899554782447-879','Visa',6,2024);
insert into Credit_Card_Details values(10,'2547854245693582-658','Visa',4,2023);
insert into Credit_Card_Details values(11,'2158963745895216-987','Visa',9,2021);
insert into Credit_Card_Details values(12,'8596321475587443-325','Visa',7,2022);
insert into Credit_Card_Details values(13,'6325478158962778-356','Visa',6,2022);
insert into Credit_Card_Details values(14,'4545996632587429-256','Visa',1,2021);
insert into Credit_Card_Details values(15,'9898962454514475-784','Visa',6,2020);
insert into Credit_Card_Details values(16,'2256669354789662-741','Visa',12,2023);
insert into Credit_Card_Details values(17,'8659932145987658-785','Visa',10,2022);
insert into Credit_Card_Details values(18,'6632547899214598-654','Visa',8,2024);
insert into Credit_Card_Details values(19,'8955471554417428-258','Visa',5,2023);



SELECT * FROM Credit_Card_Details;

insert into Ticket_Info values (1,1,1,'2019-09-16 05:00:00','Economic');
insert into Ticket_Info values (2,2,2,'2019-10-22 06:00:00','Business');
insert into Ticket_Info values (3,3,3,'2019-02-12 07:00:00','Business');
insert into Ticket_Info values (4,4,4,'2019-12-01 08:00:00','First Class');
insert into Ticket_Info values (5,5,5,'2019-08-28 09:00:00','Economic');
insert into Ticket_Info values (6,6,6,'2019-04-17 10:00:00','First Class');
insert into Ticket_Info values (7,7,7,'2019-12-16 11:00:00','Economic');
insert into Ticket_Info values (8,8,8,'2019-01-25 12:00:00','Economic');
insert into Ticket_Info values (9,9,9,'2019-03-03 00:00:00','Business');
insert into Ticket_Info values (10,10,10,'2019-01-24 06:00:00','Economic');
insert into Ticket_Info values (11,11,11,'2019-09-16 05:00:00','First Class');
insert into Ticket_Info values (12,12,12,'2019-11-07 16:00:00','Economic');
insert into Ticket_Info values (13,13,13,'2019-09-12 12:30:00','Business');
insert into Ticket_Info values (14,14,14,'2019-03-26 01:00:00','Business');
insert into Ticket_Info values (15,15,15,'2019-10-11 09:00:00','First Class');
insert into Ticket_Info values (16,16,16,'2019-09-09 22:00:00','Economic');
insert into Ticket_Info values (17,17,17,'2019-12-03 23:00:00','Economic');
insert into Ticket_Info values (18,18,18,'2019-01-24 06:00:00','First Class');
insert into Ticket_Info values (19,19,19,'2019-08-9 08:00:00','Economic');


SELECT * FROM Ticket_Info;

select  Duration  from  Flight;
select  from_location  from  Flight;
select  to_location  from  Flight;
select  total_seats  from  Flight;
select  flight_id,airline_id,airline_name  from  Flight;
select  flight_id,price  from  Flight_Details;
select  flight_id, flight_departure_date  from  Flight_Details;
select  flight_id, price  from  Flight_Details;
select  flight_id, available_seats  from  Flight_Details;
select  profile_id, First_name, Last_name  from  Passenger_Profile;
select  First_name, Last_name, address  from  Passenger_Profile;
select  First_name, email_id   from  Passenger_Profile;
select card_number, expiration_month , expiration_year   from  Credit_Card_Details;
select  card_number, card_type  from   Credit_Card_Details;
select ticket_id, status_ from Ticket_Info;



select * from Passenger_Profile where First_name like 'M%';
select * from  Flight  where Duration  > 3;
select * from  Flight_Details where available_seats> 50;
select  flight_id  from  Flight  where to_location= 'Dubai' AND Duration>5;
select  profile_id, flight_departure_date from Ticket_Info where status_= 'Economic';



select Count(*) from Credit_Card_Details where expiration_year=2022 or expiration_year=2020 group by expiration_year ;
select Count(*) from Flight_Details  where price>500;
         
         
         
select * from Passenger_Profile right join Ticket_Info on Ticket_Info.profile_id=Passenger_Profile. profile_id;
select * from Passenger_Profile left join Credit_Card_Details on Credit_Card_Details. profile_id=Passenger_Profile. profile_id;
select * from Flight inner join Flight_Details on Flight.flight_id=Flight_Details.flight_id;
select * from Ticket_Info full outer join Credit_Card_Details on Ticket_Info.profile_id= Credit_Card_Details.profile_id;
select * from Flight inner join Ticket_info on Ticket_info. flight_id= Flight.flight_id;
        
        
        
insert  into  Flight values (88,60,'Emirates Airline','Dubai','Cairo','2019-05-16 03:00:00','2019-05-16 08:00:00',5,615);
insert  into  Flight_Details values(88,'2019-02-14 19:00:00',750,19);
insert  into  Passenger_Profile values(65,'Rami','Adel','Cairo-Egypt','+201112555478','ramiadel478@yahoo.com');
Insert  into  Credit_Card_Details values(65,'6548771255996327-214','Visa',10,2022);
insert  into  Ticket_Info values (255,65,88,'2019-08-09 10:00:00','Business');
                                            
                                            
                                            
Update Flight set total_seats=538 where flight_id=4;
Update Passenger_Profile set First_name='Ahmed',Last_name='Khater'where profile_id=2;
Update Passenger_Profile set First_name='Saber' where Last_name='Monzer';
Update Flight_Details set available_seats = 2 where price = 2250;
Update Credit_Card_Details set expiration_month= 7, expiration_year=2022 where card_number='4785216935478829-689';



Delete from Ticket_Info where profile_id = 5;
Delete from Credit_Card_Details where profile_id =18;
Delete from Ticket_Info where flight_departure_date = '2019-04-17 10:00:00';
Delete from Credit_Card_Details where card_number ='9898962454514475-784';
Delete from Flight_Details where available_seats=69;
