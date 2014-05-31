
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/31/2014 07:44:58
-- Generated from EDMX file: C:\Users\Sezer\Documents\GitHub\Gulf-FutureWebSite\Gulf-futureWeb\DataController\db.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Web_Gulf-Future];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CityLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_CityLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_ConturyCity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cities] DROP CONSTRAINT [FK_ConturyCity];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationRealStatProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RealStatProfiles] DROP CONSTRAINT [FK_LocationRealStatProfile];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AboutUs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AboutUs];
GO
IF OBJECT_ID(N'[dbo].[Cities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cities];
GO
IF OBJECT_ID(N'[dbo].[Conturies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Conturies];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[OurServices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OurServices];
GO
IF OBJECT_ID(N'[dbo].[RealStatProfiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RealStatProfiles];
GO
IF OBJECT_ID(N'[dbo].[SlideConfigs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SlideConfigs];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[WebSiteInfoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WebSiteInfoes];
GO
IF OBJECT_ID(N'[dbo].[Contacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts];
GO
IF OBJECT_ID(N'[dbo].[PhotoGellaries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhotoGellaries];
GO
IF OBJECT_ID(N'[dbo].[OurNews]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OurNews];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AboutUs'
CREATE TABLE [dbo].[AboutUs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArAboutUs] nvarchar(max)  NOT NULL,
    [EnAboutUs] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cities'
CREATE TABLE [dbo].[Cities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArCityName] nvarchar(max)  NOT NULL,
    [ArDecription] nvarchar(max)  NOT NULL,
    [ConturyId] int  NOT NULL,
    [EnCityName] nvarchar(max)  NOT NULL,
    [EnDescription] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Conturies'
CREATE TABLE [dbo].[Conturies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EnContryName] nvarchar(max)  NOT NULL,
    [ArDecription] nvarchar(max)  NOT NULL,
    [ArContryName] nvarchar(max)  NOT NULL,
    [EnDescription] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArLocationName] nvarchar(max)  NOT NULL,
    [ArLocationDescrition] nvarchar(max)  NOT NULL,
    [CityId] int  NOT NULL,
    [EnLocationName] nvarchar(max)  NOT NULL,
    [EnDescription] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OurServices'
CREATE TABLE [dbo].[OurServices] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArOurService] nvarchar(max)  NOT NULL,
    [EnOurService] nvarchar(max)  NOT NULL,
    [ArDescription] nvarchar(max)  NOT NULL,
    [EnDescription] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RealStatProfiles'
CREATE TABLE [dbo].[RealStatProfiles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArTitle] nvarchar(max)  NOT NULL,
    [ArDescription] nvarchar(max)  NOT NULL,
    [price] nvarchar(max)  NOT NULL,
    [image1] nvarchar(max)  NOT NULL,
    [image2] nvarchar(max)  NOT NULL,
    [image3] nvarchar(max)  NOT NULL,
    [LocationId] int  NOT NULL,
    [EnTitle] nvarchar(max)  NOT NULL,
    [EnDescription] nvarchar(max)  NOT NULL,
    [Image4] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SlideConfigs'
CREATE TABLE [dbo].[SlideConfigs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArSlide] nvarchar(max)  NOT NULL,
    [EnSlide] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(50)  NOT NULL,
    [Email] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [FullName] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'WebSiteInfoes'
CREATE TABLE [dbo].[WebSiteInfoes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArWebSiteName] nvarchar(max)  NOT NULL,
    [WebSitDescription] nvarchar(max)  NOT NULL,
    [WebsiteTags] nvarchar(max)  NOT NULL,
    [DefaultLanguge] nvarchar(10)  NOT NULL,
    [EnWebSiteName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ArContact] nvarchar(max)  NOT NULL,
    [EnContact] nvarchar(max)  NOT NULL,
    [Fb] nvarchar(max)  NULL,
    [youtube] nvarchar(max)  NULL,
    [tweeter] nvarchar(max)  NULL,
    [googleplus] nvarchar(max)  NULL,
    [linkedIn] nvarchar(max)  NULL,
    [instegram] nvarchar(max)  NULL
);
GO

-- Creating table 'PhotoGellaries'
CREATE TABLE [dbo].[PhotoGellaries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [img] nvarchar(max)  NOT NULL,
    [arDescription] nvarchar(max)  NOT NULL,
    [EnDescription] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OurNews'
CREATE TABLE [dbo].[OurNews] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateOf] nvarchar(max)  NOT NULL,
    [ArCaption] nvarchar(max)  NOT NULL,
    [ArSummary] nvarchar(max)  NOT NULL,
    [ArDetails] nvarchar(max)  NOT NULL,
    [Photo] nvarchar(max)  NOT NULL,
    [EnCaption] nvarchar(max)  NOT NULL,
    [EnSummary] nvarchar(max)  NOT NULL,
    [EnDetails] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AboutUs'
ALTER TABLE [dbo].[AboutUs]
ADD CONSTRAINT [PK_AboutUs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [PK_Cities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Conturies'
ALTER TABLE [dbo].[Conturies]
ADD CONSTRAINT [PK_Conturies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OurServices'
ALTER TABLE [dbo].[OurServices]
ADD CONSTRAINT [PK_OurServices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RealStatProfiles'
ALTER TABLE [dbo].[RealStatProfiles]
ADD CONSTRAINT [PK_RealStatProfiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SlideConfigs'
ALTER TABLE [dbo].[SlideConfigs]
ADD CONSTRAINT [PK_SlideConfigs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WebSiteInfoes'
ALTER TABLE [dbo].[WebSiteInfoes]
ADD CONSTRAINT [PK_WebSiteInfoes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PhotoGellaries'
ALTER TABLE [dbo].[PhotoGellaries]
ADD CONSTRAINT [PK_PhotoGellaries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OurNews'
ALTER TABLE [dbo].[OurNews]
ADD CONSTRAINT [PK_OurNews]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CityId] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_CityLocation]
    FOREIGN KEY ([CityId])
    REFERENCES [dbo].[Cities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CityLocation'
CREATE INDEX [IX_FK_CityLocation]
ON [dbo].[Locations]
    ([CityId]);
GO

-- Creating foreign key on [ConturyId] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [FK_ConturyCity]
    FOREIGN KEY ([ConturyId])
    REFERENCES [dbo].[Conturies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ConturyCity'
CREATE INDEX [IX_FK_ConturyCity]
ON [dbo].[Cities]
    ([ConturyId]);
GO

-- Creating foreign key on [LocationId] in table 'RealStatProfiles'
ALTER TABLE [dbo].[RealStatProfiles]
ADD CONSTRAINT [FK_LocationRealStatProfile]
    FOREIGN KEY ([LocationId])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationRealStatProfile'
CREATE INDEX [IX_FK_LocationRealStatProfile]
ON [dbo].[RealStatProfiles]
    ([LocationId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------