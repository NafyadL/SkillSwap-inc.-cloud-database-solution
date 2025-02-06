-- Active: 1701284262287@@localhost@3306@skillswapdb

CREATE DATABASE skillswapdb;

USE skillswapdb;


CREATE TABLE Payment (
    PaymentID VARCHAR(255) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentDate DATE  NOT NULL,
    CONSTRAINT Payment_PK PRIMARY KEY (PaymentID)
);

CREATE TABLE Subscriptions (
    subsID VARCHAR(255),
    Tier VARCHAR(255) NOT NULL,
    Pricing DECIMAL(10, 2) NOT NULL,
    PaymentID VARCHAR(225),
    CONSTRAINT Subscriptions_PK PRIMARY KEY (subsID),
    CONSTRAINT Subscriptions_FK1 FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

CREATE TABLE Customer (
    UserID VARCHAR(255),
    Firstname VARCHAR(255) NOT NULL,
    Lastname VARCHAR(225) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    subsID VARCHAR(225) NOT NULL,
    PaymentID VARCHAR(225),
    CONSTRAINT Customer_PK PRIMARY KEY (UserID),
    CONSTRAINT Customer_FK1 FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID),
    CONSTRAINT Customer_FK2 FOREIGN KEY (subsID) REFERENCES Subscriptions(subsID)  
);

CREATE TABLE Revenue (
    RevenueID VARCHAR(255) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    RevenueDate DATE NOT NULL,
    PaymentID VARCHAR(225),
    CONSTRAINT Revenue_PK PRIMARY KEY (RevenueID),
    CONSTRAINT Revenue_FK1 FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

CREATE TABLE Expenses (
    ExpenseID VARCHAR(255) NOT NULL,
    ExpAmount DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(255) NOT NULL,
    ExpDate DATE NOT NULL,
    RevenueID  VARCHAR(225),
    CONSTRAINT Expenses_PK PRIMARY KEY (ExpenseID),
    CONSTRAINT Expenses_FK1 FOREIGN KEY (RevenueID) REFERENCES Revenue(RevenueID)
);



CREATE TABLE Organizations (
    OrgID VARCHAR(255),
    OrgName VARCHAR(255) NOT NULL,
    ContactDetails VARCHAR(255) NOT NULL,
    PaymentID VARCHAR(225) NOT NULL,
    subsID VARCHAR(225) NOT NULL,
    CONSTRAINT Organizations_PK PRIMARY KEY (OrgID),
    CONSTRAINT Organizations_FK1 FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID),
    CONSTRAINT Organizations_FK2 FOREIGN KEY (subsID) REFERENCES Subscriptions(subsID)
);

CREATE TABLE Reviews (
    ReviewID VARCHAR(255) NOT NULL,
    UserID VARCHAR(255) REFERENCES Customer(UserID),
    Rating INT NOT NULL,
    Review TEXT,
    CONSTRAINT Ratings_PK PRIMARY KEY (ReviewID),
    CONSTRAINT Reviews_FK1 FOREIGN KEY (UserID) REFERENCES Customer(UserID)
);


CREATE TABLE Events (
    EventID VARCHAR(255) NOT NULL,
    eventName VARCHAR(255) NOT NULL,
    eventDate DATE NOT NULL,
    ReviewID VARCHAR(225),
    CONSTRAINT Events_PK PRIMARY KEY (EventID),
    CONSTRAINT Events_FK1 FOREIGN KEY (ReviewID) REFERENCES Reviews(ReviewID)
);

