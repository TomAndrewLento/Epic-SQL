
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- CREATE DATABASE
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if not exists(
    select * from sys.databases where name = 'mutual_aid'
)
create database mutual_aid

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Down Script
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if exists (
    select * 
    from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME = 
)

go 
drop table if exists mags
go 

go 
drop table if exists donations
go

go 
drop table if exists issues
go



-- CREATE ISSUES TABLE 
Create table issues (   
    issue_id int identity not null,  
    issues_issue char (50) not null  
    Constraint pk_issues_issues_id primary key (issue_id), 
) 

-- CREATE TABLE FOR DONATION
Create table donations (   
donation_id int not null, 
donation_mag_id int identity not null,  
donation_amount money not null, 
donation_date date null, 
Constraint pk_donations_donation_id primary key (donation_id), 
) 

-- CREATE TABLE MUTUAL AID GROUPS  (MAGS) 
Create table mags(  
mag_id int identity not null,  
mag _name varchar (100) not null,  
mag _email Varchar (50) not null,  
mag _website varchar (50) null ,  
mag _state char (2) not null,  
mag _zipcode char (5)  not null, 
mag_issue_id int not null, 
Constraint pk_mags_mag_id primary key (mag_id), 
Constraint u_mags_mag_email unique (mag_email) 
) 


-- -- ADD FK FOR DONATION 
Alter table donations ADD
constraint fk_donation_mag_id foreign key (donation_mag_id)
references mags(mag_id) 

-- up data
-- INSERT INTO ISSUES TABLE 
Insert into issues (issues_issue) values 
('food_security'), 
('environmental'), 
('housing_security'), 
('poverty'), 
('indigenous_rights'), 
('water_security'), 
('transportation'), 
('disaster_relief') 