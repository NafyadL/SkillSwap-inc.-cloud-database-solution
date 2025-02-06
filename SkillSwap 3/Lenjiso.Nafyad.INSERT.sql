-- Active: 1701284262287@@localhost@3306@skillswapdb


USE skillswapdb;
INSERT INTO Payment (PaymentID, Amount, PaymentDate)
VALUES
('PMT01', 200.50, '2023-07-18'),
('PMT02', 1200.75, '2023-09-02'),
('PMT03', 300.90, '2023-12-15'),
('PMT04', 750.30, '2023-06-10'),
('PMT05', 100.40, '2023-08-28'),
('PMT06', 450.90, '2023-11-05'),
('PMT07', 800.50, '2023-07-25'),
('PMT08', 345.80, '2023-10-12'),
('PMT09', 600.00, '2023-09-30'),
('PMT10', 1100.60, '2023-05-20'),
('PMT11', 200.67, '2023-04-08'),
('PMT12', 700.12, '2023-02-15'),
('PMT13', 550.30, '2023-03-21'),
('PMT014', 950.00, '2023-11-30'),
('PMT15', 800.45, '2023-10-19'),
('PMT16', 567.89, '2023-08-02'),
('PMT17', 200.67, '2023-01-25'),
('PMT18', 400.90, '2023-06-15'),
('PMT19', 875.65, '2023-09-05'),
('PMT20', 320.12, '2023-04-27'),
('PMT21', 600.00, '2023-11-01'),
('PMT22', 150.45, '2023-05-14'),
('PMT23', 250.30, '2023-02-08'),
('PMT24', 130.75, '2023-09-16'),
('PMT25', 970.25, '2023-12-10'),
('PMT26', 500.50, '2023-07-08'),
('PMT027', 400.80, '2023-08-25'),
('PMT28', 900.90, '2023-01-20'),
('PMT29', 1200.60, '2023-03-05'),
('PMT30', 890.30, '2023-06-25'),
('PMT31', 600.00, '2023-09-12'),
('PMT32', 420.67, '2023-11-18'),
('PMT33', 780.90, '2023-02-28'),
('PMT34', 300.45, '2023-05-22'),
('PMT35', 670.80, '2023-10-08'),
('PMT36', 850.00, '2023-04-15'),
('PMT37', 230.60, '2023-12-05'),
('PMT38', 750.00, '2023-08-21'),
('PMT39', 920.00, '2023-01-15'),
('PMT40', 450.00, '2023-07-01'),
('PMT41', 578.50, '2023-01-01'),
('PMT42', 897.00, '2023-02-01'),
('PMT43', 7875.40, '2023-03-01'),
('PMT44', 564.00, '2023-04-01'),
('PMT45', 989.66, '2023-05-01'),
('PMT46', 800.03, '2023-06-01'),
('PMT47', 670.00, '2023-07-01'),
('PMT48', 453.08, '2023-08-01'),
('PMT49', 986.10, '2023-09-01'),
('PMT50', 10.04, '2023-10-01'),
('PMT51', 45.00, '2023-11-01'),
('PMT52', 231.00, '2023-12-01'),
('PMT53', 560.09, '2023-01-02');

INSERT INTO Revenue (RevenueID, Amount, RevenueDate, PaymentID)
VALUES
('REV086', 30.50, '2023-10-04', NULL),
('REV080', 53.00, '2023-11-15', NULL),
('REV905', 800.90, '2023-12-26', NULL),
('REV008', 70.00, '2023-09-23', NULL),
('REV306', 5049.80, '2023-08-19', NULL),
('REV190', 2000.89, '2023-08-27', NULL),
('REV880', 6950.70, '2023-08-15', NULL),
('REV197', 8900.70, '2023-09-11', NULL),
('REV049', 6009.00, '2023-12-14', NULL),
('REV600', 1027.70, '2023-10-03', NULL),
('REV777', 454.97, '2023-12-09', NULL),
('REV101', 780.00, '2023-07-20', NULL),
('REV112', 800.00, '2023-06-18', NULL),
('REV379', 475.60, '2023-01-05', NULL),
('REV153', 556.80, '2023-02-05', NULL),
('REV366', 800.00, '2023-08-08', NULL),
('REV121', 1034.25, '2023-03-08', NULL),
('REV232', 2110.90, '2023-05-08', NULL),
('REV565', 633.00, '2023-06-09', NULL),
('REV778', 440.20, '2023-11-23', NULL),
('REV003', 45.09, '2023-11-12', NULL),
('REV059', 500.50, '2023-01-09', NULL),
('REV123', 45.60, '2023-07-18', NULL),
('REV456', 890.20, '2023-09-02', NULL),
('REV789', 120.75, '2023-12-15', NULL);

