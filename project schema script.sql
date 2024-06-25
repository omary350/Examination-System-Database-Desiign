-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema examinationsystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema examinationsystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `examinationsystem` DEFAULT CHARACTER SET utf8 ;
USE `examinationsystem` ;

-- -----------------------------------------------------
-- Table `examinationsystem`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`students` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `street` VARCHAR(45) NULL,
  `DOB` DATE NULL,
  `password` VARCHAR(45) NULL,
  `level` VARCHAR(45) NULL,
  `faculty` VARCHAR(45) NULL,
  PRIMARY KEY (`student_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1000;


-- -----------------------------------------------------
-- Table `examinationsystem`.`students_phones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`students_phones` (
  `student_id` INT NOT NULL,
  `mobile` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`, `mobile`),
  CONSTRAINT `student_id`
    FOREIGN KEY (`student_id`)
    REFERENCES `examinationsystem`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`professors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`professors` (
  `prof_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `mobile` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `street` VARCHAR(45) NULL,
  `scientific_degree` VARCHAR(45) NULL,
  PRIMARY KEY (`prof_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 100;


-- -----------------------------------------------------
-- Table `examinationsystem`.`departments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`departments` (
  `department_id` INT NOT NULL AUTO_INCREMENT,
  `department_name` VARCHAR(45) NULL,
  `department_head` INT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE INDEX `department_head_UNIQUE` (`department_head` ASC) VISIBLE,
  CONSTRAINT `department_head`
    FOREIGN KEY (`department_head`)
    REFERENCES `examinationsystem`.`professors` (`prof_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`courses` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NULL,
  `course_decription` VARCHAR(150) NULL,
  `course_level` VARCHAR(45) NULL,
  `supervice_department` INT NULL,
  PRIMARY KEY (`course_id`),
  INDEX `supervice_department_idx` (`supervice_department` ASC) VISIBLE,
  CONSTRAINT `supervice_department`
    FOREIGN KEY (`supervice_department`)
    REFERENCES `examinationsystem`.`departments` (`department_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`exams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`exams` (
  `exam_id` INT NOT NULL AUTO_INCREMENT,
  `exam_duration` INT NULL,
  `max_score` INT NULL,
  `min_score` INT NULL,
  `exam_date` DATE NULL,
  `course_id` INT NULL,
  `prof_id` INT NULL,
  PRIMARY KEY (`exam_id`),
  INDEX `course_exam_idx` (`course_id` ASC) VISIBLE,
  INDEX `prof_exam_idx` (`prof_id` ASC) VISIBLE,
  CONSTRAINT `course_exam`
    FOREIGN KEY (`course_id`)
    REFERENCES `examinationsystem`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `prof_exam`
    FOREIGN KEY (`prof_id`)
    REFERENCES `examinationsystem`.`professors` (`prof_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`question_bank`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`question_bank` (
  `question_id` INT NOT NULL AUTO_INCREMENT,
  `question_description` VARCHAR(150) NULL,
  `question_category` VARCHAR(45) NULL,
  `question_answer` VARCHAR(150) NULL,
  PRIMARY KEY (`question_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`students_courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`students_courses` (
  `student_id` INT NOT NULL,
  `course_id` INT NOT NULL,
  `course_evaluation` DECIMAL(1,0) NULL,
  PRIMARY KEY (`student_id`, `course_id`),
  INDEX `courses_course_id_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `students_user_name`
    FOREIGN KEY (`student_id`)
    REFERENCES `examinationsystem`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `courses_course_id`
    FOREIGN KEY (`course_id`)
    REFERENCES `examinationsystem`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`students_exams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`students_exams` (
  `student_id` INT NOT NULL,
  `exam_id` INT NOT NULL,
  `score` DECIMAL(5,2) NULL,
  PRIMARY KEY (`student_id`, `exam_id`),
  INDEX `exams_exam_id_idx` (`exam_id` ASC) VISIBLE,
  CONSTRAINT `students_students_id`
    FOREIGN KEY (`student_id`)
    REFERENCES `examinationsystem`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `exams_exam_id`
    FOREIGN KEY (`exam_id`)
    REFERENCES `examinationsystem`.`exams` (`exam_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`professors_departments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`professors_departments` (
  `prof_id` INT NOT NULL,
  `department_id` INT NOT NULL,
  PRIMARY KEY (`prof_id`, `department_id`),
  INDEX `departments_department_id_idx` (`department_id` ASC) VISIBLE,
  CONSTRAINT `professors_prof_id`
    FOREIGN KEY (`prof_id`)
    REFERENCES `examinationsystem`.`professors` (`prof_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `departments_department_id`
    FOREIGN KEY (`department_id`)
    REFERENCES `examinationsystem`.`departments` (`department_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`professors_courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`professors_courses` (
  `prof_id` INT NOT NULL,
  `course_id` INT NOT NULL,
  PRIMARY KEY (`prof_id`, `course_id`),
  INDEX `courses_course_id_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `professors_profid`
    FOREIGN KEY (`prof_id`)
    REFERENCES `examinationsystem`.`professors` (`prof_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `courses_courseid`
    FOREIGN KEY (`course_id`)
    REFERENCES `examinationsystem`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`student_professor_evaluation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`student_professor_evaluation` (
  `student_id` INT NOT NULL,
  `prof_id` INT NOT NULL,
  `course_id` INT NOT NULL,
  `evaluation` DECIMAL(1,0) NULL,
  PRIMARY KEY (`student_id`, `prof_id`, `course_id`),
  INDEX `professors_prof_id_idx` (`prof_id` ASC) VISIBLE,
  INDEX `courses_course_id_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `students_student_id`
    FOREIGN KEY (`student_id`)
    REFERENCES `examinationsystem`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `prof_id`
    FOREIGN KEY (`prof_id`)
    REFERENCES `examinationsystem`.`professors` (`prof_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `course_id`
    FOREIGN KEY (`course_id`)
    REFERENCES `examinationsystem`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examinationsystem`.`professors_exams_questions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examinationsystem`.`professors_exams_questions` (
  `prof_id` INT NOT NULL,
  `exam_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  PRIMARY KEY (`prof_id`, `exam_id`, `question_id`),
  INDEX `exams_exam_id_idx` (`exam_id` ASC) VISIBLE,
  INDEX `question_bank_question_id_idx` (`question_id` ASC) VISIBLE,
  CONSTRAINT `professorsf_id`
    FOREIGN KEY (`prof_id`)
    REFERENCES `examinationsystem`.`professors` (`prof_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `exam_id`
    FOREIGN KEY (`exam_id`)
    REFERENCES `examinationsystem`.`exams` (`exam_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `question_bank_question_id`
    FOREIGN KEY (`question_id`)
    REFERENCES `examinationsystem`.`question_bank` (`question_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
