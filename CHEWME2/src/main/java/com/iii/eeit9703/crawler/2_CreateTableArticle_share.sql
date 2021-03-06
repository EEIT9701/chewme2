--建立分享文表格

use CMDB;
go
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'article_share')      
BEGIN
drop table article_share
END
go



create table article_share(
articleID            int  IDENTITY (1,1) not null,
mId                    int,
attractionID     int,
contents          varchar(MAX),
constraint article_share_primary_key primary key (articleID));

go
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'attractions')
BEGIN
Alter TABLE article_share ADD CONSTRAINT FK_IC_attractionID FOREIGN KEY(attractionID) REFERENCES attractions(attractionID)
END
BEGIN
Alter TABLE article_share ADD CONSTRAINT FK_IC_mId FOREIGN KEY(mId) REFERENCES members(mId)
END
go


select * from article_share
