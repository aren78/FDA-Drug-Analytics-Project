SHOW TABLES;
SELECT * FROM drug_data_set;
SELECT COUNT(*) AS total_drugs FROM drug_data_set;  #Total records (Total Drugs)

SELECT Labeler_Status, COUNT(*)  # Active and inactive
FROM drug_data_set
GROUP BY Labeler_Status;

SELECT Labeler_Name, COUNT(*) AS total  #Manufactures
FROM drug_data_set
GROUP BY Labeler_Name
ORDER BY total DESC;

SELECT Drug_category, COUNT(*) AS total #Drugs by Category (N/I/S type)
FROM drug_data_set
GROUP BY Drug_category; 


SELECT YEAR(FDA_Approval_date) AS year, COUNT(*) AS total   #Year-wise Approvals
FROM drug_data_set
GROUP BY YEAR(FDA_Approval_date)
ORDER BY year DESC;

