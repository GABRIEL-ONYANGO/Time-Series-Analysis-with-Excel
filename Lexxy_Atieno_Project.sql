-- create the database
#CREATE DATABASE azani_isp;
#USE azani_isp;

-- create tables
#CREATE TABLE Institutions (
   # institution_id INT PRIMARY KEY AUTO_INCREMENT,
    #name VARCHAR(100),
    #category VARCHAR(50),
    #contact_person VARCHAR(100),
    #phone VARCHAR(20),
    #email VARCHAR(100),
    #registration_date DATE
#);

#CREATE TABLE Bandwidth (
    #bandwidth_id INT PRIMARY KEY AUTO_INCREMENT,
    #speed VARCHAR(20),
    #monthly_cost DECIMAL(10,2)
#);

#CREATE TABLE Subscriptions (
    #subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    #institution_id INT,
    #bandwidth_id INT,
    #upgraded BOOLEAN,
    #FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id),
    #FOREIGN KEY (bandwidth_id) REFERENCES Bandwidth(bandwidth_id)
#);

#CREATE TABLE Infrastructure (
    #infra_id INT PRIMARY KEY AUTO_INCREMENT,
    #institution_id INT,
    #computers INT,
    #lan_nodes INT,
    #is_ready BOOLEAN,
    #FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id)
#);

#CREATE TABLE Purchases (
    #purchase_id INT PRIMARY KEY AUTO_INCREMENT,
    #institution_id INT,
    #item_type VARCHAR(50),
    #quantity INT,
    #cost DECIMAL(10,2),
    #FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id)
#);

#CREATE TABLE Payments (
    #payment_id INT PRIMARY KEY AUTO_INCREMENT,
    #institution_id INT,
    #payment_type VARCHAR(50),
    #amount DECIMAL(10,2),
    #payment_date DATE,
    #status VARCHAR(20),
    #FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id)
#);

#CREATE TABLE Billing (
    #bill_id INT PRIMARY KEY AUTO_INCREMENT,
    #institution_id INT,
    #month DATE,
    #amount DECIMAL(10,2),
    #fine DECIMAL(10,2),
    #reconnection_fee DECIMAL(10,2),
    #status VARCHAR(20),
    #FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id)
#);

-- Inserting bandwidth data into Bandwidth Table
#INSERT INTO Bandwidth (speed, monthly_cost) VALUES
#('4 MBPS', 1200),
#('10 MBPS', 2000),
#('20 MBPS', 3500),
#('25 MBPS', 4000),
#('50 MBPS', 7000);

