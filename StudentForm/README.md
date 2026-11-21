# Student Management System

## Project Overview

The Student Management System is a web-based application developed using Java, JDBC, Servlets, JSP, and MySQL. This application helps manage student registration, student information, QR code generation, QR code scanning, department-wise student details, and fee payment management.

## Technologies Used

- Java
- JDBC
- Servlets
- JSP
- MySQL
- HTML
- CSS
- JavaScript
- Apache Tomcat
- Eclipse IDE

## Key Features

### 1. Login and Registration

- Provides student login functionality.
- Allows new students to register.
- Maintains student registration details.

### 2. Automatic Student ID and QR Code Generation

- Automatically generates a unique student ID after registration.
- Generates a QR code for each registered student.
- Uses the QR code for student identification.

### 3. QR Code Scanner

- Provides a QR code scanning feature.
- Scans the generated student QR code.
- Displays the registered student's details after scanning.

### 4. Student Dashboard

- Displays the total number of registered students.
- Shows department-wise student counts.
- Helps view student information department-wise.

### 5. Department-wise Fee Payment

- Retrieves student details using the registration number.
- Allows users to select the student's department.
- Automatically displays the applicable department fee.
- Provides a payment submission option.
- Displays a payment success confirmation page after submission.

### 6. Navigation

- Provides a home page with navigation options.
- Includes login, registration, QR scanner, and fee payment options.
- Provides back buttons on individual pages for easy navigation.

## Project Modules

1. Student Login Module
2. Student Registration Module
3. Student ID Generation Module
4. QR Code Generation Module
5. QR Code Scanner Module
6. Student Dashboard Module
7. Department-wise Student Management Module
8. Fee Payment Module

## Database

**Database:** MySQL

The database stores student registration information and related student records.

## Project Structure

```text
StudentManagementSystem/
│
├── src/main/java/
│   ├── entity/
│   └── jsp_student/
│       └── Servlets/
│
├── src/main/resources/
│
├── src/main/webapp/
│   ├── WEB-INF/
│   └── JSP Files
│
├── pom.xml
├── README.md
└── .gitignore
```

## Tools and Environment

- Eclipse IDE
- Java Development Kit (JDK)
- Apache Tomcat Server
- MySQL Database

## Project Objective

The main objective of this project is to simplify student registration, student information management, QR-based student identification, department-wise student tracking, and fee management through a web-based application.

## Author

Developed as a Java Web Application Project.
