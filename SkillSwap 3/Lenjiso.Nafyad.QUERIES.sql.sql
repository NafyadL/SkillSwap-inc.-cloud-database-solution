-- Active: 1701284262287@@localhost@3306@skillswapdb


-- Advanced Queries using chapter 6

-- Display the Top 5 Recent Skill Requests:
SELECT sr.RequestID, sr.UserID, sr.SkillID, sr.requestDescription, sr.DateRequested
FROM SkillRequests sr
ORDER BY sr.DateRequested DESC
LIMIT 5;

-- Display Most Common Subscription Plan by Customers:
SELECT s.Tier, COUNT(*) AS NumberOfCustomers
FROM Subscriptions s
JOIN Customer c ON s.subsID = c.subsID
GROUP BY s.Tier
ORDER BY NumberOfCustomers DESC
LIMIT 1;

-- Display Customers with Payments Over $500:
SELECT c.UserID, c.Firstname, c.Lastname, p.Amount
FROM Customer c
INNER JOIN Payment p ON c.PaymentID = p.PaymentID
WHERE p.Amount > 500;

-- Display the Total Revenue Received from Organizations:
SELECT o.OrgName, SUM(r.Amount) AS TotalRevenue
FROM Organizations o
JOIN Revenue r ON O.PaymentID = r.PaymentID
GROUP BY o.OrgName;

-- Query to Display All Users with Their Last Skill Request Status:
SELECT 
    u.UserID,
    u.Firstname,
    u.Lastname,
    (SELECT sr.RequestStatus 
     FROM SkillRequests sr 
     WHERE sr.UserID = u.UserID 
     ORDER BY sr.DateRequested DESC LIMIT 1) AS LastRequestStatus
FROM Customer u;

-- Query to List Organizations with Their Most Popular Event Type Based on User Attendance:
SELECT 
    o.OrgName,
    (SELECT e.eventName 
     FROM Events e 
     JOIN CentralCalendar cc ON e.EventID = cc.EventID 
     WHERE cc.OrgID = o.OrgID 
     GROUP BY e.eventName 
     ORDER BY COUNT(cc.UserID) DESC LIMIT 1) AS MostPopularEvent
FROM Organizations o;




-- Query to Show Total Points Redeemed by Users Who Have Attended Specific Events:
SELECT 
    pr.ProgramName,
    AVG(r.Rating) AS AverageRating,
    COUNT(DISTINCT cc.UserID) AS TotalParticipants
FROM Programs pr
LEFT JOIN Reviews r ON pr.ReviewID = r.ReviewID
LEFT JOIN CentralCalendar cc ON pr.ProgramID = cc.ProgramID
GROUP BY pr.ProgramName;



-- Display all the Payments Made by a Specific User:
SELECT p.PaymentID, p.Amount, p.PaymentDate
FROM Payment p
JOIN Customer c ON p.PaymentID = c.PaymentID
WHERE c.UserID = 'USR122'; 

-- Display Most Common Subscription Plan by Organizations:
SELECT s.Tier, COUNT(*) AS NumberOfOrganizations
FROM Subscriptions s
JOIN Organizations o ON s.subsID = o.subsID
GROUP BY s.Tier
ORDER BY NumberOfOrganizations DESC
LIMIT 1;

-- Count the Number of Verified Users by event they attended
SELECT COUNT(DISTINCT v.UserID) AS VerifiedUsers
FROM Verification v
JOIN Customer c ON v.UserID = c.UserID;

-- Simple Queries based on chapter 5

-- Display the Top 5 Recent Skill Requests:
SELECT *
FROM SkillRequests
ORDER BY DateRequested DESC
LIMIT 5;

-- Retrieve the User ID, first name, and last name of all customers from the Customer table
SELECT 
    UserID, 
    Firstname, 
    Lastname 
FROM 
    Customer;



-- Count the Number of Verified Users:
SELECT COUNT(DISTINCT UserID) AS VerifiedUsersCount
FROM Verification;

-- Count of All Payments
SELECT COUNT(*) AS TotalPaymentsCount
FROM Payment;

-- Retrieve All Event Names
SELECT DISTINCT ProgramName
FROM Programs;


-- Count of Unique Payment Amounts

SELECT COUNT(DISTINCT Amount) AS UniquePaymentAmounts
FROM Payment;

-- Count of All Revenues
SELECT COUNT(*) AS TotalRevenueCount
FROM Revenue;

-- Retrieve All Program Names
SELECT DISTINCT ProgramName
FROM Programs;

-- Count of All Expenses
SELECT COUNT(*) AS TotalExpensesCount
FROM Expenses;

-- Retrieve All UserIDs from the Verification Table
SELECT DISTINCT UserID
FROM Verification;






