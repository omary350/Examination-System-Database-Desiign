INSERT INTO Students (first_name, last_name, city, street, DOB, password, level, faculty) 
VALUES 
('Ali', 'Ahmed', 'Cairo', 'Maadi', '1999-04-15', 'pass1234', 'Undergraduate', 'Engineering'),
('Sara', 'Mohamed', 'Alexandria', 'Sidi Gaber', '2001-08-22', 'sara2001', 'Undergraduate', 'Medicine'),
('Amr', 'Fouad', 'Giza', 'Dokki', '1998-12-03', 'amr98', 'Graduate', 'Business'),
('Laila', 'Essam', 'Mansoura', 'Toril', '2000-07-19', 'laila2000', 'Undergraduate', 'Arts'),
('Tamer', 'Hossam', 'Luxor', 'Karnak', '1997-05-11', 'tamer97', 'Graduate', 'Law'),
('Noura', 'Samir', 'Aswan', 'Sahari', '2002-01-30', 'noura02', 'Undergraduate', 'Science'),
('Hassan', 'Khaled', 'Sohag', 'Nasr City', '1996-09-25', 'hassan96', 'Graduate', 'Pharmacy'),
('Mona', 'Adel', 'Fayoum', 'Fayoum City', '1995-03-16','mona95','Graduate','Agriculture'),
('Youssef','Magdy','Ismailia','Sheikh Zayed','2003-11-02','youssef03','Undergraduate','Engineering'),
('Farida','Tarek','Port Said','Al Manakh','1994-06-07','farida94','Graduate','Commerce'),
('Khaled','Gamal','Suez','Arbaeen','1999-10-14','khaled99','Undergraduate','Computer Science'),
('Aya','Hesham','Beni Suef','Biba','2001-02-18','aya2001','Undergraduate','Arts'),
('Mahmoud','Ali','Minya','Minya City','1998-04-09','mahmoud98','Graduate','Law'),
('Rania','Mohsen','Qena','Qena City','2000-12-12','rania2000','Undergraduate','Medicine'),
('Ahmed','Yasser','Asyut','Asyut City','1997-07-23','ahmed97','Graduate','Science'),
('Dalia','Samy','Damietta','New Damietta','2002-03-05','dalia02','Undergraduate','Pharmacy'),
('Karim','Mostafa','Matruh','Marsa Matruh','1996-11-29','karim96','Graduate','Business'),
('Heba','Amr','Kafr El Sheikh','Desouk','1995-08-17','heba95','Graduate','Agriculture'),
('Ola','Kareem','Sharqia','Zagazig','2003-09-30','ola03','Undergraduate','Engineering'),
('Mohamed','Ashraf','Monufia','Shibin El Kom','1994-01-25','mohamed94','Graduate','Commerce');

