-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bank_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bank_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bank_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `bank_db` ;

-- -----------------------------------------------------
-- Table `bank_db`.`Town`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank_db`.`Town` (
  `Title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Title`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank_db`.`FamilyStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank_db`.`FamilyStatus` (
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`title`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank_db`.`Nationality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank_db`.`Nationality` (
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`title`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank_db`.`Disability`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank_db`.`Disability` (
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`title`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bank_db`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank_db`.`Clients` (
  `id` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `patronymic` VARCHAR(45) NOT NULL,
  `birthDate` DATETIME NOT NULL,
  `pasportSeries` VARCHAR(45) NOT NULL,
  `pasportNumber` VARCHAR(45) NOT NULL,
  `pasportOrganization` VARCHAR(45) NOT NULL,
  `pasportIssueDate` DATETIME NOT NULL,
  `identificationNumber` VARCHAR(45) NOT NULL,
  `birthPlace` VARCHAR(45) NOT NULL,
  `residenceTown` VARCHAR(45) NOT NULL,
  `residenceAddress` VARCHAR(250) NOT NULL,
  `townPhone` VARCHAR(45) NULL,
  `mobilePhone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `workPlace` VARCHAR(45) NULL,
  `workPosition` VARCHAR(45) NULL,
  `registrationTown` VARCHAR(45) NOT NULL,
  `familyStatus` VARCHAR(45) NOT NULL,
  `nationality` VARCHAR(45) NOT NULL,
  `disability` VARCHAR(45) NOT NULL,
  `pensioner` TINYINT NOT NULL,
  `monthlyIncome` DOUBLE NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `identificationNumber_UNIQUE` (`identificationNumber` ASC) VISIBLE,
  INDEX `fk_Clients_Town_idx` (`residenceTown` ASC) VISIBLE,
  INDEX `fk_Clients_Town1_idx` (`registrationTown` ASC) VISIBLE,
  INDEX `fk_Clients_FamilyStatus1_idx` (`familyStatus` ASC) VISIBLE,
  INDEX `fk_Clients_Nationality1_idx` (`nationality` ASC) VISIBLE,
  INDEX `fk_Clients_Disability1_idx` (`disability` ASC) VISIBLE,
  CONSTRAINT `fk_Clients_Town`
    FOREIGN KEY (`residenceTown`)
    REFERENCES `bank_db`.`Town` (`Title`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Clients_Town1`
    FOREIGN KEY (`registrationTown`)
    REFERENCES `bank_db`.`Town` (`Title`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Clients_FamilyStatus1`
    FOREIGN KEY (`familyStatus`)
    REFERENCES `bank_db`.`FamilyStatus` (`title`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Clients_Nationality1`
    FOREIGN KEY (`nationality`)
    REFERENCES `bank_db`.`Nationality` (`title`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Clients_Disability1`
    FOREIGN KEY (`disability`)
    REFERENCES `bank_db`.`Disability` (`title`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
