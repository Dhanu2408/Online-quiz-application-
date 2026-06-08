# Online Quiz Application

## Project Title Finalization

### Project Title

Online Quiz Application

### Description

The project titled "Online Quiz Application" was selected because it clearly represents the system's purpose. The application provides a digital platform where users can attempt quizzes, evaluate their knowledge, and receive instant results. It is designed for educational and training purposes, making assessments simple, fast, and automated.

### Scope of the Project

The Online Quiz Application modernizes traditional examination methods by providing a web-based solution. It can be used by schools, colleges, coaching centers, and organizations for conducting quizzes, practice tests, and online assessments.

---

## Requirement Gathering

Requirement gathering involves identifying user needs and system requirements before development.

### Functional Requirements

* User registration and login system
* Quiz creation and management by admin
* Multiple-choice question support
* Quiz participation by users
* Automatic evaluation and scoring
* Result generation and display

### Non-Functional Requirements

* Fast response time
* Secure authentication system
* Reliable and error-free performance
* User-friendly interface
* Scalable system for future updates

---

## Objective Definition

### Main Objective

To develop a web-based Online Quiz Application that allows users to take quizzes and receive instant evaluation results.

### Specific Objectives

* Automate quiz conduction and evaluation
* Reduce manual assessment work
* Provide instant feedback to users
* Improve learning through self-assessment
* Maintain quiz history and records
* Ensure secure and reliable access

---

## User Identification

### Administrator

* Manage users
* Create and manage quizzes
* Add and update questions
* View reports and results
* Monitor system activity

### Student/User

* Register and login
* Attempt quizzes
* Submit answers
* View results and performance

---

## Module Identification

### User Authentication Module

Handles user registration, login, and security.

### Quiz Management Module

Used by admin to create, update, and delete quizzes.

### Question Management Module

Manages MCQ questions and correct answers.

### Quiz Attempt Module

Allows users to attend quizzes with timer and navigation.

### Evaluation Module

Automatically checks answers and calculates scores.

### Result Module

Displays quiz results and performance history.

### Admin Module

Provides full control over system operations.

---

# UML Diagram Documentation

## Overview

UML (Unified Modeling Language) is used to represent the structure and behavior of the Online Quiz Application. It helps in understanding system design before implementation.

## Use Case Diagram

### Actors

* Admin
* Student/User

### Admin Use Cases

* Login
* Manage Users
* Create Quiz
* Add Questions
* Edit/Delete Quiz
* View Reports

### Student Use Cases

* Register
* Login
* Attempt Quiz
* View Questions
* Submit Answers
* View Result

### Purpose

Represents interaction between users and system functionalities.

## Class Diagram

### User

Attributes:

* user_id
* name
* email
* password

Methods:

* register()
* login()
* attemptQuiz()

### Admin (inherits User)

Attributes:

* admin_id

Methods:

* createQuiz()
* addQuestion()
* deleteQuiz()
* viewReports()

### Quiz

Attributes:

* quiz_id
* title
* duration

Methods:

* startQuiz()

### Question

Attributes:

* question_id
* question_text
* options
* correct_answer

### Result

Attributes:

* result_id
* score
* total_questions

Methods:

* calculateScore()

### Relationships

* Admin inherits User
* User attempts Quiz
* Quiz contains multiple Questions
* Quiz generates Result
* Result belongs to User

## Activity Flow

Login → Select Quiz → Attempt Questions → Submit → View Result

---

## Data Requirement Analysis

Data Requirement Analysis is the process of identifying, collecting, storing, and managing the data required for the successful operation of the Online Quiz Application. The system relies on accurate and secure data to perform user authentication, quiz management, evaluation, and result generation.

### User Data

Stores information about registered users.

Attributes:

* User ID
* Name
* Email Address
* Password
* User Role (Admin/User)
* Registration Date

### Quiz Data

Stores details of quizzes created by administrators.

Attributes:

* Quiz ID
* Quiz Title
* Quiz Description
* Duration
* Total Marks
* Creation Date

### Question Data

Stores quiz questions and answer options.

Attributes:

* Question ID
* Quiz ID
* Question Text
* Option A
* Option B
* Option C
* Option D
* Correct Answer

### Quiz Attempt Data

Stores information about user participation in quizzes.

Attributes:

* Attempt ID
* User ID
* Quiz ID
* Start Time
* End Time
* Submitted Answers

### Result Data

Stores quiz evaluation results.

Attributes:

* Result ID
* User ID
* Quiz ID
* Score Obtained
* Total Marks
* Percentage
* Result Status

### Data Relationships

* One user can attempt multiple quizzes.
* One quiz can contain multiple questions.
* Each question belongs to one quiz.
* Each quiz attempt generates a result.
* Results are linked to both users and quizzes.

### Data Security Requirements

* Passwords must be stored in encrypted form.
* Access to administrative functions should be restricted.
* User information must be protected from unauthorized access.
* Regular database backups should be maintained.
* Data integrity and confidentiality must be ensured.

### Expected Data Volume

* Hundreds or thousands of user records.
* Multiple quizzes with numerous questions.
* Large amounts of quiz attempt and result data.
* Database structure should support future expansion and scalability.

### Purpose

The Data Requirement Analysis ensures that all necessary information is properly stored, managed, and secured. It helps in designing an efficient database structure that supports smooth quiz operations, accurate evaluation, and reliable result generation.

---

# Entity Relationship (ER) Diagram Description

The Entity Relationship (ER) Diagram of the Online Quiz Application illustrates the database structure and relationships among entities involved in the system.

### Entities

* User
* Quiz
* Question
* Attempt
* Answer
* Result

### Relationships

* One User can attempt multiple quizzes.
* One Quiz can be attempted by multiple users.
* One Quiz contains multiple Questions.
* Each Question belongs to a specific Quiz.
* Each Attempt stores a user's participation in a Quiz.
* Each Attempt contains multiple Answers.
* Each Answer corresponds to a specific Question.
* Each Attempt generates exactly one Result.
* Each Result stores the user's score and performance details.

### Database Integrity

The ER diagram ensures:

* Proper organization of data
* Reduced data redundancy
* Efficient storage and retrieval
* Data consistency through Primary Keys and Foreign Keys
* Accurate quiz evaluation and result tracking

---

# Database Schema

## Tables

### Users

* user_id (PK)
* name
* email
* password
* role

### Quizzes

* quiz_id (PK)
* title
* description
* duration
* created_by (FK)

### Questions

* question_id (PK)
* quiz_id (FK)
* question_text
* option_a
* option_b
* option_c
* option_d
* correct_answer

### Attempts

* attempt_id (PK)
* user_id (FK)
* quiz_id (FK)
* attempt_date
* score

### Answers

* answer_id (PK)
* attempt_id (FK)
* question_id (FK)
* selected_answer

### Results

* result_id (PK)
* attempt_id (FK)
* total_marks
* obtained_marks
* percentage

---

# Expected Outcomes

* Automated quiz system
* Faster evaluation process
* Accurate results generation
* Improved learning experience
* Secure and scalable platform
* Reduced manual work
* Better performance tracking and reporting