INSERT INTO Expenses (ExpenseID, ExpAmount, Category, ExpDate, RevenueID)
VALUES
('EXP001', 295.43, 'Travel', '2023-10-10', 'REV086'),
('EXP002', 105.90, 'Meals', '2023-11-20', 'REV080'),
('EXP003', 4321.09, 'Supplies', '2023-12-31', 'REV905'),
('EXP004', 203.41, 'Equipment Rental', '2023-09-28', 'REV008'),
('EXP005', 345.00, 'Software', '2023-08-13', 'REV306'),
('EXP006', 453.40, 'Meals', '2023-10-10', 'REV190'),
('EXP007', 566.84, 'Travel', '2023-10-10', 'REV880'),
('EXP008', 542.39, 'Travel', '2023-10-10', 'REV197'),
('EXP009', 421.22, 'Operating Expenses', '2023-10-10', NULL),
('EXP010', 443.44, 'Operating Expenses', '2023-10-10', 'REV600'),
('EXP011', 555.90, 'Cyber Security', '2023-10-10', 'REV777'),
('EXP012', 999.01, 'Travel', '2023-10-10', 'REV101'),
('EXP013', 123.00, 'Social Media Marketing', '2023-10-10', 'REV112'),
('EXP014', 345.44, 'Transaction Fees', '2023-10-10', 'REV379'),
('EXP015', 987.10, 'Travel', '2023-10-10', 'REV153'),
('EXP016', 1000.00, 'Salary', '2023-10-10', 'REV366'),
('EXP017', 4000.11, 'Marketing', '2023-10-10', 'REV121'),
('EXP018', 532.20, 'Travel', '2023-10-10', 'REV232'),
('EXP019', 3000.31, 'Rent', '2023-01-10', 'REV565'),
('EXP020', 642.32, 'Office Expenses', '2023-10-10', 'REV778');

INSERT INTO Subscriptions (subsID, PaymentID, Tier, Pricing )
VALUES
('SUB102', 'PMT047', 'Basic', 5.00),
('SUB64', 'PMT048', 'Premium', 10.00),
('SUB97', 'PMT049', 'Basic', 5.00),
('SUB56', 'PMT050', 'Basic', 5.00),
('SUB35', 'PMT051', 'Free', 0.00),
('SUBS43', 'PMT061', 'Basic', 5.00),
('SUBS32', 'PMT071', 'Basic', 5.00),
('SUBS78', 'PMT081', 'Premium', 10.00),
('SUBS87', 'PMT091', 'Premium', 10.00),
('SUBS56', 'PMT0100', 'Free', 0.00),
('SUBS09', 'PMT0110', 'Basic', 5.00),
('SUBS92', 'PMT0120', 'Premium', 10.00),
('SUBS506', 'PMT0130', 'Free', 0.00),
('SUBS34', 'PMT0140', 'Free', 0.00),
('SUBS07', 'PMT0150', 'Free', 0.00),
('SUBS90', 'PMT0160', 'Premium',10.00),
('SUBS10', 'PMT0170', 'Premium', 10.00),
('SUBS00', 'PMT0180', 'Free', 0.00),
('SUBS75', 'PMT4430', 'Basic', 5.00),
('SUBS65', 'PMT0200', 'Free', 0.00),
('SUB190', 'PMT0210', 'Basic', 5.00),
('SUB179', 'PMT0230', 'Premium', 10.00),
('SUB00', 'PMT0240', 'Premium', 10.00),
('SUB079', 'PMT0250', 'Basic', 5.00),
('SUB979', 'PMT0260', 'Basic', 5.00),
('SUB109', 'PMT0270', 'Basic', 5.00),
('SUB19', 'PMT0280', 'Premium', 10.00),
('SUB15', 'PMT9990', 'Premium', 10.00),
('SUB187', 'PMT0300', 'Premium', 10.00),
('SUB130', 'PMT0310', 'Basic', 5.00),
('SUB100', 'PMT0320', 'Premium', 10.00),
('SUB66', 'PMT0450', 'Basic', 5.00),
('SUB399', 'PMT0340', 'Basic', 5.00),
('SUB88', 'PMT0350', 'Basic', 5.00),
('SUB98', 'PMT0360', 'Premium', 10.00),
('SUB134', 'PMT0370', 'Basic', 5.00),
('SUB565', 'PMT0380', 'Premium', 10.00),
('SUB776', 'PMT0390', 'Basic', 5.00),
('SUB964', 'PMT0400', 'Premium', 10.00),
('SUB044', 'PMT0410', 'Premium', 10.00);


