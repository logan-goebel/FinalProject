IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241215204502_mssql.local_migration_850'
)
BEGIN
    CREATE TABLE [ContactForm] (
        [Id] int NOT NULL IDENTITY,
        [Email] nvarchar(max) NOT NULL,
        [QuestionsAndConcerns] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_ContactForm] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241215204502_mssql.local_migration_850'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241215204502_mssql.local_migration_850', N'8.0.11');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241215214605_mssql.local_migration_461'
)
BEGIN
    CREATE TABLE [Form] (
        [Id] int NOT NULL IDENTITY,
        [FullName] nvarchar(max) NOT NULL,
        [Email] nvarchar(max) NOT NULL,
        [PhoneNumber] int NOT NULL,
        [Address] nvarchar(max) NOT NULL,
        [City] nvarchar(max) NOT NULL,
        [State] nvarchar(max) NOT NULL,
        [HouseSize] nvarchar(max) NOT NULL,
        [NumberOfPets] int NOT NULL,
        [PreviousDogOwner] bit NOT NULL,
        [QuestionsConcerns] nvarchar(max) NULL,
        CONSTRAINT [PK_Form] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241215214605_mssql.local_migration_461'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241215214605_mssql.local_migration_461', N'8.0.11');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241216022049_mssql.local_migration_816'
)
BEGIN
    CREATE TABLE [DogList] (
        [Id] int NOT NULL IDENTITY,
        [DogName] nvarchar(max) NULL,
        [DogAge] int NOT NULL,
        [DogDescription] nvarchar(max) NULL,
        [DogBreed] nvarchar(max) NULL,
        CONSTRAINT [PK_DogList] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20241216022049_mssql.local_migration_816'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20241216022049_mssql.local_migration_816', N'8.0.11');
END;
GO

COMMIT;
GO

