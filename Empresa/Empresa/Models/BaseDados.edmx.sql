
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/12/2017 21:25:15
-- Generated from EDMX file: c:\users\alain\documents\visual studio 2017\Projects\Empresa\Empresa\Models\BaseDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EmpresaDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_FuncionarioCargo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Funcionarios] DROP CONSTRAINT [FK_FuncionarioCargo];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Funcionarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Funcionarios];
GO
IF OBJECT_ID(N'[dbo].[Cargos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cargos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Funcionarios'
CREATE TABLE [dbo].[Funcionarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [Telefone] nvarchar(20)  NOT NULL,
    [Ativo] bit  NOT NULL,
    [Cargo_Id] int  NOT NULL
);
GO

-- Creating table 'Cargos'
CREATE TABLE [dbo].[Cargos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [Descricao] nvarchar(50)  NOT NULL,
    [Ativo] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Funcionarios'
ALTER TABLE [dbo].[Funcionarios]
ADD CONSTRAINT [PK_Funcionarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cargos'
ALTER TABLE [dbo].[Cargos]
ADD CONSTRAINT [PK_Cargos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Cargo_Id] in table 'Funcionarios'
ALTER TABLE [dbo].[Funcionarios]
ADD CONSTRAINT [FK_FuncionarioCargo]
    FOREIGN KEY ([Cargo_Id])
    REFERENCES [dbo].[Cargos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionarioCargo'
CREATE INDEX [IX_FK_FuncionarioCargo]
ON [dbo].[Funcionarios]
    ([Cargo_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------