INSERT INTO Customer (UserID, Firstname, Lastname, Email, subsID, PaymentID)
VALUES
('USR122', 'John', 'Bunyan', 'johnbunyan@aol.com', 'SUB122', 'PMT047'),
('USR674', 'Jack', 'Black', 'jackblack@aol.com', 'SUB674', 'PMT048'),
('USR987', 'Peter', 'Pan', 'peterpan@gmail.com', 'SUB987', 'PMT049'),
('USR456', 'Mary', 'Smith', 'marysmith@gmail.com', 'SUB456', 'PMT050'),
('USR135', 'David', 'Williams', 'davidwilliams@yahoo.com', 'SUB135', 'PMT051'),
('USR243', 'Liam', 'Hemsworth', 'liamhemsworth@gmail.com', 'SUBS243', 'PMT061'),
('USR332', 'Kim', 'West', 'kimwest@gmail.com', 'SUBS332', 'PMT071'),
('USR278', 'Cardi', 'Belcalis', 'cardiB@gmail.com', 'SUBS278', 'PMT081'),
('USR787', 'John', 'Cena', 'johncena@gmail.com', 'SUBS787', 'PMT091'),
('USR556', 'Lily', 'Collins', 'lilycollins@yahoo.com', 'SUBS556', 'PMT0100'),
('USR909', 'Raya', 'Johnson', 'rayajohnson@gmail.com', 'SUBS909', 'PMT0110'),
('USR092', 'Salma', 'Hayek', 'salmahayek@gmail.com', 'SUBS092', 'PMT0120'),
('USR256', 'Cameron', 'Diaz', 'camdiaz@gmail.com', 'SUBS256', 'PMT0130'),
('USR434', 'Barry', 'Brown', 'bbrown@aol.com', 'SUBS434', 'PMT0140'),
('USR807', 'Shonda', 'Rhimes', 'Shondaland@gmail.com', 'SUBS807', 'PMT0150'),
('USR390', 'Oprah', 'Winfrey', 'oprahwinfrey@gmail.com', 'SUBS390', 'PMT0160'),
('USR120', 'Jason', 'Momoa', 'jmomoa@gmail.com', 'SUBS120', 'PMT0170'),
('USR200', 'Albert', 'Einstein', 'alberteinstein@aol.com', 'SUBS200', 'PMT0180'),
('USR875', 'Leo', 'Tolstoy', 'leotolstoy@yahoo.com', 'SUBS875', 'PMT4430'),
('USR765', 'Leonardo', 'Da Vinci', 'leodavinci@aol.com', 'SUBS765', 'PMT0200');


INSERT INTO Organizations (OrgID, OrgName, ContactDetails, PaymentID, subsID)
VALUES
('ORG12345', 'Acme Corporation', 'partners@acme.com', 'PMT125', 'SUB1990'),
('ORG67890', 'Beta Technologies', 'contact@beta.com', 'PMT690', 'SUB1579'),
('ORG98065', 'Alpha Incorporated', 'clients@alpha.com', 'PMT965', 'SUB1309'),
('ORG98965', 'Omega Co.', 'support@omega.net', 'PMT498', 'SUB0579'),
('ORG9005', 'Sulphur Corp', 'partners@sulphur.com', 'PMT100', 'SUB9579'),
('ORG98765', 'Giant Enterprises', 'clients@giant.com', 'PMT133', 'SUB1509'),
('ORG98865', 'Little Incorporated', 'support@little.net', 'PMT139', 'SUB1709'),
('ORG99965', 'Loreal Co.', 'management@Loreal.com', 'PMT009', 'SUB1359'),
('ORG90065', 'Justice League', 'local@justleague.com', 'PMT079', 'SUB1857'),
('ORG99765', 'Mamas Restaurants', 'team@mamasrestuarants.com', 'PMT699', 'SUB1350'),
('ORG50909', 'MLK Public Charter Schools', 'MLK@pcs.gov', 'PMT229', 'SUB1009'),
('ORG90765', 'Gamma Steels', 'management@gamma.com', 'PMT111', 'SUB6608'),
('ORG00765', 'Rema Foundation', 'remateam@rema.com', 'PMT212', 'SUB3979'),
('ORG00965', 'Salvation Churches', 'contact@slavation.org', 'PMT594', 'SUB7888'),
('ORG0865', 'Silver Hair co.', 'clients@silver.com', 'PMT880', 'SUB9898'),
('ORG08765', 'USA Tech Solutions', 'contact@lambda.com', 'PMT445', 'SUB1334'),
('OR34765', 'Fresh Companies', 'support@freshCo.com', 'PMT669', 'SUB5565'),
('ORG58765', 'Heritage Foundation', 'heritageclient@heritrage.org', 'PMT890', 'SUB7676'),
('ORG8900', 'Brown Private Schools', 'contact@brownschools.edu', 'PMT564', 'SUB9064'),
('ORG8990', 'LowerEast PCS', 'lowereastpcs@pcs.gov', 'PMT092', 'SUB0044');

