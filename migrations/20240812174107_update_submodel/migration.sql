/*
  Warnings:

  - You are about to drop the column `tools` on the `SubscriptionModel` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `SubscriptionModel` DROP COLUMN `tools`,
    ADD COLUMN `chatBots` JSON NULL;
