INSERT INTO Departments (dept_name, floor_no) VALUES
('Cardiology', 2),
('Neurology', 3),
('Oncology', 4),
('Orthopedics', 2),
('General Medicine', 1),
('Pediatrics', 1),
('Emergency', 0),
('Nephrology', 3);



INSERT INTO Doctors (full_name, dept_id, specialization, phone_number) VALUES
('Dr. Ahmed Reza', 1, 'Interventional Cardiology', '01711234567'),
('Dr. Nusrat Jahan', 1, 'Cardiac Electrophysiology', '01719876543'),
('Dr. Kamal Hossain', 2, 'Stroke & Cerebrovascular', '01812345678'),
('Dr. Farzana Islam', 2, 'Epilepsy & Seizure Disorders', '01898765432'),
('Dr. Tariq Mahmud', 3, 'Medical Oncology', '01612345678'),
('Dr. Shamima Akter', 3, 'Radiation Oncology', '01698765432'),
('Dr. Rafiq Uddin', 4, 'Joint Replacement Surgery', '01512345678'),
('Dr. Nasrin Sultana', 5, 'Internal Medicine', '01598765432'),
('Dr. Imran Chowdhury', 6, 'Neonatal Pediatrics', '01312345678'),
('Dr. Sabrina Haque', 7, 'Emergency Medicine', '01398765432'),
('Dr. Mizanur Rahman', 8, 'Renal Transplant', '01412345678'),
('Dr. Tania Begum', 5, 'General Practice', '01498765432');



INSERT INTO Patients (full_name, age, gender, blood_type, phone_number) VALUES
('Mohammad Alim', 45, 'Male', 'A+', '01711111111'),
('Fatema Khatun', 32, 'Female', 'B+', '01722222222'),
('Rahim Uddin', 67, 'Male', 'O+', '01733333333'),
('Sumaiya Akter', 28, 'Female', 'AB+', '01744444444'),
('Jahangir Alam', 55, 'Male', 'A-', '01755555555'),
('Roksana Begum', 41, 'Female', 'B-', '01766666666'),
('Nur Mohammad', 72, 'Male', 'O-', '01777777777'),
('Sharmin Islam', 19, 'Female', 'A+', '01788888888'),
('Karim Sheikh', 60, 'Male', 'B+', '01799999999'),
('Nasima Parvin', 35, 'Female', 'O+', '01700000000'),
('Abul Kashem', 50, 'Male', 'AB-', '01811111111'),
('Dilruba Yasmin', 44, 'Female', 'A+', '01822222222'),
('Shafiqul Islam', 38, 'Male', 'B+', '01833333333'),
('Moriam Begum', 62, 'Female', 'O+', '01844444444'),
('Rezaul Karim', 29, 'Male', 'A-', '01855555555'),
('Taslima Khanam', 48, 'Female', 'B+', '01866666666'),
('Habibur Rahman', 71, 'Male', 'O+', '01877777777'),
('Nargis Akter', 33, 'Female', 'AB+', '01888888888'),
('Sirajul Haque', 56, 'Male', 'A+', '01899999999'),
('Kamrun Nahar', 25, 'Female', 'B-', '01800000000');