CREATE TABLE Verification (
    VerifID VARCHAR(255) NOT NULL,
    UserID VARCHAR(255) REFERENCES Customer(UserID),
    VerificationDate DATE NOT NULL,
    CONSTRAINT Verification_PK PRIMARY KEY (VerifID),
    CONSTRAINT Verification_FK1 FOREIGN KEY (UserID) REFERENCES Customer(UserID)
);
CREATE TABLE Skills (
    SkillID VARCHAR(255) NOT NULL,
    UserID VARCHAR(255),
    skilltype TEXT NOT NULL,
    CONSTRAINT Skills_PK PRIMARY KEY (SkillID),
    CONSTRAINT Skills_FK1 FOREIGN KEY (UserID) REFERENCES Customer(UserID)
);
CREATE TABLE Programs (
    ProgramID VARCHAR(255),
    programName VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    SkillID VARCHAR(225) NOT NULL,
    UserID VARCHAR(255),
    ReviewID VARCHAR(225),
    CONSTRAINT Programs_Pk PRIMARY KEY(ProgramID),
    CONSTRAINT Programs_FK1 FOREIGN KEY (SkillID) REFERENCES Skills(SkillID),
    CONSTRAINT Programs_FK2 FOREIGN KEY (UserID) REFERENCES Customer (UserID),
    CONSTRAINT Programs_FK3 FOREIGN KEY (ReviewID) REFERENCES Reviews(ReviewID)
    );

CREATE TABLE CentralCalendar (
    CalendarID VARCHAR(255) NOT NULL,
    EventID VARCHAR(255),
    ProgramID VARCHAR(255),
    UserID VARCHAR(255) NOT NULL,
    OrgID VARCHAR(225) NOT NULL,
    Calstatus TEXT NOT NULL,
    CONSTRAINT CentralCalander_PK PRIMARY KEY (CalendarID),
    CONSTRAINT CentralCalendar_FK1 FOREIGN KEY (EventID) REFERENCES Events(EventID),
    CONSTRAINT CentralCalendar_FK2 FOREIGN KEY (ProgramID) REFERENCES Programs(ProgramID),
    CONSTRAINT CentralCalendar_FK3 FOREIGN KEY (UserID) REFERENCES Customer(UserID),
    CONSTRAINT CentralCalendar_FK4 FOREIGN KEY (OrgID) REFERENCES Organizations(OrgID)
);





CREATE TABLE Listings (
    ListID VARCHAR(225) NOT NULL,
    UserID VARCHAR(225) NOT NULL,
    SkillID VARCHAR(225) NOT NULL,
    listDescription TEXT NOT NULL,
    listStatus VARCHAR(50) NOT NULL,
    DateListed DATE,
    CONSTRAINT Listings_PK PRIMARY KEY (ListID),
    CONSTRAINT Listings_FK1 FOREIGN KEY (UserID) REFERENCES Customer(UserID),
    CONSTRAINT Listings_FK2 FOREIGN KEY (SkillID) REFERENCES Skills(SkillID)
);
CREATE TABLE Points (
    PointsID VARCHAR(225) NOT NULL,
    UserID VARCHAR(225) NOT NULL,
    RemainingAmount INT NOT NULL,
    Dateredeemed DATE,
    CONSTRAINT Points_PK PRIMARY KEY (PointsID),
    CONSTRAINT Points_FK1 FOREIGN KEY (UserID) REFERENCES Customer(UserID)
);

CREATE TABLE Matching (
    MatchID VARCHAR(225) NOT NULL,
    UserID VARCHAR(225) NOT NULL,
    SkillID VARCHAR(225) NOT NULL,
    MatchStatus VARCHAR(50) NOT NULL,
    DateMatched DATE,
    CONSTRAINT Matching_PK PRIMARY KEY (MatchID),
    CONSTRAINT Matching_FK1 FOREIGN KEY (UserID) REFERENCES Customer(UserID),
    CONSTRAINT Matching_FK2 FOREIGN KEY (SkillID) REFERENCES Skills(SkillID)
);
CREATE TABLE SkillRequests (
    RequestID VARCHAR(225) NOT NULL,
    SkillID VARCHAR(225) NOT NULL,
    UserID VARCHAR(225) NOT NULL,
    requestStatus VARCHAR(50) NOT NULL,
    DateRequested DATE NOT NULL,
    requestDescription Text NOT NULL,
    CONSTRAINT SkillRequests_PK PRIMARY KEY (RequestID),
    CONSTRAINT SkillRequests_FK1 FOREIGN KEY (UserID) REFERENCES Customer(UserID),
    CONSTRAINT SkillRequests_FK2 FOREIGN KEY (SkillID) REFERENCES Skills(SkillID)
);


    

