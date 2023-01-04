CREATE DATABASE [3_com_containers]
GO

USE [3_com_containers]
GO

CREATE TABLE users (
    id int IDENTITY(1,1) NOT NULL,
	name nvarchar(100) NOT NULL,

    CONSTRAINT PK_users PRIMARY KEY(id)
)
GO