INSERT INTO Admissions (patient_id, doctor_id, dept_id, medical_condition, admission_type, room_number, admitted_at, discharged_at) VALUES
(1, 1, 1, 'Heart Failure', 'Emergency', 201, '2024-01-05 08:30:00', '2024-01-12 10:00:00'),
(2, 4, 2, 'Epilepsy', 'Urgent', 301, '2024-01-07 14:00:00', '2024-01-11 09:00:00'),
(3, 5, 3, 'Lung Cancer', 'Elective', 401, '2024-01-10 09:00:00', '2024-01-20 11:00:00'),
(4, 7, 4, 'Knee Replacement', 'Elective', 202, '2024-01-15 07:30:00', '2024-01-22 08:00:00'),
(5, 1, 1, 'Coronary Artery Disease', 'Urgent', 203, '2024-01-18 11:00:00', '2024-01-25 10:00:00'),
(6, 10, 7, 'Appendicitis', 'Emergency', 101, '2024-01-20 02:15:00', '2024-01-24 09:00:00'),
(7, 3, 2, 'Stroke', 'Emergency', 302, '2024-01-22 06:45:00', '2024-02-01 10:00:00'),
(8, 9, 6, 'Pneumonia', 'Urgent', 102, '2024-01-25 13:00:00', '2024-01-30 11:00:00'),
(9, 11, 8, 'Chronic Kidney Disease', 'Elective', 303, '2024-02-01 09:00:00', '2024-02-08 10:00:00'),
(10, 8, 5, 'Diabetes Type 2', 'Elective', 103, '2024-02-03 10:30:00', '2024-02-07 09:00:00'),
(11, 2, 1, 'Arrhythmia', 'Urgent', 204, '2024-02-05 15:00:00', '2024-02-10 11:00:00'),
(12, 6, 3, 'Breast Cancer', 'Elective', 402, '2024-02-08 08:00:00', '2024-02-18 10:00:00'),
(13, 7, 4, 'Spine Surgery', 'Elective', 205, '2024-02-10 07:00:00', '2024-02-17 09:00:00'),
(14, 3, 2, 'Migraine', 'Urgent', 304, '2024-02-12 16:00:00', '2024-02-15 10:00:00'),
(15, 10, 7, 'Road Accident Trauma', 'Emergency', 104, '2024-02-14 23:30:00', '2024-02-20 11:00:00'),
(16, 8, 5, 'Hypertension', 'Elective', 105, '2024-02-18 09:30:00', '2024-02-22 10:00:00'),
(17, 11, 8, 'Renal Failure', 'Emergency', 305, '2024-02-20 04:00:00', '2024-03-01 09:00:00'),
(18, 4, 2, 'Parkinson Disease', 'Elective', 306, '2024-02-22 10:00:00', '2024-03-01 11:00:00'),
(19, 1, 1, 'Heart Attack', 'Emergency', 206, '2024-02-25 03:30:00', '2024-03-04 10:00:00'),
(20, 12, 5, 'Typhoid Fever', 'Urgent', 106, '2024-02-27 12:00:00', '2024-03-03 09:00:00');



INSERT INTO Transactions (admission_id, patient_id, billing_amount, payment_status, transaction_date) VALUES
(1, 1, 45000.00, 'paid', '2024-01-12 11:00:00'),
(2, 2, 28000.00, 'insurance', '2024-01-11 10:00:00'),
(3, 3, 72000.00, 'pending', '2024-01-20 12:00:00'),
(4, 4, 95000.00, 'paid', '2024-01-22 09:00:00'),
(5, 5, 38000.00, 'insurance', '2024-01-25 11:00:00'),
(6, 6, 32000.00, 'paid', '2024-01-24 10:00:00'),
(7, 7, 85000.00, 'pending', '2024-02-01 11:00:00'),
(8, 8, 22000.00, 'paid', '2024-01-30 12:00:00'),
(9, 9, 41000.00, 'insurance', '2024-02-08 11:00:00'),
(10, 10, 18000.00, 'paid', '2024-02-07 10:00:00'),
(11, 11, 35000.00, 'paid', '2024-02-10 12:00:00'),
(12, 12, 110000.00, 'insurance', '2024-02-18 11:00:00'),
(13, 13, 88000.00, 'paid', '2024-02-17 10:00:00'),
(14, 14, 15000.00, 'paid', '2024-02-15 11:00:00'),
(15, 15, 52000.00, 'insurance', '2024-02-20 12:00:00'),
(16, 16, 12000.00, 'paid', '2024-02-22 11:00:00'),
(17, 17, 78000.00, 'pending', '2024-03-01 10:00:00'),
(18, 18, 42000.00, 'insurance', '2024-03-01 12:00:00'),
(19, 19, 65000.00, 'paid', '2024-03-04 11:00:00'),
(20, 20, 19000.00, 'paid', '2024-03-03 10:00:00');




