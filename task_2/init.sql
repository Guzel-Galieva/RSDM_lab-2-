CREATE 
DATABASE task_2;
    
CREATE TABLE task_2.students
{
    id int PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birthday DATE
};

TRUNCATE TABLE task_2.students;

INSERT INTO task_2.students (id, first_name, last_name, birthday)
VALUES (0, 'Alisa', 'Ivanova', '2002.03.03');
INSERT INTO task_2.students (id, first_name, last_name, birthday)
VALUES (1, 'Igor', 'Volkov', '2001.12.31');
INSERT INTO task_2.students (id, first_name, last_name, birthday)
VALUES (2, 'Angelina', 'Sorokina', '2002.05.24');
INSERT INTO task_2.students (id, first_name, last_name, birthday)
VALUES (3, 'Kris', 'Islamova', '2001.06.24');
INSERT INTO task_2.students (id, first_name, last_name, birthday)
VALUES (4, 'Arthur', 'Sultanov', '2002.01.09');

CREATE TABLE task_2.zachetka
{
    id int PRIMARY KEY,
    student_id int FOREIGN KEY,
    subject VARCHAR(150),
    exam DATE,
    professor VARCHAR(150),
    grade int,
    FOREIGN KEY (student_id)  REFERENCES task2.students (Id)
};

TRUNCATE TABLE task_2.zachetka;

INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (0, 0, 'Math', '2021.01.11', 'Ivanov I.I.', 5);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (1, 0, 'Lin. Al', '2021.01.15', 'Ivanova A.A.', 4);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (2, 0, 'Software engineering', '2021.01.22', 'Tarlanov M.M', 4);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (3, 1, 'Math', '2021.01.11', 'Ivanov I.I.', 3);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (4, 1, 'Lin. Al', '2021.01.15', 'Ivanova A.A.', 3);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (5, 1, 'Software engineering', '2021.01.22', 'Tarlanov M.M', 3);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (6, 2, 'Math', '2021.01.11', 'Ivanov I.I.', 5);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (7, 2, 'Lin. Al', '2021.01.15', 'Ivanova A.A.', 5);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (8, 2, 'Software engineering', '2021.01.22', 'Tarlanov M.M', 5);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (9, 3, 'Math', '2021.01.11', 'Ivanov I.I.', 4);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (10, 3, 'Lin. Al', '2021.01.15', 'Ivanova A.A.', 4);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (11, 3, 'Software engineering', '2021.01.22', 'Tarlanov M.M', 4);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (12, 4, 'Math', '2021.01.11', 'Ivanov I.I.', 3);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (13, 4, 'Lin. Al', '2021.01.15', 'Ivanova A.A.', 3);
INSERT INTO task_2.students (id, student_id, subject, exam, professor, grade)
VALUES (14, 4, 'Software engineering', '2021.01.22', 'Tarlanov M.M', 5);
