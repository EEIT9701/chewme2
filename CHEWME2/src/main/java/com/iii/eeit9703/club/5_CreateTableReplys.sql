use CMDB;

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'replys')      
BEGIN

	DROP Table replys;
END
go

CREATE TABLE replys
(reqlyId int PRIMARY KEY IDENTITY(1,1) NOT NULL,
qId int NOT NULL,
content varchar(300),
replyerId int,
replyDate Date,
readed bit)

go
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'questions')
BEGIN
Alter TABLE replys ADD CONSTRAINT FK_QR_quetionID FOREIGN KEY(qId) REFERENCES questions(questionID)
END
go


insert into replys values (1,'回覆:番薯島小霸王你好,感謝你的來信,我們的社團大約每個禮拜都會有一天的出團活動,大約在一個禮拜前就會公布我們的行程及其價格,可以點選參加我們的社團,我們會不定期的寄給你們我們最新行程',2,getDate(),1);
insert into replys values (1,'回覆:感謝你,那請問社團有年費或月費的制度嗎?',1,getDate(),1);
insert into replys values (1,'回覆:我們的社團並沒有收取任何的年費及月費,我們的費用為每次單次的出團費用?',2,getDate(),1);
insert into replys values (1,'回覆:你好,我大概知道了,謝謝?',1,getDate(),0);

select * from replys;