INSERT INTO Skills (SkillID, UserID, skilltype)
VALUES 
('Sk1001', 'USR122', 'Guitar'),
('Sk1002', 'USR674', 'Piano'),
('Sk1003', 'USR987', 'Programming'),
('Sk1004', 'USR456', 'Graphic Design'),
('Sk1005', 'USR135', 'Public Speaking'),
('Sk1006', 'USR243', 'Data Science'),
('Sk1007', 'USR332', 'Marketing'),
('Sk1008', 'USR278', 'Dancing'),
('Sk1009', 'USR787', 'Acting'),
('Sk1010', 'USR556', 'Photography'),
('Sk1011', 'USR909', 'Software Development'),
('Sk1012', 'USR092', 'Writing'),
('Sk1013', 'USR256', 'Film Production'),
('Sk1014', 'USR434', 'Music Production'),
('Sk1015', 'USR807', 'Screenwriting'),
('Sk1016', 'USR390', 'Entrepreneurship'),
('Sk1017', 'USR120', 'Physics'),
('Sk1018', 'USR200', 'Mathematics'),
('Sk1019', 'USR875', 'Literature'),
('Sk1020', 'USR765', 'Art'),
('Sk1021', 'USR909', 'Dancing'),
('Sk1022', 'USR092', 'Cooking'),
('Sk1023', 'USR256', 'Programming'),
('Sk1024', 'USR434', 'Graphic Design'),
('Sk1025', 'USR807', 'Entrepreneurship'),
('Sk1026', 'USR122', 'Basketball'),
('Sk1027', 'USR674', 'Gardening'),
('Sk1028', 'USR987', 'Writing'),
('Sk1029', 'USR456', 'Public Speaking'),
('Sk1030', 'USR135', 'Marketing'),
('Sk1031', 'USR243', 'Data Analysis'),
('Sk1032', 'USR332', 'Photography'),
('Sk1033', 'USR278', 'Acting'),
('Sk1034', 'USR787', 'Guitar'),
('Sk1035', 'USR556', 'Software Development'),
('Sk1036', 'USR390', 'Physics'),
('Sk1037', 'USR120', 'Mathematics'),
('Sk1038', 'USR200', 'Literature'),
('Sk1039', 'USR875', 'Dancing'),
('Sk1040', 'USR765', 'Music Production');

INSERT INTO Verification (VerifID, UserID, VerificationDate)
VALUES
('VERIF001', 'USR122', '2023-01-05'),
('VERIF002', 'USR674', '2023-02-15'),
('VERIF003', 'USR987', '2023-03-25'),
('VERIF004', 'USR456', '2023-04-10'),
('VERIF005', 'USR135', '2023-05-20'),
('VERIF006', 'USR243', '2023-06-30'),
('VERIF007', 'USR332', '2023-07-15'),
('VERIF008', 'USR278', '2023-08-05'),
('VERIF009', 'USR787', '2023-09-10'),
('VERIF010', 'USR556', '2023-10-22'),
('VERIF011', 'USR909', '2023-11-12'),
('VERIF012', 'USR092', '2023-12-03'),
('VERIF013', 'USR256', '2023-01-18'),
('VERIF014', 'USR434', '2023-02-28'),
('VERIF015', 'USR807', '2023-03-15'),
('VERIF016', 'USR390', '2023-04-05'),
('VERIF017', 'USR120', '2023-05-15'),
('VERIF018', 'USR200', '2023-06-25'),
('VERIF019', 'USR875', '2023-07-10'),
('VERIF020', 'USR765', '2023-08-20');

INSERT INTO Reviews (ReviewID, UserID, Rating, Review)
VALUES
('R10045', 'USR122', 5, 'Excellent! I learned a lot about Python'),
('R67090', 'USR674', 4, 'Informative. I gained some valuable insights into public speaking'),
('R08765', 'USR987', 5, 'Thought-provoking. I was particularly impressed with the talks on AI ethics'),
('R4078', 'USR456', 3, 'Useful, but I would have liked more practical tips'),
('R1379', 'USR135', 5, 'Excellent! I highly recommend it to anyone interested in learning more about AI'),
('R2356', 'USR243', 4, 'Good presentation. I enjoyed the practical examples');



INSERT INTO Reviews (ReviewID, UserID, Rating, Review)
VALUES
('R09876', 'USR78', 3, 'Decent. Some topics were covered too quickly'),
('R56789', 'USR787', 5, 'Well-organized  with diverse and insightful sessions'),
('R23451', 'USR556', 4, 'Informative. I appreciated the interactive sessions'),
('R67896', 'USR909', 5, 'This exceeded my expectations. Great hands-on activities!'),
('R98761', 'USR092', 4, 'Interesting talks. I gained new perspectives on AI in business'),
('R45672', 'USR256', 3, 'Decent, but some topics were a bit too advanced for me'),
('R13573', 'USR434', 5, 'Excellent! I learned valuable skills in data analysis'),
('R23450', 'USR807', 4, 'Well-structured . Engaging discussions on technology trends'),
('R67895', 'USR390', 5, 'Outstanding! The presenters were experts in their fields'),
('R98760', 'USR120', 4, 'Informative . I liked the practical tips for effective communication'),
('R45671', 'USR200', 3, 'Decent, but the content could have been more advanced'),
('R13572', 'USR875', 5, 'Excellent! I enjoyed networking with professionals in the industry'),
('R23459', 'USR765', 4, 'Good presentations. The panel discussions were insightful'),
('R67894', 'USR122', 5, 'Fantastic! I gained valuable knowledge about machine learning'),
('R98769', 'USR674', 4, 'Well-prepared. The Q&A session provided additional insights'),
('R45670', 'USR987', 3, 'Average. I expected more hands-on exercises'),
('R13571', 'USR456', 5, 'Great! The keynote speakers were inspiring');

INSERT INTO Reviews (ReviewID, UserID, Rating, Review)
VALUES
('R111', 'USR122', 5, 'Excellent! I learned a lot about Python'),
('R222', 'USR674', 4, 'Informative. I gained some valuable insights into public speaking'),
('R333', 'USR987', 5, 'Thought-provoking. I was particularly impressed with the talks on AI ethics'),
('R444', 'USR456', 3, 'Useful, but I would have liked more practical tips'),
('R55', 'USR135', 5, 'Excellent! I highly recommend it to anyone interested in learning more about AI'),
('R66', 'USR243', 4, 'Good presentation. I enjoyed the practical examples');


