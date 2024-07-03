-- CreateTable
CREATE TABLE `SoftwareProductFeature` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,

    INDEX `SoftwareProductFeature_name_idx`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DifyTool` (
    `id` VARCHAR(191) NOT NULL,
    `workflowToken` VARCHAR(191) NOT NULL,
    `toolId` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,

    INDEX `DifyTool_userId_idx`(`userId`),
    UNIQUE INDEX `DifyTool_workflowToken_userId_key`(`workflowToken`, `userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
