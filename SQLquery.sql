Create Table Users
(
User_Id int primary key,
User_Type varchar(20),
Secretword varchar(20),
Register date ); 
insert into USERS(User_Id,User_Type,Secretword,register) values (101,'nurse','sheenim',to_date('16/05/2022'));
insert into USERS(User_Id,User_Type,Secretword,register) values (102,'attender','arivu',to_date('18/05/2022'));
desc users;

select * from users;
drop table users;
--------------------------------------------------------------------------------------------------------------------------------------------


Create Table Patient
(
Patient_Id int primary key not null,
First_name varchar(20) not null,
Last_name varchar(20) not null,
Gender varchar(20) not null,
Contact_No int not null,
DOB date not null,
Email varchar(200) not null unique,
BloodGroup varchar(15) not null,
Address varchar(255) not null ,
Staff_Id integer not null,
Observation date not null,
Report varchar(255) not null,
Prescription varchar(255) not null,
Fees float not null,
FoodMaintenance varchar(255) not null,
Revisit varchar(255) not null,
FOREIGN KEY(Staff_Id) References Staffs(Staff_Id) );
 
select * from patient;

DELETE FROM patient WHERE patient_id=302;

drop table Patient;

desc patient;
------------------------------------------------------------------------------------------------------------------------------------------------- 

Create Table Staffs
(
Staff_Id int primary key not null,
First_name varchar(20) not null,
Last_name varchar(20) not null, 
Gender varchar(20) not null,
Contact_No int not null,
DOB date not null,
Email varchar(255) not null unique,
Role varchar(20) not null,
Qualification varchar(255) not null,
Speciality varchar(255) not null,
Intime varchar(255) not null,
Outtime varchar(255) not null );
commit ;

drop table staffs;
desc staffs;

select * from staffs;


select sysdate from dual;
------------------------------------------------------------------------------------------------------------------------------------------------------


Create Table FeedBack
( 
Feedback_Id int not null,
Patient_Id int not null,
Staff_Id int not null,
OnRegisterFeedBack date not null,
Points varchar(45) not null,
Staff_nature varchar(20) not null,
Address_locate varchar(255) not null,
Patient_Comment varchar(255) not null,
FOREIGN KEY(Patient_Id) References Patient(Patient_Id),
FOREIGN KEY(Staff_Id) References Staffs(Staff_Id) );
select * from feedback;
desc feedback;
drop table feedback;
______________________________________________________________________________________________________________________________________________________________