INSERT INTO Events (EventID, eventName, eventDate, ReviewID)
VALUES
('EVT1345', 'Workshop: Introduction to Python', '2023-10-04', NULL),
('EVT60990', 'Seminar: English as a second language', '2023-10-15', NULL),
('EVT9895', 'Conference: The Future of Artificial Intelligence','2023-04-26', NULL),
('EVT8940', 'Workshop: Presentation Skills', '2023-09-24', NULL),
('EVT6290', 'Workshup: Excel for Beginners', '2023-03-14', NULL),
('EVT620', 'Workshop: Guitar for Beginners', '2023-04-22', NULL),
('EVT67890', 'Confrence: Gamers and Streamers', '2023-03-11', NULL),
('EVT600', 'Panel: Discors on Recycling Habits', '2023-06-10', NULL),
('EVT699', 'Mixer: Local Bird Enthusiasts Club', '2023-07-05', NULL),
('EVT690', 'Meeting: Soccer and Basketball club of NJ', '2023-08-23', NULL),
('EVT890', 'Meeting: Anime Interest Meetings', '2023-05-01',NULL ),
('EVT9080', 'Convention: Star Wars Laser Sword Fighting', '2023-10-12',NULL);

INSERT INTO Events (EventID, eventName, eventDate, ReviewID)
VALUES
('EVT9895', 'Conference: The Future of Artificial Intelligence','2023-04-26','R67894'),
('EVT8940', 'Workshop: Presentation Skills', '2023-09-24', 'R785'),
('EVT6290', 'Workshup:  Excel for Beginners', '2023-03-14', 'R909'),
('EVT620', 'Workshop: Guitar for Beginners', '2023-04-22', 'R434'),
('EVT67890', 'Confrence: Gamers and Streamers', '2023-03-11', 'R278'),
('EVT600', 'Panel: Discors on Recycling Habits', '2023-06-10','R787'),
('EVT699', 'Mixer: Local Bird Enthusiasts Club', '2023-07-05', 'R556'),
('EVT690', 'Meeting: Soccer and Basketball club of NJ', '2023-08-23','R256'),
('EVT890', 'Meeting: Anime Interest Meetings', '2023-05-01', 'R807'),
('EVT9080', 'Convention: Star Wars Laser Sword Fighting', '2023-10-12','R13579'),
('EVT6000', 'Competition: Soloist of Harlem Jazz club', '2023-11-15', 'R45678'),
('EVT6040', 'Seminar: Developing Powerpoint Skills', '2023-12-01', 'R67890'),
('EVT440', 'Seminar: Spanish Grammar Skills', '2023-11-03', NULL),
('EVT670', 'Workshop: Elementary Education Skills', '2023-11-15', NULL),
('EVT070', 'Seminar: Teachers of MLK Skill development', '2023-08-05', NULL),
('EVT090', 'Mixer: Movie Critique skills', '2023-09-15', 'R09876'), 
('EVT678', 'Convention: Karate and Jujitsu Skills Exchange', '2023-01-05', 'R67895'),
('EVT6733', 'Promotional: FreshCo Food for Thought', '2023-10-02', NULL),
('EVT680', 'Competition: Debate Skills', '2023-03-10', NULL),
('EVT990', 'Convention: Local Area Model UNs', '2023-09-20','R765'),
('EVT6732', 'Seminar: Amature Animators Skill Exchange', '2023-07-25', NULL),
('EVT6734', 'Seminar: Public Speaking Skills Part 2', '2023-01-15', NULL),
('EVT0013', 'Seminar: Public Speaking Skills Part 3', '2023-12-15', 'R78901');

INSERT INTO Events (EventID, eventName, eventDate, ReviewID)
VALUES
('EVT1', 'Workshop: Introduction to Python', '2023-10-04', NULL),
('EVT2', 'Seminar: English as a second language', '2023-10-15', NULL),
('EVT3', 'Conference: The Future of Artificial Intelligence','2023-04-26', NULL),
('EVT4', 'Workshop: Presentation Skills', '2023-09-24', NULL),
('EVT5', 'Workshup: Excel for Beginners', '2023-03-14', NULL),
('EVT6', 'Workshop: Guitar for Beginners', '2023-04-22', NULL),
('EVT7', 'Confrence: Gamers and Streamers', '2023-03-11', NULL),
('EVT8', 'Panel: Discors on Recycling Habits', '2023-06-10', NULL);

