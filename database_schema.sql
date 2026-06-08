-- Online Quiz Application Database Schema

CREATE DATABASE online_quiz_application;
USE online_quiz_application;

-- User Table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'student') DEFAULT 'student'
);

-- Quiz Table
CREATE TABLE quizzes (
    quiz_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    duration INT NOT NULL,
    created_by INT,
    FOREIGN KEY (created_by) REFERENCES users(user_id)
);

-- Question Table
CREATE TABLE questions (
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    quiz_id INT NOT NULL,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_answer CHAR(1) NOT NULL,
    FOREIGN KEY (quiz_id) REFERENCES quizzes(quiz_id)
);

-- Attempt Table
CREATE TABLE attempts (
    attempt_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    quiz_id INT NOT NULL,
    attempt_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    score DECIMAL(5,2) DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(quiz_id)
);

-- Answer Table
CREATE TABLE answers (
    answer_id INT PRIMARY KEY AUTO_INCREMENT,
    attempt_id INT NOT NULL,
    question_id INT NOT NULL,
    selected_answer CHAR(1),
    FOREIGN KEY (attempt_id) REFERENCES attempts(attempt_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id)
);

-- Result Table
CREATE TABLE results (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    attempt_id INT UNIQUE NOT NULL,
    total_marks INT NOT NULL,
    obtained_marks INT NOT NULL,
    percentage DECIMAL(5,2),
    FOREIGN KEY (attempt_id) REFERENCES attempts(attempt_id)
);
