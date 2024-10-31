/*
  Warnings:

  - You are about to drop the `city` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `country` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `countrylanguage` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `city` DROP FOREIGN KEY `city_ibfk_1`;

-- DropForeignKey
ALTER TABLE `countrylanguage` DROP FOREIGN KEY `countryLanguage_ibfk_1`;

-- DropTable
DROP TABLE `city`;

-- DropTable
DROP TABLE `country`;

-- DropTable
DROP TABLE `countrylanguage`;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nimi` VARCHAR(191) NOT NULL,
    `vanus` INTEGER NOT NULL,
    `email` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
