
--使用CMDB資料庫
use CMDB;
go

--建立編輯行程表格

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'activity')      
BEGIN
drop table activity;

END                                                                                                                                                                                                                                                                                                                                                                                                                                                    
go


create table activity(

actID             int    identity (1,1) not null, --活動編號
act_name          varchar(50),                    --活動名稱
act_groups        int,                            --成團人數
act_current       int,                            --當前人數
BDate             time,                           --開始日期
EDate	          time,                           --結束日期
activity_state    int,                            --活動型態  0 = 建構中, 1 = 上架  ,  2 = 被檢舉  , 3 = 下架

constraint Achedule_primary_key primary key (actID));
 
--新增行程
INSERT INTO activity VALUES ('九份一日遊','15','5','09:00:00','10:00:00',default);
INSERT INTO activity VALUES ('金山一日遊','10','7','10:00:00','11:00:00',default);
INSERT INTO activity VALUES ('陽明山一日遊','12','6','13:00:00','15:00:00',default);


--查詢表格
SELECT * from activity
