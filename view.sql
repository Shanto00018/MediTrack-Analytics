--- which doctor is handling the most patient
create view view_doctor_performance as
select
    d.full_name       as doctor_name,
    d.specialization  as specialization,
    dep.dept_name     as department,
    count(a.admission_id) as total_patients,
    sum(case when a.admission_type = 'Emergency' then 1 else 0 end) as emergency_count,
    round(avg(t.billing_amount), 2) as avg_billing,
    sum(t.billing_amount) as total_billing
from Doctors d
join Departments dep on d.dept_id = dep.dept_id
join Admissions a on d.doctor_id = a.doctor_id
join Transactions t on a.admission_id = t.admission_id
group by d.doctor_id, d.full_name, d.specialization, dep.dept_name;





-- which dept is maintaining how much patient
create view view_dept_occupancy as
select
    d.dept_name  as department,
    s.cnt        as total_patients
from Departments d
join (
    select count(*) as cnt, dept_id from Admissions group by dept_id
) s on d.dept_id = s.dept_id;




--monthly patient admission result
create view view_monthly_trends as
select
    year(admitted_at)  as year,
    month(admitted_at) as month,
    count(*)           as total_admissions
from Admissions
group by year(admitted_at), month(admitted_at);





-- problem wise cost
create view view_billing_analysis as
select
    a.medical_condition             as medical_condition,
    sum(t.billing_amount)/count(*)  as average_cost,
    max(t.billing_amount)           as highest_cost,
    sum(t.billing_amount)           as total_revenue
from Transactions t
join Admissions a on t.admission_id = a.admission_id
group by a.medical_condition;






-- total bill paid, pending...
create view view_payment_summary as
select
    payment_status       as payment_status,
    sum(billing_amount)  as total_amount
from Transactions
group by payment_status;





-- full admission details(
-- patient name, age, blood type, condition, doctor name, department, billing amount, payment status)
create view view_full_admission_details as
select
    p.full_name          as patient_name,
    p.age                as age,
    p.gender             as gender,
    p.blood_type         as blood_type,
    a.medical_condition  as medical_condition,
    d.dept_name          as department,
    dc.full_name         as doctor_name,
    t.billing_amount     as billing_amount,
    t.payment_status     as payment_status
from Patients p
join Admissions a  on p.patient_id = a.patient_id
join Departments d on a.dept_id = d.dept_id
join Transactions t on p.patient_id = t.patient_id
join Doctors dc on dc.doctor_id = a.doctor_id;





-- age grouping with admission type count and average revenue
create view view_patient_risk_profile as
select
    case
        when p.age between 0  and 12 then 'Child'
        when p.age between 13 and 18 then 'Teen'
        when p.age between 19 and 59 then 'Adult'
        else 'Senior'
    end                              as age_group,
    a.admission_type                 as admission_type,
    count(a.admission_type)          as total_admissions,
    avg(t.billing_amount)            as avg_billing
from Patients p
join Admissions a  on p.patient_id = a.patient_id
join Transactions t on p.patient_id = t.patient_id
group by age_group, a.admission_type;