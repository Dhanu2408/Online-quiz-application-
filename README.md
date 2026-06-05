Online Quiz Application
Project Title Finalization
Project Title

Online Quiz Application

Description

The project titled "Online Quiz Application" was selected because it clearly represents the system’s purpose. The application provides a digital platform where users can attempt quizzes, evaluate their knowledge, and receive instant results. It is designed for educational and training purposes, making assessments simple, fast, and automated.

Scope of the Project

The Online Quiz Application modernizes traditional examination methods by providing a web-based solution. It can be used by schools, colleges, coaching centers, and organizations for conducting quizzes, practice tests, and online assessments.

Requirement Gathering

Requirement gathering involves identifying user needs and system requirements before development.

Functional Requirements
User registration and login system
Quiz creation and management by admin
Multiple-choice question support
Quiz participation by users
Automatic evaluation and scoring
Result generation and display
Non-Functional Requirements
Fast response time
Secure authentication system
Reliable and error-free performance
User-friendly interface
Scalable system for future updates
Objective Definition
Main Objective

To develop a web-based Online Quiz Application that allows users to take quizzes and receive instant evaluation results.

Specific Objectives
Automate quiz conduction and evaluation
Reduce manual assessment work
Provide instant feedback to users
Improve learning through self-assessment
Maintain quiz history and records
Ensure secure and reliable access
User Identification
Administrator
Manage users
Create and manage quizzes
Add and update questions
View reports and results
Monitor system activity
Student/User
Register and login
Attempt quizzes
Submit answers
View results and performance
Module Identification
1. User Authentication Module

Handles user registration, login, and security.

2. Quiz Management Module

Used by admin to create, update, and delete quizzes.

3. Question Management Module

Manages MCQ questions and correct answers.

4. Quiz Attempt Module

Allows users to attend quizzes with timer and navigation.

5. Evaluation Module

Automatically checks answers and calculates scores.

6. Result Module

Displays quiz results and performance history.

7. Admin Module

Provides full control over system operations.

UML DIAGRAM DOCUMENTATION
Overview

UML (Unified Modeling Language) is used to represent the structure and behavior of the Online Quiz Application. It helps in understanding system design before implementation.

1. Use Case Diagram
Actors:
Admin
Student/User
Admin Use Cases:
Login
Manage Users
Create Quiz
Add Questions
Edit/Delete Quiz
View Reports
Student Use Cases:
Register
Login
Attempt Quiz
View Questions
Submit Answers
View Result
Purpose

Represents interaction between users and system functionalities.

2. Class Diagram
Classes:

User

user_id, name, email, password
register(), login(), attemptQuiz()

Admin (inherits User)

admin_id
createQuiz(), addQuestion(), deleteQuiz(), viewReports()

Quiz

quiz_id, title, duration
startQuiz()

Question

question_id, question_text, options, correct_answer

Result

result_id, score, total_questions
calculateScore()
Relationships:
Admin inherits User
User attempts Quiz
Quiz contains multiple Questions
Quiz generates Result
Result belongs to User
3. Activity Flow (Optional UML)

Login → Select Quiz → Attempt Questions → Submit → View Result

Expected Outcomes
Automated quiz system
Faster evaluation process
Accurate results generation
Improved learning experience
Secure and scalable platform
Reduced manual work