---------------------------------------------------
INSERT INTO students_phones (student_id, mobile) 
VALUES 
(1000, '01000000001'),
(1001, '01000000002'),
(1002, '01000000003'),
(1003, '01000000004'),
(1004, '01000000005'),
(1005, '01000000006'),
(1006, '01000000007'),
(1007, '01000000008'),
(1008, '01000000009'),
(1009, '01000000010'),
(1010, '01000000011'),
(1011, '01000000012'),
(1012, '01000000013'),
(1013, '01000000014'),
(1014, '01000000015'),
(1015, '01000000016'),
(1016, '01000000017'),
(1017, '01000000018'),
(1018, '01000000019'),
(1019, '01000000020');
------------------------------------------------
INSERT INTO professors (first_name, last_name, mobile, city, street, scientific_degree) 
VALUES 
('Hany', 'Mourad', '01100000020', 'Cairo', 'Maadi', 'PhD in Computer Science'),
('Lamia', 'Fouad', '01100000021', 'Alexandria', 'Stanley', 'Master in Mechanical Engineering'),
('Kamal', 'Nagy', '01100000022', 'Giza', 'Agouza', 'PhD in Physics'),
('Samar', 'Lotfy', '01100000023', 'Mansoura', 'Talkha', 'Master in Chemistry'),
('Adel', 'Salem', '01100000024', 'Luxor', 'Luxor City', 'PhD in History'),
('Reem', 'Elgharib', '01100000025', 'Aswan', 'Aswan City', 'Master in Pharmacy'),
('Omar', 'Fahmy', '01100000026', 'Sohag', 'Akhmim', 'PhD in Mathematics'),
('Nadia','Elsherbiny','01100000027','Ismailia','Fayed','Master in Biology'),
('Walid','Elshazly','01100000028','Port Said','Port Fouad','PhD in Business Administration'),
('Amira','Elkady','01100000029','Suez','Suez City','Master in Political Science'),
('Bassem','Elhusseiny','01100000030','Beni Suef','El Wasta','PhD in Electrical Engineering'),
('Salma','Elmorsy','01100000031','Minya','Abu Qurqas','Master in Literature'),
('Wael','Elabd','01100000032','Qena','Nag Hammadi','PhD in Civil Engineering'),
('Yasmin','Elhawary','01100000033','Asyut','Dayrout','Master in Environmental Science'),
('Karima','Eldaw','01100000034','Damietta','Ras El Bar','PhD in Marine Biology');
------------------------------------------------------------------------------------
INSERT INTO departments (department_name, department_head) 
VALUES 
('Mathematics Department', 100),
('Science Department', 101),
('Engineering Department', 102),
('Arts Department', 103),
('Computer Science Department', 104),
('Business Administration Department', 105),
('History Department', 106);
----------------------------------------------------------
INSERT INTO courses (course_name, course_decription, course_level, supervice_department) 
VALUES 
('Introduction to Mathematics', 'Basic concepts of algebra and geometry', 'Undergraduate', 1),
('General Chemistry', 'Fundamentals of chemical reactions and laboratory techniques', 'Undergraduate', 2),
('Principles of Mechanical Engineering', 'Overview of mechanical systems and design', 'Undergraduate', 3),
('Contemporary Art History', 'Study of art movements from the 20th century to present', 'Undergraduate', 4),
('Data Structures and Algorithms', 'In-depth look at data organization and processing methods', 'Undergraduate', 5),
('Business Ethics', 'Examination of ethical practices in modern business environments', 'Undergraduate', 6),
('Ancient Civilizations', 'Exploration of early human societies and their cultures', 'Undergraduate', 7),
('Advanced Calculus', 'Complex analysis and multivariable calculus topics', 'Graduate', 1),
('Organic Chemistry Lab', 'Experimental techniques in organic synthesis and analysis', 'Graduate', 2),
('Robotics Engineering', 'Design and programming of autonomous robotic systems', 'Graduate', 3);
INSERT INTO courses (course_name, course_decription, course_level, supervice_department) 
VALUES 
('Quantum Physics', 'Exploration of quantum mechanics and its applications', 'Graduate', 2),
('Digital Marketing Strategies', 'Techniques and tools for effective online marketing', 'Graduate', 6);
------------------------------------------------
INSERT INTO exams (exam_duration, max_score, min_score, exam_date, course_id, prof_id) 
VALUES 
(120, 100, 50, '2024-06-15', 1, 100),
(90, 100, 50, '2024-06-16', 2, 101),
(180, 100, 50, '2024-06-17', 3, 102),
(60, 100, 50, '2024-06-18', 4, 103),
(120, 100, 50, '2024-06-19', 5, 104),
(90, 100, 50, '2024-06-20', 6, 105),
(180, 100, 50, '2024-06-21', 7, 106),
(60, 100, 50, '2024-06-22', 8, 107),
(120, 100, 50, '2024-06-23', 9, 108),
(90, 100, 50, '2024-06-24', 10, 109),
(180, 100, 50,'2024-06-25',11 ,110 ),
(60 ,100 ,50 ,'2024-06-26',12 ,111 );
--------------------------------------------------------
INSERT INTO question_bank (question_description, question_category, question_answer) 
VALUES 
('What is the capital of France?', 'Geography', 'Paris'),
('Solve for x: 2x + 3 = 7', 'Mathematics', 'x = 2'),
('Name the process plants use to convert sunlight into energy.', 'Biology', 'Photosynthesis'),
('What is the chemical symbol for gold?', 'Chemistry', 'Au'),
('Who wrote "Romeo and Juliet"?', 'Literature', 'William Shakespeare'),
('What is the largest planet in our solar system?', 'Astronomy', 'Jupiter'),
('Define the term "economy".', 'Economics', 'An economy is an area of the production, distribution, and trade, as well as consumption of goods and services by different agents.'),
('What is the speed of light?', 'Physics', '299,792,458 meters per second'),
('What language has the most native speakers worldwide?', 'Linguistics', 'Mandarin Chinese'),
('Who is known as the father of modern physics?', 'Physics', 'Albert Einstein'),
('What is the powerhouse of the cell?', 'Biology', 'Mitochondria'),
('What element does "O" represent on the periodic table?', 'Chemistry', 'Oxygen'),
('Who is the author of "Pride and Prejudice"?', 'Literature', 'Jane Austen'),
('What is the formula for calculating area of a circle?', 'Mathematics', '\(\pi r^2\)'),
('Which country is known as the Land of the Rising Sun?', 'Geography', 'Japan'),
('What is Newton\'s third law of motion?', 'Physics', 'For every action, there is an equal and opposite reaction.'),
('What causes tides in the oceans?', 'Astronomy', 'The gravitational pull of the Moon and Sun on Earth.'),
('What is GDP an acronym for?', 'Economics', 'Gross Domestic Product'),
('Who painted the Mona Lisa?', 'Art History', 'Leonardo da Vinci'),
('What is a hypothesis in scientific research?', 'Science Methodology', 'A proposed explanation for a phenomenon.'),
('How many states are there in the United States of America?', 'Geography', '50'), 
('What gas do living creatures breathe in to survive?', 'Biology','Oxygen'), 
('In what year did World War II end?','History','1945'), 
('How many elements are there in the periodic table?','Chemistry','118'), 
('Who developed the theory of relativity?','Physics','Albert Einstein');
--------------------------------------------
INSERT INTO students_courses (student_id, course_id, course_evaluation) VALUES
(1000, 1, 5), (1000, 2, 8), (1000, 3, 3), (1000, 4, 7), (1000, 5, 6), (1000, 6, 2), (1000, 7, 9), (1000, 8, 4), (1000, 9, 1), (1000, 10, 10), (1000, 11, 5), (1000, 12, 8),
(1001, 1, 3), (1001, 2, 6), (1001, 3, 9), (1001, 4, 2), (1001, 5, 5), (1001, 6, 8), (1001, 7, 1), (1001, 8, 4), (1001, 9, 7), (1001, 10, 10), (1001, 11, 3), (1001, 12, 6),
(1002, 1, 7), (1002, 2, 4), (1002, 3, 1), (1002, 4, 5), (1002, 5, 8), (1002, 6, 3), (1002, 7, 6), (1002, 8, 9), (1002, 9, 2), (1002, 10, 10), (1002, 11, 7), (1002, 12, 4),
(1003, 1, 2), (1003, 2, 5), (1003, 3, 8), (1003, 4, 3), (1003, 5, 6), (1003, 6, 9), (1003, 7, 1), (1003, 8, 4), (1003, 9, 7), (1003, 10, 10), (1003, 11, 2), (1003, 12, 5),
(1004, 1, 6), (1004, 2, 9), (1004, 3, 2), (1004, 4, 5), (1004, 5, 8), (1004, 6, 3), (1004, 7, 6), (1004, 8, 9), (1004, 9, 1), (1004, 10, 10), (1004, 11, 6), (1004, 12, 9),
(1005, 1, 4), (1005, 2, 7), (1005, 3, 10), (1005, 4, 3), (1005, 5, 6), (1005, 6, 9), (1005, 7, 2), (1005, 8, 5), (1005, 9, 8), (1005, 10, 1), (1005, 11, 4), (1005, 12, 7),
(1006, 1, 8), (1006, 2, 2), (1006, 3, 6), (1006, 4, 9), (1006, 5, 1), (1006, 6, 4), (1006, 7, 7), (1006, 8, 10), (1006, 9, 3), (1006, 10, 5), (1006, 11, 8), (1006, 12, 2),
(1007, 1, 3), (1007, 2, 6), (1007, 3, 9), (1007, 4, 2), (1007, 5, 5), (1007, 6, 8), (1007, 7, 1), (1007, 8, 4), (1007, 9, 7), (1007, 10, 10), (1007, 11, 3), (1007, 12, 6),
(1008, 1, 7), (1008, 2, 4), (1008, 3, 1), (1008, 4, 5), (1008, 5, 8), (1008, 6, 3), (1008, 7, 6), (1008, 8, 9), (1008, 9, 2), (1008, 10, 10), (1008, 11, 7), (1008, 12, 4),
(1009, 1, 2), (1009, 2, 5), (1009, 3, 8), (1009, 4, 3), (1009, 5, 6), (1009, 6, 9), (1009, 7, 1), (1009, 8, 4), (1009, 9, 7), (1009, 10, 10), (1009, 11, 2), (1009, 12, 5),
(1010, 1, 6), (1010, 2, 9), (1010, 3, 2), (1010, 4, 5), (1010, 5, 8), (1010, 6, 3), (1010, 7, 6), (1010, 8, 9), (1010, 9, 1), (1010, 10, 10), (1010, 11, 6), (1010, 12, 9),
(1011, 1, 4), (1011, 2, 7), (1011, 3, 10), (1011, 4, 3), (1011, 5, 6), (1011, 6, 9), (1011, 7, 2), (1011, 8, 5), (1011, 9, 8), (1011, 10, 1), (1011, 11, 4), (1011, 12, 7),
(1012, 1, 8), (1012, 2, 2), (1012, 3, 6), (1012, 4, 9), (1012, 5, 1), (1012, 6, 4), (1012, 7, 7), (1012, 8, 10), (1012, 9, 3), (1012, 10, 5), (1012, 11, 8), (1012, 12, 2),
(1013, 1, 3), (1013, 2, 6), (1013, 3, 9), (1013, 4, 2), (1013, 5, 5), (1013, 6, 8), (1013, 7, 1), (1013, 8, 4), (1013, 9, 7), (1013, 10, 10), (1013, 11, 3), (1013, 12, 6),
(1014, 1, 7), (1014, 2, 4), (1014, 3, 1), (1014, 4, 5), (1014, 5, 8), (1014, 6, 3), (1014, 7, 6), (1014, 8, 9), (1014, 9, 2), (1014, 10, 10), (1014, 11, 7), (1014, 12, 4),
(1015, 1, 2), (1015, 2, 5), (1015, 3, 8), (1015, 4, 3), (1015, 5, 6), (1015, 6, 9), (1015, 7, 1), (1015, 8, 4), (1015, 9, 7), (1015, 10, 10), (1015, 11, 2), (1015, 12, 5),
(1016, 1, 6), (1016, 2, 9), (1016, 3, 2), (1016, 4, 5), (1016, 5, 8), (1016, 6, 3), (1016, 7, 6), (1016, 8, 9), (1016, 9, 1), (1016, 10, 10), (1016, 11, 6), (1016, 12, 9),
(1017, 1, 4), (1017, 2, 7), (1017, 3, 10), (1017, 4, 3), (1017, 5, 6), (1017, 6, 9), (1017, 7, 2), (1017, 8, 5), (1017, 9, 8), (1017, 10, 1), (1017, 11, 4), (1017, 12, 7),
(1018, 1, 8), (1018, 2, 2), (1018, 3, 6), (1018, 4, 9), (1018, 5, 1), (1018, 6, 4), (1018, 7, 7), (1018, 8, 10), (1018, 9, 3), (1018, 10, 5), (1018, 11, 8), (1018, 12, 2),
(1019, 1, 3), (1019, 2, 6), (1019, 3, 9), (1019, 4, 2), (1019, 5, 5), (1019, 6, 8), (1019, 7, 1), (1019, 8, 4), (1019, 9, 7), (1019, 10, 10), (1019, 11, 3), (1019, 12, 6);
-----------------------------------------------
DELIMITER $$

