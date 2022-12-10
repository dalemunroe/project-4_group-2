-- Drop table if exists
DROP TABLE ibm_employee_data;

-- This table will contain only unique values
CREATE TABLE ibm_employee_data (
	Age INT,
  	Attrition VARCHAR,
  	BusinessTravel VARCHAR,
	DailyRate INTEGER,	
	Department VARCHAR,
	DistanceFromHome INTEGER,
	Education INTEGER,
	EducationField VARCHAR,
	EmployeeCount INTEGER,
	EmployeeNumber TEXT PRIMARY KEY NOT NULL UNIQUE,
	EnvironmentSatisfaction INTEGER,
	Gender VARCHAR,
	HourlyRate INTEGER,
	JobInvolvement INTEGER,
	JobLevel INTEGER,
	JobRole VARCHAR,
	JobSatisfaction INTEGER,
	MaritalStatus VARCHAR,
	MonthlyIncome INTEGER,
	MonthlyRate INTEGER,
	NumCompaniesWorked INTEGER,
	Over18 VARCHAR,
	OverTime VARCHAR,
	PercentSalaryHike INTEGER,
	PerformanceRating INTEGER, 
	RelationshipSatisfaction INTEGER,
	StandardHours INTEGER,
	StockOptionLevel INTEGER,
	TotalWorkingYears INTEGER,
	TrainingTimesLastYear INTEGER,
	WorkLifeBalance INTEGER,
	YearsAtCompany INTEGER,
	YearsInCurrentRole INTEGER,
	YearsSinceLastPromotion INTEGER,
	YearsWithCurrManager INTEGER
);

SELECT * FROM ibm_employee_data



