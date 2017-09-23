select distinct
emp.campus_id,
camp.campus,
dept.department_name,
emp.staff,
emp.fix,
sum(Ded.House_Rent_1),
sum(Ded.House_Rent_2),
sum(Ded.Electric_Charges_1),
sum(Ded.Electric_Charges_2),
sum(Ded.SuiGas_Charges),
sum(Ded.Water_Tax1_Charges),
sum(Ded.Water_Tax2_Charges),
sum(Ded.Endovement_Fund),
sum(Ded.B_Fund),
sum(Ded.House_Build_Loan),
sum(Ded.Convence_Loan),
sum(Ded.GP_Fund_Regular),
sum(Ded.GP_Fund_Advence),
sum(Ded.Eid_Advance),
sum(Ded.Union_Fund_1),
sum(Ded.Union_Fund_2),
sum(Ded.Vehicle_Charges_Other),
sum(Ded.Vehicle_Charges_Teacher),
sum(Ded.Upkeep_Ded),
sum(Ded.R_Leave_Without_Pay),
sum(Ded.Recovery_Gap_CA),
sum(Ded.Income_Tax),
sum(Ded.Group_Insurance),
sum(Ded.Other),
sum(net.totalDeduction),
sum(net.Net_Salary)
from deduction Ded, employee emp, employee_nebqasid empneb, department dept, campus camp, netsalary net
where emp.employee_code=empneb.employee_code AND ded.employee_code=emp.employee_code and empneb.department_id=dept.department_id
and camp.campus_id=emp.campus_id and emp.employee_code=net.employee_code
group by dept.department_id