CREATE PROCEDURE GenerateStudentExams()
BEGIN
    DECLARE student_id INT DEFAULT 1000;
    DECLARE exam_id INT;
    DECLARE score DECIMAL(5, 2);

    WHILE student_id <= 1019 DO
        SET exam_id = 1;
        WHILE exam_id <= 7 DO
            -- Generate a random score between 1 and 99
            SET score = FLOOR(1 + RAND() * 99);

            -- Insert statement
            INSERT INTO students_exams (student_id, exam_id, score)
            VALUES (student_id, exam_id, score);

            -- Increment exam_id
            SET exam_id = exam_id + 1;
        END WHILE;

        -- Increment student_id
        SET student_id = student_id + 1;
    END WHILE;
END$$

DELIMITER ;

-- Call the procedure to generate the insert statements
CALL GenerateStudentExams();
-------------------------------------------------------
INSERT INTO professors_departments (prof_id, department_id) 
VALUES 
(100, 1), (101, 2), (102, 3), (103, 4), (104, 5), (105, 6), (106, 7),
(107, 3), (108, 1), (109, 2), (110, 4), (111, 5), (112, 6), (113, 7), (114, 1), (111, 6) , (109, 5);
------------------------------------------
-- Professor 100 with Course 1
INSERT INTO professors_courses (prof_id, course_id) VALUES (100, 1);

