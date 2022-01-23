-- -----------------------------------------------------
-- Schema LIVE_YOUR_ADVENTURE
-- -----------------------------------------------------
DROP DATABASE IF EXISTS LIVE_YOUR_ADVENTURE; /*FALTA LA id_adventure (entidad debil), la foreign key*/
CREATE DATABASE IF NOT EXISTS LIVE_YOUR_ADVENTURE;
USE LIVE_YOUR_ADVENTURE ;

-- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.player (
  id_player INT,
  password VARCHAR(45),
  username VARCHAR(45),
  user_creation VARCHAR(45),
  user_modification VARCHAR(45),
  date_creation DATETIME,
  date_modification DATETIME);

-- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`adventure`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.adventure (
  id_adventure INT,
  name VARCHAR(500),
  description VARCHAR(500),
  user_modification VARCHAR(45),
  user_creation VARCHAR(45),
  date_creation DATETIME,
  date_modification DATETIME);
  
  -- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`step`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.step (
  id_step INT,
  description VARCHAR(500),
  end_step BIT(1),
  user_creation VARCHAR(45),
  user_modification VARCHAR(45),
  date_creation DATETIME,
  date_modification DATETIME,
  id_adventure INT);

-- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.option (
  id_option INT,
  id_last_step INT,
  id_next_step INT,
  description VARCHAR(500),
  user_modification VARCHAR(45),
  user_creation VARCHAR(45),
  date_modification DATETIME,
  date_creation DATETIME,
  answer VARCHAR(500));

-- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`character`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.character (
  id_character INT,
  name VARCHAR(45),
  description VARCHAR(500),
  user_creation VARCHAR(45),
  user_modification VARCHAR(45),
  date_creation DATETIME,
  date_modification DATETIME);

-- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.game (
  id_game INT,
  date DATE,
  user_creation VARCHAR(45),
  user_modification VARCHAR(45),
  date_creation DATETIME,
  date_modification DATETIME,
  id_adventure INT,
  id_player INT,
  id_character INT);

-- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.record (
  id_record INT,
  id_game INT,
  id_option INT,
  id_step INT,
  date DATETIME,
  date_creation DATETIME,
  date_modification DATETIME,
  user_creation VARCHAR(45),
  user_modification VARCHAR(45));

-- -----------------------------------------------------
-- Table `LIVE_YOUR_ADVENTURE`.`adventure_character`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LIVE_YOUR_ADVENTURE.adventure_character (
  id_character INT,
  id_adventure INT);
