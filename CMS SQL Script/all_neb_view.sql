SELECT DISTINCT
Emp.Employee_Code,
Emp.Employee_Name, 
Emp.Account,
Emp.BPS,
Emp.Fix,
Desig.Designation,
Dept.Department_Name,
Allow.Basic_Pay,
Allow.Fixed_Pay,
Allow.Personal_Pay,
Allow.Hreant1_All,
Allow.Hrent_Sub_All,
Allow.Convence_All,
Allow.Adhoc_Rel_2010,
Allow.Computer_All,
Allow.Private_All,
Allow.Extra_All,
Allow.Senior_p_All,
Allow.Med_All,
Allow.ENT_All,
Allow.Dean_All,
Allow.intgrated_All,
Allow.Spec_Add_All,
Allow.Teach_All,
Allow.Orderly_All,
Allow.Oth_All,
Allow.Brain_Drain,
Allow.ARA_2016_10PERCENT,
Net.Gross_Pay
FROM Employee Emp, employee_nebqasid EmpNeb, Designation Desig, Allowance Allow, netsalary Net, department Dept
WHERE Emp.Designation_ID=Desig.Designation_ID AND Emp.Employee_Code=Net.Employee_Code AND Emp.Employee_Code=Allow.Employee_Code 
AND Emp.Employee_Code=EmpNeb.Employee_Code AND EmpNeb.Department_ID=Dept.Department_ID