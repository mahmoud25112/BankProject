INSERT INTO Branch (Branch\_id, Name, Address)  
VALUES ('23895', 'Woodbridge', '221 Glenwood Ave Woodbridge 08830');

**1\.**  
Create table bank.branch (  
    Branch\_id INT PRIMARY KEY,  
    Name VARCHAR (255) NOT NULL,  
    Address VARCHAR (255) NOT NULL  
);   

**2\.**  
Create table bank.customer(  
    SSN INT PRIMARY KEY,  
    First\_name VARCHAR(255) NOT NULL,   
    Last\_name VARCHAR(255) NOT NULL,  
    Address VARCHAR(255) NOT NULL,  
    Email VARCHAR(255) NOT NULL,  
    Phone\_num VARCHAR(20) NOT NULL,  
    Branch\_id INT,  
    FOREIGN KEY (Branch\_id) references branch(Branch\_id),  
    Date\_of\_birth Date NOT NULL  
);

**3\.**  
Create table bank.banker(  
    Branch\_id INT,  
    FOREIGN KEY (Branch\_id) references branch(Branch\_id),  
    Banker\_id INT PRIMARY KEY,  
    First\_name VARCHAR(255) NOT NULL,   
    Last\_name VARCHAR(255) NOT NULL,  
    Address VARCHAR(255) NOT NULL,  
    Email VARCHAR(255) NOT NULL,  
    Phone\_num VARCHAR(20) NOT NULL,  
    Date\_of\_birth Date NOT NULL,  
    SSN INT,  
    FOREIGN KEY (SSN) references customer(SSN)  
);  

**4\.**  
Create table bank.loans(  
    Loan\_id INT PRIMARY KEY,  
    Loan\_amount INT NOT NULL,  
    Banker\_id INT,  
    FOREIGN KEY (Banker\_id) references banker(Banker\_id),  
    SSN INT,  
    FOREIGN KEY (SSN) references customer(SSN)  
);  
**5\.**  
Create table bank.account(  
   Account\_num INT PRIMARY KEY,  
   Routing\_num INT NOT NULL,  
   Balance INT NOT NULL,  
   Checking\_or\_savings VARCHAR(8) NOT NULL,  
   SSN INT,  
   FOREIGN KEY (SSN) references customer(SSN)  
);  
     
Create table bank.pay\_or\_receieve (  
   Transaction\_id INT,  
   foreign key (Transaction\_id) references transaction(Transaction\_id),  
   Pay\_or\_receieve VARCHAR(8) NOT NULL,  
   Receiver\_account\_num INT NOT NULL,  
   Amount REAL NOT NULL,  
   Account\_num INT,  
   foreign key (Account\_num) references account(Account\_num)  
);