INSERT INTO Programs (ProgramID, ProgramName, StartDate, SkillID, EndDate, ReviewID)
VALUES
('PRO12345', 'Training: Introduction to Python Programming', '2023-10-04', 'Sk1005','2023-11-11',NULL ),
('PRO23456', 'Data Science Essentials', '2023-08-20', 'Sk1001','2023-09-15', NULL),
('PRO78901', 'Web Development Bootcamp', '2023-09-01', 'Sk1004','2023-10-05', NULL),
('PRO09876', 'Machine Learning Fundamentals', '2023-07-15','Sk1001', '2023-08-20', NULL),
('PRO56789', 'Digital Marketing Strategies', '2023-08-25', 'Sk1003','2023-09-30', NULL),
('PRO23451', 'Cybersecurity Basics', '2023-09-10', 'Sk1007','2023-10-15', NULL),
('PRO67896', 'Android App Development', '2023-10-01','Sk1006', '2023-11-05', NULL),
('PRO98761', 'Business Analytics Workshop', '2023-08-18', 'Sk1001','2023-09-22', NULL),
('PRO45672', 'UI/UX Design Principles', '2023-08-15', 'Sk1003','2023-09-20', NULL),
('PRO13573', 'Agile Project Management', '2023-09-25', 'Sk1004', '2023-10-30', NULL),
('PRO23450', 'Cloud Computing Essentials', '2023-08-10', 'Sk1003', '2023-09-15', NULL),
('PRO67895', 'Blockchain Technology Workshop', '2023-09-05', 'Sk1005','2023-10-10', NULL),
('PRO98760', 'Product Management Masterclass', '2023-10-15', 'Sk1001', '2023-11-20', NULL),
('PRO45671', 'Data Visualization Techniques', '2023-09-20', 'Sk1006', '2023-10-25', NULL),
('PRO13572', 'Artificial Intelligence in Business', '2023-10-05','Sk1001', '2023-11-09', NULL),
('PRO23459', 'Software Testing Fundamentals', '2023-11-01', 'Sk1008','2023-12-06', NULL),
('PRO67894', 'Leadership and Management Skills', '2023-11-10','Sk1007', '2023-12-15', NULL),
('PRO98769', 'Digital Photography Workshop', '2023-11-25', 'Sk1001','2023-12-30', NULL),
('PRO45670', 'E-commerce Strategies', '2023-11-05','Sk1005', '2023-12-10', NULL),
('PRO13571', 'Artificial Neural Networks', '2023-12-15','Sk1006', '2024-01-20', NULL),
('PRO23458', 'Quantum Computing Seminar', '2023-12-01', 'Sk1009','2024-01-05', NULL);





INSERT INTO Listings (ListID, UserID, SkillID, listDescription, listStatus, DateListed)
VALUES 
('List001', 'USR122', 'Sk1001', 'Guitar lessons available for booking', 'Active', '2023-11-01'),
('List002', 'USR674', 'Sk1002', 'Piano lessons for beginners', 'Active', '2023-11-02'),
('List003', 'USR987', 'Sk1003', 'Programming tutor available', 'Active', '2023-11-03'),
('List004', 'USR456', 'Sk1004', 'Graphic design services offered', 'Inactive', '2023-11-04'),
('List005', 'USR135', 'Sk1005', 'Public speaking coaching sessions', 'Active', '2023-11-05'),
('List006', 'USR243', 'Sk1006', 'Data science consulting services', 'Active', '2023-11-06'),
('List007', 'USR332', 'Sk1007', 'Marketing strategy consultations', 'Active', '2023-11-07'),
('List008', 'USR278', 'Sk1008', 'Dance lessons for all levels', 'Active', '2023-11-08'),
('List009', 'USR787', 'Sk1009', 'Acting classes and workshops', 'Active', '2023-11-09'),
('List010', 'USR556', 'Sk1010', 'Professional photography services', 'Inactive', '2023-11-10'),
('List011', 'USR909', 'Sk1011', 'Software development mentorship', 'Active', '2023-11-11'),
('List012', 'USR092', 'Sk1012', 'Writing and editing services', 'Active', '2023-11-12'),
('List013', 'USR256', 'Sk1013', 'Film production consultations', 'Inactive', '2023-11-13'),
('List014', 'USR434', 'Sk1014', 'Music production lessons', 'Active', '2023-11-14'),
('List015', 'USR807', 'Sk1015', 'Screenwriting advice and feedback', 'Inactive', '2023-11-15'),
('List016', 'USR390', 'Sk1016', 'Entrepreneurship coaching', 'Active', '2023-11-16'),
('List017', 'USR120', 'Sk1017', 'Physics tutoring services', 'Active', '2023-11-17'),
('List018', 'USR200', 'Sk1018', 'Mathematics lessons for all grades', 'Active', '2023-11-18'),
('List019', 'USR875', 'Sk1019', 'Literature analysis and discussions', 'Active', '2023-11-19'),
('List020', 'USR765', 'Sk1020', 'Art classes and workshops', 'Active', '2023-11-20'),
('List021', 'USR909', 'Sk1021', 'Dance lessons for all levels', 'Inactive', '2023-11-21'),
('List022', 'USR092', 'Sk1022', 'Cooking classes and recipe sharing', 'Active', '2023-11-22'),
('List023', 'USR256', 'Sk1023', 'Programming mentorship', 'Active', '2023-11-23');

