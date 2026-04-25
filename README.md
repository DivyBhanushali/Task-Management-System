# Task Management System

A role-based web application enabling managers and employees to create, assign, track, update, and delete tasks through a browser-based interface.

## Project Overview
This system provides a structured platform for task delegation and tracking within an organization[cite: 16]. [cite_start]It uses the MVC (Model-View-Controller) architectural pattern to ensure a clean separation of concerns, where model classes represent data, DAO classes handle SQL operations, Servlets act as controllers, and JSP pages serve as views.

## Key Features
* **Role-Based Access Control:** Distinct dashboards for 'Manager' and 'Employee' roles.
* **Manager Privileges:** View all tasks across the system, mark them as completed, or delete them.
* **Employee Functionality:** Add new tasks and monitor their own task statuses.
* **Secure Authentication:** A login module that validates credentials against the MySQL database.

## Technology Stack
[cite_start]The application is built using the following core technologies[cite: 15]:

| Component | Technology |
| :--- | :--- |
| **Language** | Java (JDK 17+)  |
| **Frameworks** | Java EE, Servlets, JSP  |
| **Server** | Apache Tomcat 10.5  |
| **Database** | MySQL 8.x  |
| **Connectivity** | JDBC (MySQL Connector/J 9.6.0)  |

## Architecture
The application follows a standard three-tier architecture:
* **Presentation Layer:** JSP + CSS.
* **Business Logic Layer:** Java Servlets + DAOs.
* **Data Layer:** MySQL via JDBC.

