CREATE DATABASE IF NOT EXISTS meditrack_db;
USE meditrack_db;

create Table Departments(
    dept_id INT    not null  auto_increment,
    dept_name varchar(100)  not null,
    floor_no INT  not null,
    
    primary key(dept_id)

);

create table Doctors(
    doctor_id  int auto_increment,
    full_name varchar(100) not null,
    dept_id int not null,
    specialization  varchar(100),
    phone_number varchar(15),
    
    primary key(doctor_id),
    foreign key(dept_id) references Departments(dept_id)
    
     
);

create table Patients(
    patient_id INT auto_increment,
    full_name varchar(100),
    age int,
    gender enum('Male','Female'),
    blood_type enum('A+','A-','B+','B-','O+','O-','AB+','AB-'),
    phone_number varchar(15),
    created_at timestamp default current_timestamp,
    primary key(patient_id)
    
);

create table Admissions(
    admission_id int auto_increment,
    patient_id int,
    doctor_id int,
    dept_id int,
    medical_condition varchar(100),
    admission_type enum('Emergency','Urgent','Elective'),
    room_number int,
    admitted_at datetime,
    discharged_at datetime,
    
    primary key(admission_id),
    foreign key(patient_id) references Patients(patient_id),
    foreign key(doctor_id) references Doctors(doctor_id),
    foreign key(dept_id) references Departments(dept_id)

);

create table Transactions(
    transaction_id int auto_increment,
    admission_id int,
    patient_id int,
    billing_amount decimal(10,2),
    payment_status enum('paid','pending','insurance'),
    transaction_date datetime,
    
    primary key(transaction_id),
    foreign key(admission_id) references Admissions(admission_id),
    foreign key(patient_id) references Patients(patient_id)

);
