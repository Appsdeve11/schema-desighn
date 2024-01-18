CREATE TABLE Doctor (
  doctor_id INT PRIMARY KEY,
  name VARCHAR(255),
  specialization VARCHAR(255),
 
);


CREATE TABLE Patient (
  patient_id INT PRIMARY KEY,
  name VARCHAR(255),
  date_of_birth DATE,
 
);


CREATE TABLE Visit (
  visit_id INT PRIMARY KEY,
  doctor_id INT,
  patient_id INT,
  visit_date DATE,
  diagnosis VARCHAR(255),
  
  FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),
  FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);