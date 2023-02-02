CREATE DATABASE [4_projeto]
GO

USE [4_projeto]
GO

CREATE TABLE users (
    id int IDENTITY(1,1) NOT NULL,
	name nvarchar(100) NOT NULL,

    CONSTRAINT PK_users PRIMARY KEY(id)
)
GO