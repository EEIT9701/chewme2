use CMDB;
                                                                                                           

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'comments')      
BEGIN
	DROP Table comments;
END
go

CREATE TABLE comments
(commentID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
issueID int NOT NULL,
content varchar(50),
commenterId int,
commentDate Date)

go
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'issues')
BEGIN
Alter TABLE comments ADD CONSTRAINT FK_IC_IssueID FOREIGN KEY(issueID) REFERENCES issues(issueID)
END
go

insert into comments values (1,'十一月天氣有點冷,還是說這次去墾丁會更好',1,getDate());


select * from comments;
go