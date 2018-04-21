-- MySQL Script generated by MySQL Workbench
-- Sat Apr 21 18:01:31 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema u215407366_unir
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema u215407366_unir
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `u215407366_unir` DEFAULT CHARACTER SET utf8 ;
USE `u215407366_unir` ;

-- -----------------------------------------------------
-- Table `u215407366_unir`.`Country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Country` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Country` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `countryPT` VARCHAR(45) NOT NULL,
  `countryEN` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`City`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`City` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`City` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `Country_idCountry` INT NOT NULL,
  `language` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_City_Country_idx` (`Country_idCountry` ASC),
  CONSTRAINT `fk_City_Country`
    FOREIGN KEY (`Country_idCountry`)
    REFERENCES `u215407366_unir`.`Country` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Address` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `addressLine1` VARCHAR(60) NOT NULL,
  `addressLine2` VARCHAR(60) NULL,
  `postalCode` VARCHAR(15) NOT NULL,
  `City_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Address_City1_idx` (`City_id` ASC),
  CONSTRAINT `fk_Address_City1`
    FOREIGN KEY (`City_id`)
    REFERENCES `u215407366_unir`.`City` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`EduacationEstablishment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`EduacationEstablishment` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`EduacationEstablishment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `phoneNumber` INT NULL,
  `Address_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_EduacationEstablishment_Address1_idx` (`Address_id` ASC),
  CONSTRAINT `fk_EduacationEstablishment_Address1`
    FOREIGN KEY (`Address_id`)
    REFERENCES `u215407366_unir`.`Address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`CourseArea`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`CourseArea` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`CourseArea` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `language` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Course`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Course` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Course` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `CourseArea_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `language` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Course_CourseArea1_idx` (`CourseArea_id` ASC),
  CONSTRAINT `fk_Course_CourseArea1`
    FOREIGN KEY (`CourseArea_id`)
    REFERENCES `u215407366_unir`.`CourseArea` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Customer` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(15) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `dateOfBirth` DATE NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phoneNumber` INT NOT NULL,
  `nationality` VARCHAR(45) NOT NULL,
  `gender` INT NULL,
  `img_name` VARCHAR(45) NULL,
  `img_path` VARCHAR(45) NULL,
  `img_type` VARCHAR(45) NULL,
  `studentNumber` VARCHAR(45) NULL,
  `studentDegree` VARCHAR(45) NULL,
  `EduacationEstablishment_id` INT NOT NULL,
  `Course_id` INT NOT NULL,
  `Address_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Customer_EduacationEstablishment1_idx` (`EduacationEstablishment_id` ASC),
  INDEX `fk_Customer_Course1_idx` (`Course_id` ASC),
  INDEX `fk_Customer_Address1_idx` (`Address_id` ASC),
  CONSTRAINT `fk_Customer_EduacationEstablishment1`
    FOREIGN KEY (`EduacationEstablishment_id`)
    REFERENCES `u215407366_unir`.`EduacationEstablishment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Course1`
    FOREIGN KEY (`Course_id`)
    REFERENCES `u215407366_unir`.`Course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Address1`
    FOREIGN KEY (`Address_id`)
    REFERENCES `u215407366_unir`.`Address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Customer_has_Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Customer_has_Address` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Customer_has_Address` (
  `Customer_id` INT NOT NULL,
  `Address_id` INT NOT NULL,
  `registDate` DATE NULL,
  PRIMARY KEY (`Customer_id`, `Address_id`),
  INDEX `fk_Customer_has_Address1_Address1_idx` (`Address_id` ASC),
  INDEX `fk_Customer_has_Address1_Customer1_idx` (`Customer_id` ASC),
  CONSTRAINT `fk_Customer_has_Address1_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `u215407366_unir`.`Customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Address1_Address1`
    FOREIGN KEY (`Address_id`)
    REFERENCES `u215407366_unir`.`Address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Payment` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Payment` (
  `id` INT NOT NULL,
  `number` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `dateEx` DATE NOT NULL,
  `CVV` INT NOT NULL,
  `Customer_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Payment_Customer1_idx` (`Customer_id` ASC),
  CONSTRAINT `fk_Payment_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `u215407366_unir`.`Customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`SecurityPolice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`SecurityPolice` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`SecurityPolice` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL,
  `description` VARCHAR(200) NULL,
  `fee` DOUBLE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Item` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Item` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(300) NULL,
  `price` DOUBLE NOT NULL,
  `publishDate` DATE NOT NULL,
  `yearBought` DATE NULL,
  `img_name` VARCHAR(45) NULL,
  `img_path` VARCHAR(45) NULL,
  `img_type` VARCHAR(45) NULL,
  `Customer_id` INT NOT NULL,
  `SecurityPolice_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Item_Customer1_idx` (`Customer_id` ASC),
  INDEX `fk_Item_SecurityPolice1_idx` (`SecurityPolice_id` ASC),
  CONSTRAINT `fk_Item_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `u215407366_unir`.`Customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Item_SecurityPolice1`
    FOREIGN KEY (`SecurityPolice_id`)
    REFERENCES `u215407366_unir`.`SecurityPolice` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Rental`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Rental` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Rental` (
  `Customer_id` INT NOT NULL,
  `Item_id` INT NOT NULL,
  `initialRentalDay` DATE NOT NULL,
  `endRentalDay` DATE NOT NULL,
  `totalPrice` DOUBLE NOT NULL,
  PRIMARY KEY (`Customer_id`, `Item_id`, `initialRentalDay`),
  INDEX `fk_Customer_has_Item_Item1_idx` (`Item_id` ASC),
  INDEX `fk_Customer_has_Item_Customer1_idx` (`Customer_id` ASC),
  CONSTRAINT `fk_Customer_has_Item_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `u215407366_unir`.`Customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Item_Item1`
    FOREIGN KEY (`Item_id`)
    REFERENCES `u215407366_unir`.`Item` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Customer_has_Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Customer_has_Address` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Customer_has_Address` (
  `Customer_id` INT NOT NULL,
  `Address_id` INT NOT NULL,
  `registDate` DATE NULL,
  PRIMARY KEY (`Customer_id`, `Address_id`),
  INDEX `fk_Customer_has_Address1_Address1_idx` (`Address_id` ASC),
  INDEX `fk_Customer_has_Address1_Customer1_idx` (`Customer_id` ASC),
  CONSTRAINT `fk_Customer_has_Address1_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `u215407366_unir`.`Customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Address1_Address1`
    FOREIGN KEY (`Address_id`)
    REFERENCES `u215407366_unir`.`Address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`ItemCategory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`ItemCategory` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`ItemCategory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `language` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `u215407366_unir`.`Item_has_ItemCategory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `u215407366_unir`.`Item_has_ItemCategory` ;

CREATE TABLE IF NOT EXISTS `u215407366_unir`.`Item_has_ItemCategory` (
  `Item_id` INT NOT NULL,
  `ItemCategory_id` INT NOT NULL,
  PRIMARY KEY (`Item_id`, `ItemCategory_id`),
  INDEX `fk_Item_has_ItemCategory_ItemCategory1_idx` (`ItemCategory_id` ASC),
  INDEX `fk_Item_has_ItemCategory_Item1_idx` (`Item_id` ASC),
  CONSTRAINT `fk_Item_has_ItemCategory_Item1`
    FOREIGN KEY (`Item_id`)
    REFERENCES `u215407366_unir`.`Item` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Item_has_ItemCategory_ItemCategory1`
    FOREIGN KEY (`ItemCategory_id`)
    REFERENCES `u215407366_unir`.`ItemCategory` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