-- Inserting Institution details into Institutions Table
#INSERT INTO Institutions (name, category, contact_person, phone, email, registration_date) VALUES
#('Greenfield Primary', 'Primary', 'John Otieno', '0711000001', 'greenfield@gmail.com', '2026-01-01'),
#('Sunrise Junior School', 'Junior', 'Mary Achieng', '0711000002', 'sunrise@gmail.com', '2026-01-02'),
#('Elite High School', 'Senior', 'Peter Mwangi', '0711000003', 'elite@gmail.com', '2026-01-03'),
#('Nairobi Tech College', 'College', 'Grace Wanjiru', '0711000004', 'ntc@gmail.com', '2026-01-04'),
#('Bright Future Primary', 'Primary', 'James Ouma', '0711000005', 'bright@gmail.com', '2026-01-05'),
#('Lakeview Junior', 'Junior', 'Susan Atieno', '0711000006', 'lakeview@gmail.com', '2026-01-06'),
#('Hilltop High', 'Senior', 'David Kiptoo', '0711000007', 'hilltop@gmail.com', '2026-01-07'),
#('Metro College', 'College', 'Anne Njeri', '0711000008', 'metro@gmail.com', '2026-01-08'),
#('Starlight Primary', 'Primary', 'Paul Onyango', '0711000009', 'starlight@gmail.com', '2026-01-09'),
#('Victory Junior School', 'Junior', 'Lucy Akinyi', '0711000010', 'victory@gmail.com', '2026-01-10'),
#('Kings High School', 'Senior', 'Daniel Mutua', '0711000011', 'kings@gmail.com', '2026-01-11'),
#('Summit College', 'College', 'Faith Wambui', '0711000012', 'summit@gmail.com', '2026-01-12'),
#('Hope Primary', 'Primary', 'Chris Otieno', '0711000013', 'hope@gmail.com', '2026-01-13'),
#('Unity Junior', 'Junior', 'Jane Atieno', '0711000014', 'unity@gmail.com', '2026-01-14'),
#('Prestige High', 'Senior', 'Kevin Kibet', '0711000015', 'prestige@gmail.com', '2026-01-15'),
#('Global College', 'College', 'Diana Njeri', '0711000016', 'global@gmail.com', '2026-01-16'),
#('Future Leaders Primary', 'Primary', 'Brian Ouma', '0711000017', 'future@gmail.com', '2026-01-17'),
#('Scholars Junior', 'Junior', 'Mercy Achieng', '0711000018', 'scholars@gmail.com', '2026-01-18'),
#('Excellence High', 'Senior', 'Victor Kiptoo', '0711000019', 'excellence@gmail.com', '2026-01-19'),
#('Pioneer College', 'College', 'Alice Wanjiru', '0711000020', 'pioneer@gmail.com', '2026-01-20');

-- Insert subscriptions into Subscriptions Table
#INSERT INTO Subscriptions (institution_id, bandwidth_id, upgraded) VALUES
#(1,1,FALSE),(2,2,TRUE),(3,3,FALSE),(4,5,TRUE),
#(5,1,FALSE),(6,2,FALSE),(7,3,TRUE),(8,4,FALSE),
#(9,1,FALSE),(10,2,TRUE),(11,3,FALSE),(12,5,TRUE),
#(13,1,FALSE),(14,2,FALSE),(15,3,TRUE),(16,4,FALSE),
#(17,1,FALSE),(18,2,TRUE),(19,3,FALSE),(20,5,TRUE);

-- Insert infrastructure details into Infrastructure Table
#INSERT INTO Infrastructure (institution_id, computers, lan_nodes, is_ready) VALUES
#(1,10,15,TRUE),(2,5,8,FALSE),(3,20,25,TRUE),(4,30,50,TRUE),
#(5,8,12,FALSE),(6,12,18,TRUE),(7,25,30,TRUE),(8,40,60,TRUE),
#(9,6,10,FALSE),(10,10,15,TRUE),(11,22,35,TRUE),(12,35,70,TRUE),
#(13,7,11,FALSE),(14,14,20,TRUE),(15,28,40,TRUE),(16,45,80,TRUE),
#(17,9,13,FALSE),(18,11,19,TRUE),(19,24,36,TRUE),(20,50,90,TRUE);

-- Insert details of purchases of PCs and LAN into Purchases Table
#INSERT INTO Purchases (institution_id, item_type, quantity, cost) VALUES
#(2,'PC',5,200000),
#(5,'PC',8,320000),
#(9,'PC',6,240000),
#(13,'PC',7,280000),
#(17,'PC',9,360000),
#(2,'LAN',8,10000),
#(5,'LAN',12,20000),
#(9,'LAN',10,10000),
#(13,'LAN',11,20000),
#(17,'LAN',13,20000);

-- Inserting payment details into Payments Table
#INSERT INTO Payments (institution_id, payment_type, amount, payment_date, status) VALUES
#(1,'Registration',8500,'2026-01-01','Paid'),
#(1,'Installation',10000,'2026-01-02','Paid'),
#(2,'Registration',8500,'2026-01-02','Paid'),
#(3,'Registration',8500,'2026-01-03','Paid'),
#(4,'Installation',10000,'2026-01-04','Paid'),
#(5,'Registration',8500,'2026-01-05','Paid'),
#(6,'Installation',10000,'2026-01-06','Paid');

