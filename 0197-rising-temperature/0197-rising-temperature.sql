/* Write your T-SQL query statement below */

SELECT 
    Today.id 
FROM 
    Weather AS Today
JOIN 
    Weather AS Yesterday
ON 
    Today.recordDate = DATEADD(DAY, 1, Yesterday.recordDate)
WHERE 
    Today.temperature > Yesterday.temperature;