-- Professor 101 with Course 2
INSERT INTO professors_courses (prof_id, course_id) VALUES (101, 2);

-- Professor 102 with Course 3
INSERT INTO professors_courses (prof_id, course_id) VALUES (102, 3);

-- Professor 103 with Course 4
INSERT INTO professors_courses (prof_id, course_id) VALUES (103, 4);

-- Professor 104 with Course 5
INSERT INTO professors_courses (prof_id, course_id) VALUES (104, 5);

-- Professor 105 with Course 6
INSERT INTO professors_courses (prof_id, course_id) VALUES (105, 6);

-- Professor 106 with Course 7
INSERT INTO professors_courses (prof_id, course_id) VALUES (106, 7);

-- Professor 107 with Course 8
INSERT INTO professors_courses (prof_id, course_id) VALUES (107, 8);

-- Professor 108 with Course 9
INSERT INTO professors_courses (prof_id, course_id) VALUES (108, 9);

-- Professor 109 with Course 10
INSERT INTO professors_courses (prof_id, course_id) VALUES (109, 10);

-- Professor 110 with Course 11
INSERT INTO professors_courses (prof_id, course_id) VALUES (110, 11);

-- Professor 111 with Course 12
INSERT INTO professors_courses (prof_id, course_id) VALUES (111, 12);

