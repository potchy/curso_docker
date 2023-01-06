CREATE DATABASE 3_com_containers;
USE 3_com_containers;

CREATE TABLE users (
    id int AUTO_INCREMENT NOT NULL,
	name nvarchar(100) NOT NULL,

    CONSTRAINT PK_users PRIMARY KEY(id)
);