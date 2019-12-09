# ITDA310 Project - TechDating.

This application was created for the CTI 3rd Year Advanced Database Systems Project.
Written by: Sydney Twigg
Last modified: 18/05/2018
Semester 1 - 2018

The scope of the project was to design and build a fully functional database and application that is connected to the database. My chosen topic was to create a dating application where users can register, login, and be matched with other users on the system.

The requirements for the database were:
•	5 entities
•	1 trigger
•	2 stored procedures
•	2 indices
•	2 users

The specification of a fully functional database was the following:
•	ERD modelling
•	Data normalization - 3rd level
•	Entity integrity maintained
•	Referential integrity maintained
•	Cohesive modelling of conceptual model to a logical model
•	Entity types identified and understood
•	Relevant indexes identified and implemented
•	Relevant views identified and implemented
•	Cohesive integration between application or website and database
•	Database runs

All of the above requirements were met.

## Submission Folder

The practical aspect of this project should be submitted as a zipped file with the following files:
•	Source code
•	Database dump
•	Application exe file
•	Readme file

### Prerequisites

This project was built and designed in the following environment:

------------------
System Information
------------------
      Time of this report: 5/18/2018, 22:45:46
             Machine name: SYDNEY-LAPTOP
               Machine Id: {B8FACC22-22F0-44EA-970B-B4483E31A955}
         Operating System: Windows 10 Home Single Language 64-bit (10.0, Build 16299) (16299.rs3_release_svc_escrow.180502-1908)
                 Language: English (Regional Setting: English)
      System Manufacturer: ASUSTeK COMPUTER INC.
             System Model: G551JW
                     BIOS: G551JW.209
                Processor: Intel(R) Core(TM) i7-4750HQ CPU @ 2.00GHz (8 CPUs), ~2.0GHz
                   Memory: 16384MB RAM
      Available OS Memory: 16274MB RAM
                Page File: 14459MB used, 19221MB available
              Windows Dir: C:\WINDOWS
          DirectX Version: DirectX 12
      DX Setup Parameters: Not found
         User DPI Setting: 120 DPI (125 percent)
       System DPI Setting: 120 DPI (125 percent)
          DWM DPI Scaling: UnKnown
                 Miracast: Available, with HDCP
Microsoft Graphics Hybrid: Supported
           DxDiag Version: 10.00.16299.0015 64bit Unicode


### Installing

Steps to run this project:

**SQL**
1. Using MySQL Workbench, import the file techdatingdb.sql
  - A data import can be done by going to Server -> Data Import -> Import from Self-Contained File -> Start Import.

**NetBeans**
1. It is important to note that if your root@localhost differs from "" (blank), you must change the password in the source code before you can run this project
  - The variable DB_PASSWORD must be changed in the following file '\TechDating\src\setup\setup.java'
2. Ensure that the correct libraries are in the project:
  -mysql-connector-5.1.18.jar
  -mysql-connector-5.1.18-bin.jar
  If these are not in the project they can be located in the file called 'mySql' and imported to the project through NetBeans by right clicking the 'TechDating' project -> Properties -> Libraries -> Add JAR -> select the files and click OK.
3. Run the project through NetBeans
4. As a new user you will have to register to use the system, and to access the admin panel of the system you can use the username 'admin' and password 'admin'.


## Built With

* NetBeans 8.1.
* MySQL Workbench 6.3.

## Author

* **Sydney Twigg**
