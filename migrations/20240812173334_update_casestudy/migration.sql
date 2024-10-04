/*
  Warnings:

  - You are about to drop the column `architecture` on the `CaseStudy` table. All the data in the column will be lost.
  - You are about to drop the column `competetiveAnalysis` on the `CaseStudy` table. All the data in the column will be lost.
  - You are about to drop the column `hifiDesign` on the `CaseStudy` table. All the data in the column will be lost.
  - You are about to drop the column `images` on the `CaseStudy` table. All the data in the column will be lost.
  - You are about to drop the column `userFlow` on the `CaseStudy` table. All the data in the column will be lost.
  - You are about to drop the column `wireFrames` on the `CaseStudy` table. All the data in the column will be lost.
  - You are about to alter the column `userResearch` on the `CaseStudy` table. The data in that column could be lost. The data in that column will be cast from `Text` to `Json`.
  - You are about to alter the column `uniqueFeatures` on the `CaseStudy` table. The data in that column could be lost. The data in that column will be cast from `Text` to `Json`.
  - You are about to alter the column `keyLearning` on the `CaseStudy` table. The data in that column could be lost. The data in that column will be cast from `Text` to `Json`.

*/

ALTER TABLE `CaseStudy`
MODIFY `userResearch` TEXT NULL,
MODIFY `userPersonas` JSON NULL,
MODIFY `keyLearning`  TEXT NULL,
MODIFY  `uniqueFeatures`  TEXT NULL;

UPDATE `CaseStudy`
SET
    `userResearch` = NULL,
    `uniqueFeatures` = NULL,
    `keyLearning` = NULL,
    `userPersonas` = NULL;
-- AlterTable
ALTER TABLE `CaseStudy` DROP COLUMN `architecture`,
    DROP COLUMN `competetiveAnalysis`,
    DROP COLUMN `hifiDesign`,
    DROP COLUMN `images`,
    DROP COLUMN `userFlow`,
    DROP COLUMN `wireFrames`,
    ADD COLUMN `competitorAnalysis` JSON NULL,
    ADD COLUMN `primaryResearch` JSON NULL,
    ADD COLUMN `results` JSON NULL,
    MODIFY `userResearch` JSON NULL,
    MODIFY `userProblems` JSON NULL,
    MODIFY `possibleSolutions` JSON NULL,
    MODIFY `goals` JSON NULL,
    MODIFY `uniqueFeatures` JSON NULL,
    MODIFY `keyLearning` JSON NULL,
    MODIFY `userPersonas` JSON NULL;

-- CreateTable
CREATE TABLE `_CaseStudyToImage` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_CaseStudyToImage_AB_unique`(`A`, `B`),
    INDEX `_CaseStudyToImage_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
