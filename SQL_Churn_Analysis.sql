select*from stg_churn

--Data Exploration and identifying Null values
SELECT 
    Gender,
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Gender;


SELECT 
    COALESCE(Contract, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Contract WITH ROLLUP;

SELECT 
    Married,
    COUNT(Married) AS TotalCount,
    COUNT(Married) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Married;

SELECT 
    State,
    COUNT(State) AS TotalCount,
    COUNT(State) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn

GROUP BY 
    State
Order By Percentage desc;

SELECT 
    COALESCE(Value_Deal, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Value_Deal WITH ROLLUP;

SELECT 
    COALESCE(Phone_Service, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Phone_Service WITH ROLLUP;

SELECT 
    COALESCE(Multiple_Lines, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Multiple_Lines WITH ROLLUP;

SELECT 
    COALESCE(Internet_Service, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Internet_Service WITH ROLLUP;

SELECT 
    COALESCE(Internet_Type, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Internet_Type WITH ROLLUP;

SELECT 
    COALESCE(Online_Security, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Online_Security WITH ROLLUP;

SELECT 
    COALESCE(Online_Backup, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Online_Backup WITH ROLLUP;

SELECT 
    COALESCE(Device_Protection_Plan, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Device_Protection_Plan WITH ROLLUP;

SELECT 
    COALESCE(Premium_Support, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Premium_Support WITH ROLLUP;

SELECT 
    COALESCE(Streaming_TV, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Streaming_TV WITH ROLLUP;

SELECT 
    COALESCE(Streaming_Music, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Streaming_Music WITH ROLLUP;

SELECT 
    COALESCE(Streaming_Movies, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Streaming_Movies WITH ROLLUP;

SELECT 
    COALESCE(Unlimited_Data, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Unlimited_Data WITH ROLLUP;

SELECT 
    Paperless_Billing,
    COUNT(Paperless_Billing) AS TotalCount,
    COUNT(Paperless_Billing) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Paperless_Billing;

SELECT 
    COALESCE(Customer_Status, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Customer_Status WITH ROLLUP;

SELECT 
    COALESCE(Churn_Category, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Churn_Category WITH ROLLUP;

SELECT 
    COALESCE(Churn_Reason, 'Unknown') AS Total_Count,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM 
    stg_churn
GROUP BY 
    Churn_Reason WITH ROLLUP;

--Replacing Null Values a new table called prodChurn for correct Analysis

Select 
 Customer_ID,
 Gender,
 Age,
 Married,
 State,
 Number_of_Referrals,
 Tenure_in_Months,
 ISNULL(Value_Deal,'None') As Value_Deal,
 Phone_Service,
 ISNULL(Multiple_Lines,'No') As Multiple_Lines,
 Internet_Service,
 ISNULL(Internet_Type,'No') As Internet_Type,
 ISNULL(Online_Security,'No') As Online_Security,
 ISNULL(Online_Backup,'No') As Online_Backup,
 ISNULL(Device_Protection_Plan,'No') As Device_Protection_plan,
 ISNULL(Premium_Support,'None') As Premium_Support,
 ISNULL(Streaming_TV,'No') As Streaming_TV,
 ISNULL(Streaming_Movies,'None') As Streaming_Movies,
 ISNULL(Streaming_Music,'None') As Streaming_Music,
 ISNULL(Unlimited_Data,'None') As Unlimited_Data,
 Contract,
 Paperless_Billing,
 Payment_Method,
 Monthly_Charge,
 Total_Charges,
 Total_Refunds,
 Total_Extra_Data_Charges,
 Total_Long_Distance_Charges,
 Total_Revenue,
 Customer_Status,
 ISNULL(Churn_Category,'Others') As Churn_Category,
 ISNULL(Churn_Reason,'Others') As Churn_reason

INTO [db_churn].[dbo].[prod_churn]
from [db_churn].[dbo].[stg_churn]

--Creating views for churned customers and new customers who joined


-- Create a view for churned and stayed customers
CREATE VIEW vw_ChurnData AS
SELECT *
FROM prod_churn
WHERE Customer_Status IN ('Churned', 'Stayed');

GO

-- Create a view for joined customers
CREATE VIEW vw_JoinData AS
SELECT *
FROM prod_churn
WHERE Customer_Status = 'Joined';

GO






