
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/29/2017 19:47:24
-- Generated from EDMX file: C:\Users\Adam Przybylski\documents\visual studio 2017\Projects\Faktury\Faktury\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BazaFaktury];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AdresKontrahent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KontrahentSet] DROP CONSTRAINT [FK_AdresKontrahent];
GO
IF OBJECT_ID(N'[dbo].[FK_ProduktVAT]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProduktSet] DROP CONSTRAINT [FK_ProduktVAT];
GO
IF OBJECT_ID(N'[dbo].[FK_ProduktJednostka]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProduktSet] DROP CONSTRAINT [FK_ProduktJednostka];
GO
IF OBJECT_ID(N'[dbo].[FK_FakturaKontrahent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FakturaSet] DROP CONSTRAINT [FK_FakturaKontrahent];
GO
IF OBJECT_ID(N'[dbo].[FK_ProduktElementFaktury]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElementFakturySet] DROP CONSTRAINT [FK_ProduktElementFaktury];
GO
IF OBJECT_ID(N'[dbo].[FK_FakturaElementFaktury]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElementFakturySet] DROP CONSTRAINT [FK_FakturaElementFaktury];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[KontrahentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KontrahentSet];
GO
IF OBJECT_ID(N'[dbo].[AdresSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdresSet];
GO
IF OBJECT_ID(N'[dbo].[ProduktSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProduktSet];
GO
IF OBJECT_ID(N'[dbo].[JednostkaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JednostkaSet];
GO
IF OBJECT_ID(N'[dbo].[VATSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VATSet1];
GO
IF OBJECT_ID(N'[dbo].[FakturaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FakturaSet];
GO
IF OBJECT_ID(N'[dbo].[ElementFakturySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElementFakturySet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'KontrahentSet'
CREATE TABLE [dbo].[KontrahentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwa] nvarchar(max)  NOT NULL,
    [NIP] nvarchar(10)  NULL,
    [Telefon] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Adres_Id] int  NOT NULL
);
GO

-- Creating table 'AdresSet'
CREATE TABLE [dbo].[AdresSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ulica1] nvarchar(max)  NOT NULL,
    [Ulica2] nvarchar(max)  NULL,
    [Ulica3] nvarchar(max)  NULL,
    [Miasto] nvarchar(max)  NOT NULL,
    [KodPocztowy] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProduktSet'
CREATE TABLE [dbo].[ProduktSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwa] nvarchar(max)  NOT NULL,
    [CenaNetto] decimal(18,0)  NOT NULL,
    [VAT_Id] int  NULL,
    [Jednostka_Id] int  NOT NULL
);
GO

-- Creating table 'JednostkaSet'
CREATE TABLE [dbo].[JednostkaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwa] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VATSet1'
CREATE TABLE [dbo].[VATSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Wartość] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'FakturaSet'
CREATE TABLE [dbo].[FakturaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NumerFaktury] nvarchar(max)  NOT NULL,
    [DataWystawienia] datetime  NOT NULL,
    [DataSprzedazy] datetime  NOT NULL,
    [Kontrahent_Id] int  NOT NULL,
    [FormaZaplaty_Id] int  NOT NULL
);
GO

-- Creating table 'ElementFakturySet'
CREATE TABLE [dbo].[ElementFakturySet] (
    [Id] nvarchar(max)  NOT NULL,
    [Ilosc] decimal(18,0)  NOT NULL,
    [Produkt_Id] int  NOT NULL,
    [Faktura_Id] int  NOT NULL
);
GO

-- Creating table 'FormaZaplatySet'
CREATE TABLE [dbo].[FormaZaplatySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nazwa] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'KontrahentSet'
ALTER TABLE [dbo].[KontrahentSet]
ADD CONSTRAINT [PK_KontrahentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdresSet'
ALTER TABLE [dbo].[AdresSet]
ADD CONSTRAINT [PK_AdresSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProduktSet'
ALTER TABLE [dbo].[ProduktSet]
ADD CONSTRAINT [PK_ProduktSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JednostkaSet'
ALTER TABLE [dbo].[JednostkaSet]
ADD CONSTRAINT [PK_JednostkaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VATSet1'
ALTER TABLE [dbo].[VATSet1]
ADD CONSTRAINT [PK_VATSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FakturaSet'
ALTER TABLE [dbo].[FakturaSet]
ADD CONSTRAINT [PK_FakturaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ElementFakturySet'
ALTER TABLE [dbo].[ElementFakturySet]
ADD CONSTRAINT [PK_ElementFakturySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FormaZaplatySet'
ALTER TABLE [dbo].[FormaZaplatySet]
ADD CONSTRAINT [PK_FormaZaplatySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Adres_Id] in table 'KontrahentSet'
ALTER TABLE [dbo].[KontrahentSet]
ADD CONSTRAINT [FK_AdresKontrahent]
    FOREIGN KEY ([Adres_Id])
    REFERENCES [dbo].[AdresSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdresKontrahent'
CREATE INDEX [IX_FK_AdresKontrahent]
ON [dbo].[KontrahentSet]
    ([Adres_Id]);
GO

-- Creating foreign key on [VAT_Id] in table 'ProduktSet'
ALTER TABLE [dbo].[ProduktSet]
ADD CONSTRAINT [FK_ProduktVAT]
    FOREIGN KEY ([VAT_Id])
    REFERENCES [dbo].[VATSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProduktVAT'
CREATE INDEX [IX_FK_ProduktVAT]
ON [dbo].[ProduktSet]
    ([VAT_Id]);
GO

-- Creating foreign key on [Jednostka_Id] in table 'ProduktSet'
ALTER TABLE [dbo].[ProduktSet]
ADD CONSTRAINT [FK_ProduktJednostka]
    FOREIGN KEY ([Jednostka_Id])
    REFERENCES [dbo].[JednostkaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProduktJednostka'
CREATE INDEX [IX_FK_ProduktJednostka]
ON [dbo].[ProduktSet]
    ([Jednostka_Id]);
GO

-- Creating foreign key on [Kontrahent_Id] in table 'FakturaSet'
ALTER TABLE [dbo].[FakturaSet]
ADD CONSTRAINT [FK_FakturaKontrahent]
    FOREIGN KEY ([Kontrahent_Id])
    REFERENCES [dbo].[KontrahentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FakturaKontrahent'
CREATE INDEX [IX_FK_FakturaKontrahent]
ON [dbo].[FakturaSet]
    ([Kontrahent_Id]);
GO

-- Creating foreign key on [Produkt_Id] in table 'ElementFakturySet'
ALTER TABLE [dbo].[ElementFakturySet]
ADD CONSTRAINT [FK_ProduktElementFaktury]
    FOREIGN KEY ([Produkt_Id])
    REFERENCES [dbo].[ProduktSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProduktElementFaktury'
CREATE INDEX [IX_FK_ProduktElementFaktury]
ON [dbo].[ElementFakturySet]
    ([Produkt_Id]);
GO

-- Creating foreign key on [Faktura_Id] in table 'ElementFakturySet'
ALTER TABLE [dbo].[ElementFakturySet]
ADD CONSTRAINT [FK_FakturaElementFaktury]
    FOREIGN KEY ([Faktura_Id])
    REFERENCES [dbo].[FakturaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FakturaElementFaktury'
CREATE INDEX [IX_FK_FakturaElementFaktury]
ON [dbo].[ElementFakturySet]
    ([Faktura_Id]);
GO

-- Creating foreign key on [FormaZaplaty_Id] in table 'FakturaSet'
ALTER TABLE [dbo].[FakturaSet]
ADD CONSTRAINT [FK_FormaZaplatyFaktura]
    FOREIGN KEY ([FormaZaplaty_Id])
    REFERENCES [dbo].[FormaZaplatySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FormaZaplatyFaktura'
CREATE INDEX [IX_FK_FormaZaplatyFaktura]
ON [dbo].[FakturaSet]
    ([FormaZaplaty_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------