**6\.**  
Create table bank.pay/recieve(  
   Transaction\_id INT,  
   Receiver\_account\_num  
   Amount INT,  
   Account\_num INT,

**7\.**  
Create table bank.deposit/withdraw(  
   Transaction\_id INT,  
   Amount INT,  
   Account\_num INT,

**8\.**  
Create table bank.transfer(  
   Transaction\_id INT,  
   Amount INT,   
   Account\_num INT,

**9\.**  
Create table bank.transaction(  
    Transaction\_id INT PRIMARY KEY,  
    Tranaction\_type   
    Date DATE

**PART 2:**  
**1\.**  
INSERT INTO branch (Branch\_id, Name, Address)  
VALUES ('23895', 'Woodbridge', '221 Glenwood Ave Woodbridge 08830');  
INSERT INTO branch (Branch\_id, Name, Address)  
VALUES ('45632', 'Farmington', '13D Grandview Way 06032');  
INSERT INTO Branch (Branch\_id, Name, Address)  
VALUES (75632'', 'Hartford', '61 Block Drive 07102');  
INSERT INTO Branch (Branch\_id, Name, Address)  
VALUES (89064'', 'Edison', '42 Kansas Drive 06043');  
INSERT INTO Branch (Branch\_id, Name, Address)  
VALUES ('34621', 'Newark', '67 Yonder Drive 09302');

SELECT \* FROM Branch

**2\.**

INSERT INTO customer (SSN,First\_name , Last\_name,Address,Email,Phone\_num,Branch\_id, Date\_of\_birth)  
VALUES (042-13-5933’,’Kee’,’Mason’,’39 Crest Drive 09802’,’km45@gmail.com’,’860-786-7890’,'23895',’08-04-1993’);  
INSERT INTO customer (SSN,First\_name , Last\_name,Address,Email,Phone\_num,Branch\_id, Date\_of\_birth)  
VALUES (‘040-12-5963’,’George’,’Bun’,’34 Moon Drive 09802’,’sbv3@gmail.com’,’860-785-9032’,'45632',’08-09-1995’);  
INSERT INTO customer (SSN,First\_name , Last\_name,Address,Email,Phone\_num,Branch\_id, Date\_of\_birth)  
VALUES (‘040-28-2563’,’Sam’,’Cohen’,’40 Grandview Drive’,’svc2@gmail.com’,’860-903-7867’, '75632',’03-02-1990’);  
INSERT INTO customer (SSN,First\_name , Last\_name,Address,Email,Phone\_num,Branch\_id, Date\_of\_birth)  
VALUES(‘408-11-7597’,’Krish’,’Bedi’,’43 Mohawk Drive 06032’,’krs2@gmail.com’,’860-256-9356’, '89064',’03-19-2004’);

INSERT INTO customer (SSN,First\_name , Last\_name,Address,Email,Phone\_num,Branch\_id, Date\_of\_birth)  
VALUES ('238-87-3637','Shiva','Modugus','42 Street Drive 09302', 'kelton\_trembl@gmail.com', '34621','02-19-2003');

SELECT \* FROM Customer

**4\.**  
INSERT INTO Loans (Loan\_id, Loan\_Amount,Banker\_id,SSN)  
VALUES ('4456709', ‘25000’,’23895’, ‘238873637’);  
INSERT INTO Loans (Loan\_id, Loan\_Amount,Banker\_id,SSN)  
VALUES ('33456', ‘20000’, ‘‘45632', ‘042135933’);  
INSERT INTO Loans (Loan\_id, Loan\_Amount,Banker\_id,SSN)  
VALUES ('993452', ‘200’,’75632’ ‘040125963’);  
INSERT INTO Loans (Loan\_id, Loan\_Amount,Banker\_id,SSN)  
VALUES ('8890123', ‘5000’,’89064’ ‘040125963’);  
INSERT INTO Loans (Loan\_id, Loan\_Amount,Banker\_id,SSN)  
VALUES ('2389551', ‘7500’,’34621’,’040282563’);

SELECT \* FROM Loans

**5\.**

INSERT INTO Account (Account\_num, Routing\_num, Checking\_or\_savings,Balance,SSN)  
VALUES ('238955', ‘2500’,’890322’,’Checking’, ‘238873637’);  
INSERT INTO Account (Account\_num, Routing\_num, Checking\_or\_savings,Balance,SSN)  
VALUES ('238956', ‘2500’,’890323’, ‘savings’, ‘‘042135933’);  
INSERT INTO Account (Account\_num, Routing\_num, Checking\_or\_savings,Balance,SSN)  
VALUES ('238957', ‘2500’,’890324’, ‘Checking’, ‘042135933’);  
INSERT INTO Account (Account\_num, Routing\_num, Checking\_or\_savings,Balance,SSN)  
VALUES ('238958', ‘2500’,’890325’, ‘savings’, ‘040125963’);  
INSERT INTO Account (Account\_num, Routing\_num, Checking\_or\_savings,Balance,SSN)  
VALUES ('238959', ‘2500’,’890326’, ‘checkings’, ’040282563’);

SELECT \* FROM Account

**6\.**

INSERT INTO Pay/Receive (Transaction\_id, Pay\_or\_recieve, Receiever\_account\_num, Amount, Account\_num)  
VALUES ('238955', ‘Pay’,’’,’’, ‘’);  
INSERT INTO Pay/Receive (Transaction\_id, Pay\_or\_recieve, Receiever\_account\_num, Amount, Account\_num)  
VALUES ('238956', ‘Pay’,’890323’, ‘savings’, ‘‘042135933’);  
INSERT INTO Pay/Receive (Transaction\_id, Pay\_or\_recieve, Receiever\_account\_num, Amount, Account\_num)  
VALUES ('238957', ‘Pay’,’890324’, ‘Checking’, ‘042135933’);  
INSERT INTO Pay/Receive (Transaction\_id, Pay\_or\_recieve, Receiever\_account\_num, Amount, Account\_num)  
VALUES ('238958', ‘2500’,’890325’, ‘savings’, ‘040125963’);  
INSERT INTO Pay/Receive (Transaction\_id, Pay\_or\_recieve, Receiever\_account\_num, Amount, Account\_num)  
VALUES (‘238955',’Receive’,);

SELECT \* FROM Account

**7\.**

**8\.**

INSERT INTO Transfer (Transaction\_id, Amount, Account\_num)  
VALUES ('238955', ‘2500’,’890321’);  
INSERT INTO Transfer (Transaction\_id, Amount, Account\_num)  
VALUES ('238956', ‘5000’,’567482’);  
INSERT INTO Transfer (Transaction\_id, Amount, Account\_num)  
VALUES ('238957', ‘7500’,’657221);  
INSERT INTO Transfer (Transaction\_id, Amount, Account\_num)  
VALUES ('238958', ‘6700’,’678920’);  
INSERT INTO Transfer (Transaction\_id, Amount, Account\_num)  
VALUES ('238959', ‘13000’, ‘789012);

SELECT \* FROM Transfer

   
**9\.** 

INSERT INTO Transaction (Transaction\_id, Date)  
VALUES ('238955', ‘2001-09-19’);  
INSERT INTO Transaction (Transaction\_id, Date)  
VALUES (‘238956', '2003-08-16');  
INSERT INTO Transaction (Transaction\_id, Date)  
VALUES (‘238957', '2005-07-14');  
INSERT INTO Transaction (Transaction\_id, Date)  
VALUES (‘238958','1992-06-13');  
INSERT INTO Transaction (Transaction\_id, Date)  
VALUES ('238958'','1990-05-10');

SELECT \* FROM Transaction

**Part 3:**

INSERT INTO customer(SSN,First\_name,Last\_name,Address,Email,Phone\_num,Date\_of\_birth, Branch\_id)  
SELECT '238873637', 'Shiva', 'Modugus', '42 Street Driver 09302', 'kelton\_trembl@gmail.com', '908-616-6274','2003-02-19',   
Branch\_id FROM branch  
WHERE Name \= 'Woodbridge'  
 LIMIT 1

INSERT INTO customer(SSN,First\_name,Last\_name,Address,Email,Phone\_num,Date\_of\_birth, Branch\_id)  
SELECT **‘**042135933**',** ‘Kee’,’Mason’**,** ’39 Crest Drive 09802’**,** ’km45@gmail.com’,’860-786-7890’,’1993-04-18’**,** Branch\_id  
  FROM branch  
 WHERE Name \= 'Woodbridge'  
 LIMIT 1

INSERT INTO customer(SSN,First\_name,Last\_name,Address,Email,Phone\_num,Date\_of\_birth, Branch\_id)  
SELECT ‘040125963’, ‘George’, ‘Bun’, ‘34 Moon Drive 09802’, ‘[sbv3@gmail.com](mailto:sbv3@gmail.com)’, ‘860-785-9032’,'45632', ‘1995-09-18’**,** Branch\_id  
  FROM branch  
 WHERE Name \= 'Woodbridge'  
 LIMIT 1

INSERT INTO customer(SSN,First\_name,Last\_name,Address,Email,Phone\_num,Date\_of\_birth, Branch\_id)  
SELECT ‘040282563’,’Sam’,’Cohen’,’40 Grandview Drive’,’svc2@gmail.com’,’860-903-7867’, '75632',’1992’-02-17**,** Branch\_id  
  FROM branch  
 WHERE Name \= 'Woodbridge'  
 LIMIT 1

INSERT INTO customer(SSN,First\_name,Last\_name,Address,Email,Phone\_num,Date\_of\_birth, Branch\_id)  
SELECT '238873637', 'Shiva', 'Modugus', '42 Street Driver 09302', 'kelton\_trembl@gmail.com', '908-616-6274','2003-02-19', Branch\_id  
  FROM branch  
 WHERE Name \= 'Woodbridge'  
 LIMIT 1

Branch:

**UPDATE Branch**  
**SET Name \= ‘Garcia’**  
**DELETE FROM Branch WHERE Address \= ‘43 Mohawk Drive’;**

Customer:

**SET FOREIGN\_KEY\_CHECKS=0;**  
**UPDATE CUSTOMER**  
**SET Phone\_num \= '9083447978';**  
**DELETE FROM CUSTOMER WHERE First\_name \= 'Shiva';**

Banker:

**UPDATE BANKER**  
**Set First\_Name \= ‘Juan’**  
**DELETE FROM BANKER WHERE Last\_name \= ‘Harris’;**

Loans:

**UPDATE LOANS**  
**SET Loan\_Amount \= ‘50000’**  
**DELETE FROM Loans WHERE loan\_amount \< ‘25000’;**

Account:

**UPDATE ACCOUNT**  
**SET Balance= ‘9900’**  
**DELETE FROM Account WHERE Balance \<= ’900’;**

Pay\_Or\_Receive:

**UPDATE Pay\_Or\_Receive**  
**SET Amount \= ‘9000’**  
**DELETE FROM Pay\_Or\_Receive WHERE Account\_num \= ‘789049’;**

Deposit/Withdraw:

**UPDATE DEPOSIT/WITHDRAW**  
**SET TRANSACTION\_ID \= ‘238946’**  
**DELETE FROM DEPOSIT/WITHDRAW WHERE Amount \= ‘1000’;**

Transfer:

**UPDATE Transfer**  
**SET Amount \= ‘4000’**  
**DELETE FROM Transfer WHERE transaction\_id \= '238955';**

Transaction:

**UPDATE Transaction**  
**SET Transaction\_id= ‘239855’**  
**DELETE FROM Transaction WHERE Date \= ‘2005-07-14’;**

Banker:  
INSERT INTO banker (Banker\_id,First\_Name,Last\_Name,Address, Email, Phone\_num,Date\_of\_birth,Branch\_id, SSN)  
SELECT '11115','Michelle', 'Harris', '3844 Drainer Avenue 32401','ronny.mora8@hotmail.com', '321-316-4696', '1973-01-17', b.Branch\_id, c.SSN  
FROM branch AS b  
CROSS JOIN customer AS c  
WHERE b.\`Name\` \= 'Woodbridge'  
AND c.First\_name \= 'Michelle'

Loans:  
INSERT INTO Loans (Loan\_id, Loan\_Amount,Banker\_id,SSN)  
SELECT '4523129','9560',b.Banker\_id,c.SSN  
  FROM banker AS b  
CROSS JOIN customer AS c

Pay\_or\_receieve: receive  
INSERT INTO pay\_or\_receieve (Pay\_or\_receieve, Receiver\_account\_num,Amount,Transaction\_id, Account\_num)  
SELECT 'receive','23346','2000',t.Transaction\_id,a.Account\_num  
  FROM transaction AS t  
CROSS JOIN account AS a  
WHERE t.Transaction\_id \= '6'  
AND a.Account\_num \= '12341'

Deposit or withdraw:  
INSERT INTO deposit\_or\_withdraw (Deposit\_or\_withdraw,Savings\_withdraw\_left,Amount,Transaction\_id, Account\_num)  
SELECT 'withdraw','4','2000',t.Transaction\_id,a.Account\_num  
  FROM transaction AS t  
CROSS JOIN account AS a  
WHERE t.Transaction\_id \= '10'  
AND a.Account\_num \= '12345'

WHERE b.First\_name \= 'Sam'  
AND c.First\_name \= 'Shiva'

1-  
SELECT COUNT(loan\_id), Banker\_id  
FROM Loans  
GROUP BY Banker\_id

2-  
SELECT AVG(Balance), Checking\_or\_savings  
FROM Account  
GROUP BY Checking\_or\_savings  
HAVING AVG(Balance) \> 2000;

3-  
SELECT count(banker\_id)   
FROM banker  
WHERE Address IN (   
SELECT Address  
FROM Branch  
WHERE name= ‘Woodbridge');

SELECT count(Banker\_id)   
FROM banker  
WHERE Name IN (   
SELECT Name  
FROM Branch  
WHERE Name= 'Woodbridge');

4-  
SELECT First\_name  
From customer  
Where SSN \= ALL  
(SELECT SSN  
FROM account   
Where Balance \=238794.12);

