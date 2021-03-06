use CMDB;

--IF EXISTS (SELECT name FROM sysobjects
--            WHERE type='u' AND name = 'club_activity_list')      
--BEGIN
--IF (OBJECT_ID('FK_CA_ClubID', 'F') IS NOT NULL)
--BEGIN
--    Alter TABLE club_activity_list DROP CONSTRAINT FK_CA_ClubID
--END

--END     
--go
                                                     
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'questions')      
BEGIN
IF (OBJECT_ID('FK_CQ_ClubID', 'F') IS NOT NULL)
BEGIN
    Alter TABLE questions DROP CONSTRAINT FK_CQ_ClubID 
END 
END
go                                                      

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'issues')      
BEGIN
IF (OBJECT_ID('FK_CI_ClubID', 'F') IS NOT NULL)
BEGIN
   Alter TABLE issues DROP CONSTRAINT FK_CI_ClubID 
END 

END
                                                                                                  
go

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'club_member_list')      
BEGIN
Alter TABLE club_member_list DROP CONSTRAINT FK_CM_ClubID 
END


IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'clubs')      
BEGIN
DROP Table clubs
END
go

CREATE TABLE clubs
(clubID int  PRIMARY KEY  IDENTITY(1,1) NOT NULL, 
clubName varchar(50) NOT NULL,
managerId int ,
locationId  int NOT NULL,
brief varchar(50),
refURL varchar(50),
vistors int,
vistorsInMonth int,
addr varchar(50)
);

insert into clubs values('chewme旅行社',1,1,'我們是chewme旅行社,希望大家能夠來這結交到好友','http://www.chewme.com',6,2,'台北市大安區大安捷運站');
insert into clubs values('建業旅行社',1,1,'建業旅行社,提供重機行程','http://www.chianya.com',2,1,'新北市新店區民權路');

select * from clubs