INSERT INTO Matching (MatchID, UserID, SkillID, MatchStatus, DateMatched)
VALUES 
('Match001', 'USR122', 'Sk1001', 'Complete', '2023-11-01'),
('Match002', 'USR674', 'Sk1002', 'Pending', '2023-11-02'),
('Match003', 'USR987', 'Sk1003', 'Rejected', '2023-11-03'),
('Match004', 'USR456', 'Sk1004', 'Complete', '2023-11-04'),
('Match005', 'USR135', 'Sk1005', 'Pending', '2023-11-05'),
('Match006', 'USR243', 'Sk1006', 'Rejected', '2023-11-06'),
('Match007', 'USR332', 'Sk1007', 'Complete', '2023-11-07'),
('Match008', 'USR278', 'Sk1008', 'Pending', '2023-11-08'),
('Match009', 'USR787', 'Sk1009', 'Rejected', '2023-11-09'),
('Match010', 'USR556', 'Sk1010', 'Complete', '2023-11-10'),
('Match011', 'USR909', 'Sk1011', 'Pending', '2023-11-11'),
('Match012', 'USR092', 'Sk1012', 'Rejected', '2023-11-12'),
('Match013', 'USR256', 'Sk1013', 'Complete', '2023-11-13'),
('Match014', 'USR434', 'Sk1014', 'Pending', '2023-11-14'),
('Match015', 'USR807', 'Sk1015', 'Rejected', '2023-11-15'),
('Match016', 'USR390', 'Sk1016', 'Complete', '2023-11-16'),
('Match017', 'USR120', 'Sk1017', 'Pending', '2023-11-17'),
('Match018', 'USR200', 'Sk1018', 'Rejected', '2023-11-18'),
('Match019', 'USR875', 'Sk1019', 'Complete', '2023-11-19'),
('Match020', 'USR765', 'Sk1020', 'Pending', '2023-11-20'),
('Match021', 'USR909', 'Sk1021', 'Rejected', '2023-11-21'),
('Match022', 'USR092', 'Sk1022', 'Complete', '2023-11-22'),
('Match023', 'USR256', 'Sk1023', 'Pending', '2023-11-23');

INSERT INTO Points (PointsID, UserID, RemainingAmount, Dateredeemed)
VALUES 
('Points001', 'USR122', 30.00, '2023-11-01'),
('Points002', 'USR674', 25.00, '2023-10-15'),
('Points003', 'USR987', 40.00, '2023-12-05'),
('Points004', 'USR456', 15.00, '2023-09-28'),
('Points005', 'USR135', 20.00, '2023-08-20'),
('Points006', 'USR243', 35.00, '2023-08-27'),
('Points007', 'USR332', 10.00, '2023-09-10'),
('Points008', 'USR278', 50.00, '2023-09-15'),
('Points009', 'USR787', 45.00, '2023-10-05'),
('Points010', 'USR556', 30.00, '2023-10-03'),
('Points011', 'USR909', 25.00, '2023-11-10'),
('Points012', 'USR092', 15.00, '2023-06-30'),
('Points013', 'USR256', 40.00, '2023-09-01'),
('Points014', 'USR434', 20.00, '2023-09-15'),
('Points015', 'USR807', 35.00, '2023-08-15'),
('Points016', 'USR390', 10.00, '2023-10-01'),
('Points017', 'USR120', 50.00, '2023-10-20'),
('Points018', 'USR200', 45.00, '2023-11-05'),
('Points019', 'USR875', 12.00, '2023-07-25'),
('Points020', 'USR765', 25.00, '2023-09-15');

INSERT INTO SkillRequests (RequestID, UserID, SkillID, RequestStatus, DateRequested, requestDescription)
VALUES 
('Request001', 'USR122', 'Sk1001', 'Complete', '2023-11-01', 'Python Tutor required'),
('Request002', 'USR674', 'Sk1002', 'Pending', '2023-11-02', 'Java Tutor needed'),
('Request003', 'USR987', 'Sk1003', 'Rejected', '2023-11-03', 'Spanish Tutor needed'),
('Request004', 'USR456', 'Sk1004', 'Complete', '2023-11-04', 'Programming assistance required'),
('Request005', 'USR135', 'Sk1005', 'Pending', '2023-11-05', 'Data Science Mentor needed'),
('Request006', 'USR243', 'Sk1006', 'Rejected', '2023-11-06', 'Web Development Tutor needed'),
('Request007', 'USR332', 'Sk1007', 'Complete', '2023-11-07', 'Graphic Design assistance required'),
('Request008', 'USR278', 'Sk1008', 'Pending', '2023-11-08', 'Music Tutor needed'),
('Request009', 'USR787', 'Sk1009', 'Rejected', '2023-11-09', 'Language Learning Partner needed'),
('Request010', 'USR556', 'Sk1010', 'Complete', '2023-11-10', 'Networking Tutor required'),
('Request011', 'USR909', 'Sk1011', 'Pending', '2023-11-11', 'Latin Tutor needed'),
('Request012', 'USR092', 'Sk1012', 'Rejected', '2023-11-12', 'French Tutor needed'),
('Request013', 'USR256', 'Sk1013', 'Complete', '2023-11-13', 'Guitar Tutor required'),
('Request014', 'USR434', 'Sk1014', 'Pending', '2023-11-14', 'History Tutor needed'),
('Request015', 'USR807', 'Sk1015', 'Rejected', '2023-11-15', 'Literature Tutor needed'),
('Request016', 'USR390', 'Sk1016', 'Complete', '2023-11-16', 'Economics Tutor required'),
('Request017', 'USR120', 'Sk1017', 'Pending', '2023-11-17', 'Math Tutor needed'),
('Request018', 'USR200', 'Sk1018', 'Rejected', '2023-11-18', 'Programming Mentor needed'),
('Request019', 'USR875', 'Sk1019', 'Complete', '2023-11-19', 'Piano Tutor required'),
('Request020', 'USR765', 'Sk1020', 'Pending', '2023-11-20', 'Statistics Tutor needed'),
('Request021', 'USR909', 'Sk1021', 'Rejected', '2023-11-21', 'Painting Tutor needed'),
('Request022', 'USR092', 'Sk1022', 'Complete', '2023-11-22', 'Art Tutor required'),
('Request023', 'USR256', 'Sk1023', 'Pending', '2023-11-23', 'Design Tutor needed');




