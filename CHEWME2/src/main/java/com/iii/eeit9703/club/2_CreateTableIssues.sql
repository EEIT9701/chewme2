use CMDB;


IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'comments')
BEGIN
IF (OBJECT_ID('FK_IC_IssueID', 'F') IS NOT NULL)
BEGIN
    Alter TABLE comments DROP CONSTRAINT FK_IC_IssueID 
END
END   
go

IF EXISTS (SELECT name FROM sysobjects
            WHERE name = 'issues')      
BEGIN
	DROP Table issues;
END
go

CREATE TABLE issues
(issueID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
clubID int NOT NULL,
issueTitle varchar(50),
issueContent varchar(300),
proposerID int,
issuepic varbinary(max))

go
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'clubs')
BEGIN
Alter TABLE issues ADD CONSTRAINT FK_CI_ClubID FOREIGN KEY(ClubID) REFERENCES clubs(ClubID)
END
go

insert into issues values (1,'第一個在社團裡面的議題','',1,null);
insert into issues values (1,'第二個在社團裡面的議題','因為是第二個社團示範一題',2,null);

select * from issues 