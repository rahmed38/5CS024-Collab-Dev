SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;
USE `mydb`;

-- Table `mydb`.`User`
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARBINARY(255) NOT NULL, -- Changed to VARBINARY to store encrypted data --
  `arts` BOOLEAN NOT NULL DEFAULT FALSE,
  `business` BOOLEAN NOT NULL DEFAULT FALSE,
  `engineering` BOOLEAN NOT NULL DEFAULT FALSE,
  `health` BOOLEAN NOT NULL DEFAULT FALSE,
  `law` BOOLEAN NOT NULL DEFAULT FALSE,
  `science` BOOLEAN NOT NULL DEFAULT FALSE,
  `dance` BOOLEAN NOT NULL DEFAULT FALSE,
  `computer_science` BOOLEAN NOT NULL DEFAULT FALSE,
  `psychology` BOOLEAN NOT NULL DEFAULT FALSE,
  `marketing` BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE
ENGINE = InnoDB;

-- Ruqaiyyah 2336189 Encryption code --
INSERT INTO `mydb`.`User`(`username`,`password`)
VALUES ('encrypt_user',AES_ENCRYPT('encrypt_password','secret_key'));

SELECT `username`, AES_DECRYPT(`password`, 'secret_key') AS `password`
FROM `mydb`.`User`;
-- Ruqaiyyah 2336189 Encryption code --

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
