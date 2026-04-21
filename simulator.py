from faker import Faker
import mysql.connector
import random
import time
from datetime import datetime, timedelta
from dotenv import load_dotenv
import os

fake = Faker()

load_dotenv()

connector = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    port=int(os.getenv("DB_PORT")),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME"),
    auth_plugin="mysql_native_password"
)
cursor = connector.cursor()
print("connected successfully...")

blood_types = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-']
conditions = ['Diabetes', 'Hypertension', 'Asthma', 'Cancer', 'Arthritis', 'Stroke', 'Heart Failure', 'Kidney Disease']
admission_types = ['Emergency', 'Urgent', 'Elective']
payment_statuses = ['paid', 'pending', 'insurance']
genders = ['Male', 'Female']

def simulate_admission():
    # patient insert
    name = fake.name()
    age = random.randint(18, 85)
    gender = random.choice(genders)
    blood_type = random.choice(blood_types)
    phone = "0"+str(random.randint(1700000000, 1999999999))

    cursor.execute("""
        insert into Patients (full_name, age, gender, blood_type, phone_number)
        values (%s, %s, %s, %s, %s)
    """, (name, age, gender, blood_type, phone))

    patient_id = cursor.lastrowid

    # admission insert
    doctor_id = random.randint(1, 12)
    dept_id = random.randint(1, 8)
    condition = random.choice(conditions)
    admission_type = random.choice(admission_types)
    room = random.randint(100, 400)
    admitted = datetime.now()
    discharged = admitted + timedelta(days=random.randint(1, 14))

    cursor.execute("""
        insert into Admissions (patient_id, doctor_id, dept_id, medical_condition, admission_type, room_number, admitted_at, discharged_at)
        values (%s, %s, %s, %s, %s, %s, %s, %s)
    """, (patient_id, doctor_id, dept_id, condition, admission_type, room, admitted, discharged))

    admission_id = cursor.lastrowid

    # transaction insert
    billing = round(random.uniform(10000, 120000), 2)
    status = random.choice(payment_statuses)
    transaction_date = datetime.now()

    cursor.execute("""
        insert into Transactions (admission_id, patient_id, billing_amount, payment_status, transaction_date)
        values (%s, %s, %s, %s, %s)
    """, (admission_id, patient_id, billing, status, transaction_date))

    connector.commit()
    print(f"inserted: {name} | age: {age} | condition: {condition} | billing: {billing} | type: {admission_type}")

# main loop
while True:
    simulate_admission()
    time.sleep(5)