INSERT INTO professors_courses (prof_id, course_id) VALUES (112, 1);
INSERT INTO professors_courses (prof_id, course_id) VALUES (113, 2);
INSERT INTO professors_courses (prof_id, course_id) VALUES (114, 3);
-----------------------------------------------------------
INSERT INTO student_professor_evaluation (student_id, prof_id, course_id, evaluation) VALUES
(1000, 100, 1, 8),
(1001, 100, 1, 7),
(1005, 100, 1, 5),
(1001, 101, 2, 7),
(1008, 101, 2, 5),
(1009, 101, 2, 8),
(1002, 102, 3, 9),
(1011, 102, 3, 2),
(1015, 102, 3, 6),
(1003, 103, 4, 6),
(1000, 103, 4, 9),
(1007, 103, 4, 7),
(1004, 104, 5, 7),
(1003, 104, 5, 1);
INSERT INTO student_professor_evaluation (student_id, prof_id, course_id, evaluation) VALUES
(1008, 104, 5, 4),
(1005, 105, 6, 8),
(1016, 105, 6, 5),
(1018, 105, 6, 4),
(1006, 106, 7, 9),
(1019, 106, 7, 7);
INSERT INTO student_professor_evaluation (student_id, prof_id, course_id, evaluation) VALUES
(1007, 106, 7, 5),
(1007, 107, 8, 6),
(1001, 107, 8, 7),
(1014, 107, 8, 8),
(1008, 108, 9, 7),
(1005, 108, 9, 5),
(1009, 108, 9, 9),
(1010, 109, 10, 5),
(1013, 109, 10, 7),
(1009, 109, 10, 8),
(1016, 109, 10, 8),
(1018, 109, 10, 8),
(1010, 110, 11, 9),
(1002, 110, 11,8),
(1005, 110, 11, 4),
(1011, 111, 12, 7),
(1015, 111, 12, 6),
(1018, 111, 12, 7),
(1012, 112, 1, 8),
(1016, 112, 1, 8),
(1015, 112, 1, 8),
(1013, 113, 2, 9),
(1019, 113, 2,8),
(1000, 113, 2, 9);
-------------------------------------------------------
INSERT INTO professors_exams_questions (prof_id, exam_id, question_id) VALUES
(100, 1, 1),
(100, 1, 2),
(100, 1, 3),
(101, 2, 4),
(101, 2, 5),
(101, 2, 6),
(102, 3, 7),
(102, 3, 8),
(102, 3, 9),
(103, 4, 10),
(103, 4, 11),
(103, 4, 12),
(104, 5, 13),
(104, 5, 14),
(104, 5, 15),
(105, 6, 16),
(105, 6, 17),
(105, 6, 18),
(106, 7, 19),
(106, 7, 20);

-- Add more INSERT statements to cover all combinations up to 20
INSERT INTO professors_exams_questions (prof_id, exam_id, question_id) VALUES
(107, 8, 21),
(107, 8, 22),
(107, 8, 23),
(108, 9, 24),
(108, 9, 25),
(108, 9, 1),
(109, 10, 2),
(109, 10, 3),
(109, 10, 4),
(110, 11, 5),
(110, 11, 6),
(110, 11, 7),
(111, 12, 8),
(111, 12, 9),
(111, 12, 10),
(112, 1, 11),
(112, 1, 12),
(112, 1, 13),
(113, 2, 14),
(113, 2, 15);