-- Inserting billing details (including defaults and disconnections) into Billing Table
#INSERT INTO Billing (institution_id, month, amount, fine, reconnection_fee, status) VALUES
#(1,'2026-03-01',1200,0,0,'Paid'),
#(2,'2026-03-01',2000,300,0,'Unpaid'),
#(3,'2026-03-01',3500,0,0,'Paid'),
#(4,'2026-03-01',7000,1050,1000,'Disconnected'),
#(5,'2026-03-01',1200,180,0,'Unpaid'),
#(6,'2026-03-01',2000,0,0,'Paid'),
#(7,'2026-03-01',3500,525,1000,'Disconnected'),
#(8,'2026-03-01',4000,0,0,'Paid');

-- KEY QUERIES
-- Registerd institutions
#SELECT name, category, contact_person FROM Institutions;

-- Defaulters
#SELECT i.name, b.amount, b.fine
#FROM Institutions i
#JOIN Billing b ON i.institution_id = b.institution_id
#WHERE b.status = 'Unpaid';

-- Disconnected Institutions
#SELECT i.name, b.amount, b.reconnection_fee
#FROM Institutions i
#JOIN Billing b ON i.institution_id = b.institution_id
#WHERE b.status = 'Disconnected';

-- Infrastructure Report
#SELECT i.name, infra.computers, infra.lan_nodes, infra.is_ready
#FROM Institutions i
#JOIN Infrastructure infra ON i.institution_id = infra.institution_id;

-- Total Revenue per Institution
#SELECT institution_id, SUM(amount) AS total_paid
#FROM Payments
#GROUP BY institution_id;

-- Total installation cost of each institution
#SELECT i.name, SUM(p.amount) AS total_installation_cost
#FROM Institutions i
#JOIN Payments p ON i.institution_id = p.institution_id
#WHERE p.payment_type = 'Installation'
#GROUP BY i.name;

-- Cost of personal computers and LAN services for institutions with assorted services
#SELECT i.name,
 #      SUM(CASE WHEN p.item_type = 'PC' THEN p.cost ELSE 0 END) AS pc_cost,
  #     SUM(CASE WHEN p.item_type = 'LAN' THEN p.cost ELSE 0 END) AS lan_cost,
   #    SUM(p.cost) AS total_cost
#FROM Institutions i
#JOIN Purchases p ON i.institution_id = p.institution_id
#GROUP BY i.name;

-- Total monthly charges for upgraded internet services
#SELECT i.name, b.monthly_cost AS upgraded_monthly_cost
#FROM Institutions i
#JOIN Subscriptions s ON i.institution_id = s.institution_id
#JOIN Bandwidth b ON s.bandwidth_id = b.bandwidth_id
#WHERE s.upgraded = TRUE;

-- Total monthly charges for internet services, overdue fines and re-connection fees generated from each category of institution
#SELECT inst.category,
 #      SUM(b.amount) AS total_internet_charges,
  #     SUM(b.fine) AS total_fines,
   #    SUM(b.reconnection_fee) AS total_reconnection_fees,
    #   SUM(b.amount + b.fine + b.reconnection_fee) AS grand_total
#FROM Institutions inst
#JOIN Billing b ON inst.institution_id = b.institution_id
#GROUP BY inst.category;

-- Aggregate amount for each service sorted by institution
#SELECT i.name,
 #      COALESCE(SUM(p.amount),0) + COALESCE(SUM(b.amount + b.fine + b.reconnection_fee),0) AS total_service_amount
#FROM Institutions i
#LEFT JOIN Payments p ON i.institution_id = p.institution_id
#LEFT JOIN Billing b ON i.institution_id = b.institution_id
#GROUP BY i.name
#ORDER BY total_service_amount DESC;
