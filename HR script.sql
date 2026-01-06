USE hr;

#1 What is the overrall employee attrition rate.
SELECT ROUND (100*SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END ) / COUNT(*),2) AS attrition_rate FROM HR GROUP BY Department;

#2 How does attrition vary across departments.
SELECT Department, COUNT(*) AS total_employee, ROUND (100*SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END ) / COUNT(*),2) AS attrition_rate FROM HR GROUP BY Department;

#3 Which job roles have the highest attrition.
SELECT JobRole, COUNT(*) AS Attrition FROM hr WHERE Attrition = 'YES' GROUP BY JobRole ORDER BY Attrition DESC;
USE hr;
SET SQL_SAFE_UPDATES = 1;
ALTER TABLE HR CHANGE COLUMN ï»¿Age ï»¿Age INT;
SET SQL_SAFE_UPDATES = 0;
#4 How does attrition change across different attritiom.
SELECT CASE WHEN Age < 30 THEN "UNDER 30" WHEN Age BETWEEN 30 AND 40 THEN "30_40" WHEN Age BETWEEN 41 and 50 THEN "41-50" ELSE "50+" END AS Age_group , SUM(Attrition ="Yes") AS attrition FROM HR GROUP BY Age_group;


#4 How does attrition change across different age groups
SELECT CASE WHEN ï»¿Age < 30 THEN "Under 30" WHEN ï»¿Age BETWEEN 30 AND 40 THEN "30-40" WHEN  ï»¿Age BETWEEN 41 AND 50 THEN "41-50" ELSE "50+" END AS age_group , SUM(Attrition = "Yes") As attrition FROM HR GROUP BY ï»¿Age;

#5 Is there a difference in attrition between male and female employee.
SELECT Gender, COUNT(*) AS total_employee, ROUND ( 100* SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END )/ COUNT(*),2) AS attrition_rate FROM HR GROUP BY Gender;

#6 How does job satisfaction impact employee attrition
SELECT JobSatisfaction, COUNT(*) AS employees_left FROM hr WHERE attrition = 'Yes' GROUP BY JobSatisfaction ORDER BY employees_left DESC;
USE hr;

#7 Whatis the relationship between work_life balance and attrition.
SELECT WorkLifeBalance, COUNT(*) AS employees_left FROM hr WHERE attrition = 'Yes' GROUP BY  WorkLifeBalance ORDER BY employees_left DESC;
USE hr;
#8 Does enviroment satisfaction influence attrition rate
SELECT EnvironmentSatisfaction, COUNT(*) AS Total_employees, SUM(attrition = 'Yes') AS attrition_count FROM hr GROUP BY EnvironmentSatisfaction;

#9 How does job involvement affect employee attrition.
SELECT JobInvolvement , COUNT(*) AS total_employees, SUM(attrition = 'Yes') AS attrition_count FROM hr GROUP BY JobInvolvement ORDER BY JobInvolvement;

#10 Which satisfaction factor has the strogest correlation with attrition.


#11 Is there a significant difference in average monthly income between attrition and non-attrition employees.
SELECT attrition, ROUND(AVG(MonthlyIncome),2 ) AS avg_MonthlyIncome FROM hr GROUP BY attrition;
USE hr;
#12 HOW does education level impact attrition and average income.
SELECT Education, ROUND(AVG(MonthlyIncome),2) AS avg_income , SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count FROM hr GROUP BY Education;

#13 Are high_performing employees more likely to leave the organization.
SELECT PerformanceRating, COUNT(*) AS total_employees, SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END ) AS attrition_count FROM hr GROUP BY PerformanceRating;

#14 How does years at company influence attrition tread.
SELECT YearsAtCompany, COUNT(*) AS TotalEmployees, AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 AS AttritionRate FROM hr GROUP BY YearsAtCompany ORDER BY YearsAtCompany;
USE hr;
#15 Does time since last promotion affect attrition.
SELECT Attrition, AVG(YearsSinceLastPromotion) AS YearsSinceLastPromotion, COUNT(*) AS EmployeeCount FROM hr GROUP BY Attrition;
USE hr;
#16 How does distance from home impact attrition across job role.
SELECT JobRole,Attrition, ROUND(AVG(DistanceFromHome), 2) AS AvgDistanceFromHome, COUNT(*) AS EmployeeCount FROM hr GROUP BY JobRole, Attrition ORDER BY JobRole, Attrition;

#17 Which job roles experience high attrition despite higher salary.
SELECT jobrole FROM hr WHERE attrition = 'Yes' GROUP BY jobrole HAVING AVG(monthlyincome) > (SELECT AVG(monthlyincome) FROM hr); 

#18 Does overtime work increase the likelihood of attrition.
SELECT OverTime FROM hr GROUP BY OverTime HAVING AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) > (SELECT AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) FROM hr);

#19 What combination of factors leads to the highest attrition risks.

#20 Who are the top high_risk employee most likely ti leave the oraganization.
SELECT EmployeeNumber, JobRole, MonthlyIncome, OverTime, JobSatisfaction
FROM hr
WHERE attrition = 'Yes'
  AND overtime = 'Yes'
  AND jobsatisfaction <= 2
  AND monthlyincome < (SELECT AVG(monthlyincome) FROM hr);
