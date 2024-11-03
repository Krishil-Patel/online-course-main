-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 11:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE Course (
    id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_description TEXT,
    duration INT,
    price DECIMAL(5, 2),
    rating DECIMAL(2, 1),
    trainer VARCHAR(50)
);

CREATE TABLE User (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role ENUM('admin', 'user') NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO Course (id, course_name, course_description, duration, price, rating, trainer) VALUES
(1, 'Java', 'Java is programming language used in software development.', 25, 5, 4.5, 'Dhruv'),
(2, 'Springboot', 'Springboot is framework for developing java based web applications.', 20, 0, 5, 'Krishil'),
(3, 'Hibernate', 'Hibernate is a Java framework that simplifies the interact with the database.', 15, 5, 4, 'Adeena'),
(4, 'Spring Data JPA', 'JPA is used to examine, control and persist data between Java objects and RDB.', 10, 6, 4.5, 'Prateek'),
(5, 'Lombok', 'Lombok is a java library that is used to minimize/remove boilerplate code.', 5, 0, 3.5, 'Dhruv'),
(6, 'Liquibase', 'Liquibase is used in DB change management to maintain DB Changelogs.', 21, 2, 4.5, 'Krishil'),
(7, 'Thymleaf', 'Thymleaf is template engine capable of processing HTML, XML, JavaScript, CSS.', 10, 5, 4, 'Adeena'),
(8, 'Maven', 'Maven is a build and dependency management tool to manage projects.', 10, 9, 5, 'Prateek'),
(9, 'MySQL', 'Relational database management system based on the Structured Query Language.', 10, 999, 5, 'Dhruv'),
(10, 'HTML/CSS/Bootstrap/JQuery', 'Open source front-end framework for the creation of websites and web apps.', 9, 5, 4.5, 'Krishil'),
(11, 'JAVAX Validation API', 'JAVAX Validation API is a standard mechanism to validate JavaBeans.', 7, 2, 3.5, 'Adeena'),
(12, 'JUnit Basics', 'JUnit is unit testing open-source framework for java based applications.', 15, 8, 5, 'Prateek'),
(13, 'Github Basics', 'GitHub is storing, tracking, and collaborating toll used in software development.', 2, 6, 4.5, 'Dhruv'),
(14, 'SLF4J', 'SLF4J library is used for logging in Java Projects which makes logging easy.', 2, 999, 4.5, 'Krishil'),
(15, 'Python Basics', 'Introduction to Python programming language.', 20, 3, 4.5, 'Alice'),
(16, 'Data Science with Python', 'Learn data analysis, visualization and machine learning with Python.', 30, 8, 5, 'Bob'),
(17, 'Web Development with Flask', 'Create web applications using the Flask framework in Python.', 25, 5, 4, 'Charlie'),
(18, 'Introduction to Machine Learning', 'Basic concepts of machine learning and implementation using Python.', 35, 7, 4.5, 'Diana'),
(19, 'Docker for Beginners', 'Learn how to use Docker for containerization.', 15, 4, 4, 'Eve'),
(20, 'JavaScript Basics', 'Introduction to JavaScript programming for web development.', 20, 350, 4.5, 'Frank'),
(21, 'React for Beginners', 'Learn the basics of building user interfaces with React.', 30, 6, 5, 'Grace'),
(22, 'Angular Fundamentals', 'An introduction to Angular for building web applications.', 28, 5, 4.5, 'Hannah'),
(23, 'Introduction to SQL', 'Learn the basics of SQL and database management.', 25, 4, 4, 'Ivan'),
(24, 'Advanced SQL Queries', 'Dive deeper into SQL with advanced queries and database design.', 30, 5, 4.5, 'Jack'),
(25, 'Kubernetes Basics', 'Introduction to Kubernetes for container orchestration.', 35, 7, 4.5, 'Karen'),
(26, 'Git for Version Control', 'Learn to use Git for source code management.', 15, 2, 4.5, 'Liam'),
(27, 'Cloud Computing Basics', 'Introduction to cloud computing and services.', 25, 5, 4, 'Mia')
(29, 'DevOps Practices', 'An introduction to DevOps culture and practices.', 30, 8, 4.5, 'Olivia'),
(30, 'Mobile App Development', 'Learn to build mobile applications using Flutter.', 35, 7, 5, 'Paul'),
(31, 'Cybersecurity Fundamentals', 'Introduction to cybersecurity principles and practices.', 30, 6, 4.5, 'Quinn'),
(32, 'Digital Marketing Basics', 'Learn about digital marketing strategies and tools.', 25, 4, 4, 'Rachel'),
(33, 'Artificial Intelligence Basics', 'Introduction to AI concepts and applications.', 30, 7, 5, 'Sam'),
(34, 'Natural Language Processing', 'Learn about NLP techniques and tools.', 35, 8, 4.5, 'Tina'),
(35, 'Blockchain Basics', 'Introduction to blockchain technology and its applications.', 30, 7, 5, 'Uma'),
(36, 'Game Development with Unity', 'Learn to create games using Unity.', 40, 9, 5, 'Victor'),
(37, 'Data Visualization Techniques', 'Learn to visualize data using various tools.', 25, 5, 4.5, 'Wendy'),
(38, 'Ethical Hacking Fundamentals', 'Introduction to ethical hacking techniques.', 30, 6, 4, 'Xander'),
(39, 'Introduction to UX/UI Design', 'Learn the basics of user experience and interface design.', 25, 4, 4.5, 'Yara'),
(40, 'Photography Basics', 'Learn the fundamentals of photography.', 20, 3, 4, 'Zane'),
(41, 'Excel for Data Analysis', 'Learn to use Excel for data analysis.', 20, 350, 4.5, 'Abby'),
(42, 'Selenium for Automated Testing', 'Learn to use Selenium for web application testing.', 30, 5, 4, 'Brad'),
(43, 'Power BI for Data Visualization', 'Learn to use Power BI for data visualization.', 30, 6, 4.5, 'Cara'),
(44, 'C++ Basics', 'Introduction to programming with C++.', 25, 4, 4, 'Dave'),
(45, 'PHP for Web Development', 'Learn PHP for server-side web development.', 30, 5, 4.5, 'Eva'),
(46, 'Java Basics', 'Introduction to programming with Java.', 30, 5, 4, 'Finn'),
(47, 'Cloud Security Fundamentals', 'Introduction to cloud security practices.', 30, 6, 4.5, 'Gina'),
(48, 'Excel VBA for Automation', 'Learn to automate tasks in Excel using VBA.', 25, 4, 4.5, 'Henry'),
(49, 'Content Writing Skills', 'Learn effective content writing techniques.', 20, 3, 4, 'Isla'),
(50, 'Social Media Marketing', 'Learn to market products using social media.', 25, 4, 4.5, 'Jackie'),
(51, 'Project Management Basics', 'Introduction to project management principles.', 30, 6, 5, 'Kyle'),
(52, 'Introduction to Cryptocurrency', 'Learn the basics of cryptocurrency and blockchain.', 25, 5, 4.5, 'Laura');

INSERT INTO User (id, name, email, role, password) VALUES 
(1, 'Admin', 'admin@gmail.com', 'admin', 'abcd'),
(2, 'User', 'user@gmail.com', 'user', 'abcd'),
(3, 'Shayan', 'Shayan@gmail.com', 'user', 'abcd');