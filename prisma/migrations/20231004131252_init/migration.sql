-- CreateTable
CREATE TABLE `products` (
    `id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `brand` VARCHAR(191) NOT NULL,
    `price` DOUBLE NOT NULL,
    `imageSrc` VARCHAR(191) NOT NULL,
    `rating` DOUBLE NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `reviews` VARCHAR(191) NOT NULL,
    `sizes` JSON NOT NULL,
    `product_type` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