INSERT INTO CentralCalendar (CalendarID, EventID, ProgramID, UserID, OrgID, CalStatus)
VALUES
('Calendar035', NULL, NULL, 'USR122', 'ORG12345', 'Complete'),
('Calendar034', NULL, NULL,  'USR122','ORG67890', 'Pending'),
('Calendar033', NULL, NULL,  'USR122','ORG98065', 'Cancelled'),
('Calendar032', NULL, NULL, 'USR122','ORG98965', 'Complete');


INSERT INTO CentralCalendar (CalendarID, EventID, ProgramID, UserID, OrgID, CalStatus)
VALUES
('Calendar030', NULL, NULL, 'USR122', 'ORG98765', 'Cancelled'),
('Calendar029', NULL, NULL, 'USR674', 'ORG98865', 'Complete'),
('Calendar028', NULL, NULL, 'USR987', 'ORG99965', 'Pending'),
('Calendar027', NULL, NULL, 'USR456', 'ORG90065', 'Cancelled');


INSERT INTO CentralCalendar (CalendarID, EventID, ProgramID, UserID, OrgID, CalStatus)
VALUES
('Cal001', 'EVT1', NULL, 'USR122', 'ORG12345', 'Scheduled'),
('Cal002', 'EVT2', NULL, 'USR674', 'ORG67890', 'Completed'),
('Cal003', 'EVT3', NULL, 'USR987', 'ORG98065', 'Cancelled'),
('Cal004', 'EVT4', NULL, 'USR456', 'ORG98965', 'Scheduled'),
('Cal005', 'EVT5', NULL, 'USR135', 'ORG9005', 'Pending'),
('Cal006', 'EVT6', NULL, 'USR243', 'ORG98765', 'Scheduled'),
('Cal007', 'EVT7', NULL, 'USR332', 'ORG98865', 'Completed'),
('Cal008', 'EVT8', NULL, 'USR278', 'ORG99965', 'Pending'),
('Cal009', NULL, 'PRO12345', 'USR787', 'ORG90065', 'Scheduled'),
('Cal010', NULL, 'PRO23456', 'USR556', 'ORG99765', 'Completed'),
('Cal011', NULL, 'PRO78901', 'USR909', 'ORG50909', 'Cancelled'),
('Cal012', NULL, 'PRO09876', 'USR092', 'ORG90765', 'Scheduled'),
('Cal013', NULL, 'PRO56789', 'USR256', 'ORG00765', 'Pending'),
('Cal014', NULL, 'PRO23451', 'USR434', 'ORG00965', 'Scheduled'),
('Cal015', NULL, 'PRO67896', 'USR807', 'ORG0865', 'Completed'),
('Cal016', NULL, 'PRO98761', 'USR390', 'ORG08765', 'Cancelled'),
('Cal017', NULL, 'PRO45672', 'USR120', 'OR34765', 'Scheduled'),
('Cal018', NULL, 'PRO13573', 'USR200', 'ORG58765', 'Pending'),
('Cal019', NULL, 'PRO23450', 'USR875', 'ORG8900', 'Scheduled'),
('Cal020', NULL, 'PRO67895', 'USR765', 'ORG8990', 'Completed');

INSERT INTO Reviews (ReviewID, UserID, Rating, Review)
VALUES
('Rev001', 'USR122', 5, 'Excellent Python programming course!'),
('Rev002', 'USR674', 4, 'Data Science Essentials was very informative.'),
('Rev003', 'USR987', 3, 'Web Development Bootcamp was good but quite intensive.'),
('Rev004', 'USR456', 5, 'Learned a lot in the Machine Learning Fundamentals program.'),
('Rev005', 'USR135', 4, 'Digital Marketing Strategies opened new doors for me.'),
('Rev006', 'USR243', 5, 'Cybersecurity Basics was exactly what I needed.'),
('Rev007', 'USR332', 4, 'Android App Development course was challenging but rewarding.'),
('Rev008', 'USR278', 3, 'Business Analytics Workshop was decent, but needed more practical examples.');
