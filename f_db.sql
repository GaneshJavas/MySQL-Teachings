CREATE TABLE employee
(
	EmpID   int AUTO_INCREMENT,
	FirstName   varchar(50) NOT NULL,
    LastName    varchar(50) NOT NULL,
    Age INT NOT NULL,
    Salary  INT NOT NULL,
    Location    varchar(50) NOT NULL,
    PRIMARY KEY(EmpID)
);

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Priya", "Bhatia", 26, 100000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Sumedha", "Midha", 32, 50000, "Gurugram");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Rashmi", "Tanwar", 30, 20000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Shivam", "Mishra", 28, 10000, "Noida");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Ajay", "Bhatia", 25, 5000, "Mumbai");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Ankit", "Sangwan", 34, 70000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Alia", "Bhatt", 29, 50000, "Gurugram");


CREATE TABLE Courses(
CourseID INT AUTO_INCREMENT,
CourseName varchar(50) NOT NULL,
CourseDuration INT NOT NULL,
CourseFee INT NOT NULL,
PRIMARY KEY(CourseID)
);

INSERT INTO Courses(CourseName, CourseDuration, CourseFee) VALUES ("Python", 3 , 10000);
INSERT INTO Courses(CourseName, CourseDuration, CourseFee) VALUES ("MySQL", 2 , 7000);
INSERT INTO Courses(CourseName, CourseDuration, CourseFee) VALUES ("Java Script", 12 , 17000);
INSERT INTO Courses(CourseName, CourseDuration, CourseFee) VALUES ("Java", 5 , 9000);
INSERT INTO Courses(CourseName, CourseDuration, CourseFee) VALUES ("C++", 10 , 10000);

CREATE TABLE Students(
StudentID INT AUTO_INCREMENT,
S_FirstName varchar(50) NOT NULL,
S_LastName varchar(50) NOT NULL,
S_Email varchar(50) NOT NULL,
S_Phone varchar(50) NOT NULL,
S_EnrollmentDate timestamp NOT NULL,
Selected_Course INT NOT NULL,
Years_Of_Exp INT NOT NULL,
S_Company varchar(50) NOT NULL,
Batch_Start_Date timestamp NOT NULL,
Location varchar(50) NOT NULL,
PRIMARY KEY(StudentID),
UNIQUE KEY(S_Email),
FOREIGN KEY(Selected_Course) REFERENCES Courses(CourseID)
);

INSERT INTO Students(S_FirstName, S_LastName, S_Email, S_Phone, S_EnrollmentDate, Selected_Course, Years_Of_Exp, S_Company, Batch_Start_Date, Location) VALUES ("Amit", "Singh", "amitsingh@gmail.com", 9898412653, "2024-06-02", 1, 2, "Oriental", "2024-06-05", "Bhopal");

INSERT INTO Students(S_FirstName, S_LastName, S_Email, S_Phone, S_EnrollmentDate, Selected_Course, Years_Of_Exp, S_Company, Batch_Start_Date, Location) VALUES ("Vipin", "Sen", "vipinsen@gmail.com", 9898412512, "2024-06-01", 4, 4, "L N City", "2024-06-10", "Jhansi");

INSERT INTO Students(S_FirstName, S_LastName, S_Email, S_Phone, S_EnrollmentDate, Selected_Course, Years_Of_Exp, S_Company, Batch_Start_Date, Location) VALUES ("Gulshan", "Kumar", "gulshankr@gmail.com", 9898214653, "2024-06-02", 1, 3, "Sage International", "2024-06-05", "Bhopal");

INSERT INTO Students(S_FirstName, S_LastName, S_Email, S_Phone, S_EnrollmentDate, Selected_Course, Years_Of_Exp, S_Company, Batch_Start_Date, Location) VALUES ("Manoj", "Kumar", "manojkr@gmail.com", 9898111653, "2024-06-06", 4, 3, "ZTMD", "2024-06-10", "Bhopal");

INSERT INTO Students(S_FirstName, S_LastName, S_Email, S_Phone, S_EnrollmentDate, Selected_Course, Years_Of_Exp, S_Company, Batch_Start_Date, Location) VALUES ("Vivek", "Patel", "vpatel@gmail.com", 9999111653, "2024-06-06", 2, 3, "BSSS", "2024-06-15", "Somewhere in MP");

INSERT INTO Students(S_FirstName, S_LastName, S_Email, S_Phone, S_EnrollmentDate, Selected_Course, Years_Of_Exp, S_Company, Batch_Start_Date, Location) VALUES ("Rishi", "Kapoor", "rishik@gmail.com", 9998111333, "2024-06-07", 2, 2, "JU", "2024-06-15", "Kolkata");

alter table Students add constraint Selected_Course Foreign Key(Selected_Course) references Courses(CourseID);
alter table Students add constraint Unique Key(S_Email);






