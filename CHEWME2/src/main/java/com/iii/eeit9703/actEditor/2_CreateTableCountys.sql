--建立縣市區域表格

use CMDB;
go

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'countys')      
BEGIN
drop table countys;

END                                                                                                                                                                                                                                                                                                                                                                                                                                                    
go

create table countys (
 countyID         int not null,
 countyName			varchar(10),
 countryName			varchar(10),
 countryID			varchar(5),
 constraint countys_primary_key primary key (countyID));

insert into countys values (100,'中正區','臺北市','TPE');
insert into countys values (103,'大同區','臺北市','TPE');
insert into countys values (104,'中山區','臺北市','TPE');
insert into countys values (105,'松山區','臺北市','TPE');
insert into countys values (106,'大安區','臺北市','TPE');
insert into countys values (108,'萬華區','臺北市','TPE');
insert into countys values (110,'信義區','臺北市','TPE');
insert into countys values (111,'士林區','臺北市','TPE');
insert into countys values (112,'北投區','臺北市','TPE');
insert into countys values (114,'內湖區','臺北市','TPE');
insert into countys values (115,'南港區','臺北市','TPE');
insert into countys values (116,'文山區','臺北市','TPE');
insert into countys values (200,'仁愛區','基隆市','KEE');
insert into countys values (201,'信義區','基隆市','KEE');
insert into countys values (202,'中正區','基隆市','KEE');
insert into countys values (203,'中山區','基隆市','KEE');
insert into countys values (204,'安樂區','基隆市','KEE');
insert into countys values (205,'暖暖區','基隆市','KEE');
insert into countys values (206,'七堵區','基隆市','KEE');
insert into countys values (207,'萬里區','新北市','NWT');
insert into countys values (208,'金山區','新北市','NWT');
insert into countys values (209,'南竿鄉','連江縣','LIE');
insert into countys values (210,'北竿鄉','連江縣','LIE');
insert into countys values (211,'莒光鄉','連江縣','LIE');
insert into countys values (212,'東引鄉','連江縣','LIE');
insert into countys values (220,'板橋區','新北市','NWT');
insert into countys values (221,'汐止區','新北市','NWT');
insert into countys values (222,'深坑區','新北市','NWT');
insert into countys values (223,'石碇區','新北市','NWT');
insert into countys values (224,'瑞芳區','新北市','NWT');
insert into countys values (226,'平溪區','新北市','NWT');
insert into countys values (227,'雙溪區','新北市','NWT');
insert into countys values (228,'貢寮區','新北市','NWT');
insert into countys values (231,'新店區','新北市','NWT');
insert into countys values (232,'坪林區','新北市','NWT');
insert into countys values (233,'烏來區','新北市','NWT');
insert into countys values (234,'永和區','新北市','NWT');
insert into countys values (235,'中和區','新北市','NWT');
insert into countys values (236,'土城區','新北市','NWT');
insert into countys values (237,'三峽區','新北市','NWT');
insert into countys values (238,'樹林區','新北市','NWT');
insert into countys values (239,'鶯歌區','新北市','NWT');
insert into countys values (241,'三重區','新北市','NWT');
insert into countys values (242,'新莊區','新北市','NWT');
insert into countys values (243,'泰山區','新北市','NWT');
insert into countys values (244,'林口區','新北市','NWT');
insert into countys values (247,'蘆洲區','新北市','NWT');
insert into countys values (248,'五股區','新北市','NWT');
insert into countys values (249,'八里區','新北市','NWT');
insert into countys values (251,'淡水區','新北市','NWT');
insert into countys values (252,'三芝區','新北市','NWT');
insert into countys values (253,'石門區','新北市','NWT');
insert into countys values (260,'宜蘭市','宜蘭縣','ILA');
insert into countys values (261,'頭城鎮','宜蘭縣','ILA');
insert into countys values (262,'礁溪鄉','宜蘭縣','ILA');
insert into countys values (263,'壯圍鄉','宜蘭縣','ILA');
insert into countys values (264,'員山鄉','宜蘭縣','ILA');
insert into countys values (265,'羅東鎮','宜蘭縣','ILA');
insert into countys values (266,'三星鄉','宜蘭縣','ILA');
insert into countys values (267,'大同鄉','宜蘭縣','ILA');
insert into countys values (268,'五結鄉','宜蘭縣','ILA');
insert into countys values (269,'冬山鄉','宜蘭縣','ILA');
insert into countys values (270,'蘇澳鎮','宜蘭縣','ILA');
insert into countys values (272,'南澳鄉','宜蘭縣','ILA');
insert into countys values (300,'東區','新竹市','HSZ');
insert into countys values (301,'北區','新竹市','HSZ');
insert into countys values (309,'香山區','新竹市','HSZ');
insert into countys values (302,'竹北市','新竹縣','HSQ');
insert into countys values (303,'湖口鄉','新竹縣','HSQ');
insert into countys values (304,'新豐鄉','新竹縣','HSQ');
insert into countys values (305,'新埔鎮','新竹縣','HSQ');
insert into countys values (306,'關西鎮','新竹縣','HSQ');
insert into countys values (307,'芎林鄉','新竹縣','HSQ');
insert into countys values (308,'寶山鄉','新竹縣','HSQ');
insert into countys values (310,'竹東鎮','新竹縣','HSQ');
insert into countys values (311,'五峰鄉','新竹縣','HSQ');
insert into countys values (312,'橫山鄉','新竹縣','HSQ');
insert into countys values (313,'尖石鄉','新竹縣','HSQ');
insert into countys values (314,'北埔鄉','新竹縣','HSQ');
insert into countys values (315,'峨眉鄉','新竹縣','HSQ');
insert into countys values (320,'中壢區','桃園市','TAO');
insert into countys values (324,'平鎮區','桃園市','TAO');
insert into countys values (325,'龍潭區','桃園市','TAO');
insert into countys values (326,'楊梅區','桃園市','TAO');
insert into countys values (327,'新屋區','桃園市','TAO');
insert into countys values (328,'觀音區','桃園市','TAO');
insert into countys values (330,'桃園區','桃園市','TAO');
insert into countys values (333,'龜山區','桃園市','TAO');
insert into countys values (334,'八德區','桃園市','TAO');
insert into countys values (335,'大溪區','桃園市','TAO');
insert into countys values (336,'復興區','桃園市','TAO');
insert into countys values (337,'大園區','桃園市','TAO');
insert into countys values (338,'蘆竹區','桃園市','TAO');
insert into countys values (350,'竹南鎮','苗栗縣','MIA');
insert into countys values (351,'頭份市','苗栗縣','MIA');
insert into countys values (352,'三灣鄉','苗栗縣','MIA');
insert into countys values (353,'南庄鄉','苗栗縣','MIA');
insert into countys values (354,'獅潭鄉','苗栗縣','MIA');
insert into countys values (356,'後龍鎮','苗栗縣','MIA');
insert into countys values (357,'通霄鎮','苗栗縣','MIA');
insert into countys values (358,'苑裡鎮','苗栗縣','MIA');
insert into countys values (360,'苗栗市','苗栗縣','MIA');
insert into countys values (361,'造橋鄉','苗栗縣','MIA');
insert into countys values (362,'頭屋鄉','苗栗縣','MIA');
insert into countys values (363,'公館鄉','苗栗縣','MIA');
insert into countys values (364,'大湖鄉','苗栗縣','MIA');
insert into countys values (365,'泰安鄉','苗栗縣','MIA');
insert into countys values (366,'銅鑼鄉','苗栗縣','MIA');
insert into countys values (367,'三義鄉','苗栗縣','MIA');
insert into countys values (368,'西湖鄉','苗栗縣','MIA');
insert into countys values (369,'卓蘭鎮','苗栗縣','MIA');
insert into countys values (400,'市中區','臺中市','TXG');
insert into countys values (401,'市東區','臺中市','TXG');
insert into countys values (402,'市南區','臺中市','TXG');
insert into countys values (403,'市西區','臺中市','TXG');
insert into countys values (404,'市北區','臺中市','TXG');
insert into countys values (406,'北屯區','臺中市','TXG');
insert into countys values (407,'西屯區','臺中市','TXG');
insert into countys values (408,'南屯區','臺中市','TXG');
insert into countys values (411,'太平區','臺中市','TXG');
insert into countys values (412,'大里區','臺中市','TXG');
insert into countys values (413,'霧峰區','臺中市','TXG');
insert into countys values (414,'烏日區','臺中市','TXG');
insert into countys values (420,'豐原區','臺中市','TXG');
insert into countys values (421,'后里區','臺中市','TXG');
insert into countys values (422,'石岡區','臺中市','TXG');
insert into countys values (423,'東勢區','臺中市','TXG');
insert into countys values (424,'和平區','臺中市','TXG');
insert into countys values (426,'新社區','臺中市','TXG');
insert into countys values (427,'潭子區','臺中市','TXG');
insert into countys values (428,'大雅區','臺中市','TXG');
insert into countys values (429,'神岡區','臺中市','TXG');
insert into countys values (432,'大肚區','臺中市','TXG');
insert into countys values (433,'沙鹿區','臺中市','TXG');
insert into countys values (434,'龍井區','臺中市','TXG');
insert into countys values (435,'梧棲區','臺中市','TXG');
insert into countys values (436,'清水區','臺中市','TXG');
insert into countys values (437,'大甲區','臺中市','TXG');
insert into countys values (438,'外埔區','臺中市','TXG');
insert into countys values (439,'大安區','臺中市','TXG');
insert into countys values (500,'彰化市','彰化縣','CHA');
insert into countys values (502,'芬園鄉','彰化縣','CHA');
insert into countys values (503,'花壇鄉','彰化縣','CHA');
insert into countys values (504,'秀水鄉','彰化縣','CHA');
insert into countys values (505,'鹿港鎮','彰化縣','CHA');
insert into countys values (506,'福興鄉','彰化縣','CHA');
insert into countys values (507,'線西鄉','彰化縣','CHA');
insert into countys values (508,'和美鎮','彰化縣','CHA');
insert into countys values (509,'伸港鄉','彰化縣','CHA');
insert into countys values (510,'員林市','彰化縣','CHA');
insert into countys values (511,'社頭鄉','彰化縣','CHA');
insert into countys values (512,'永靖鄉','彰化縣','CHA');
insert into countys values (513,'埔心鄉','彰化縣','CHA');
insert into countys values (514,'溪湖鎮','彰化縣','CHA');
insert into countys values (515,'大村鄉','彰化縣','CHA');
insert into countys values (516,'埔鹽鄉','彰化縣','CHA');
insert into countys values (520,'田中鎮','彰化縣','CHA');
insert into countys values (521,'北斗鎮','彰化縣','CHA');
insert into countys values (522,'田尾鄉','彰化縣','CHA');
insert into countys values (523,'埤頭鄉','彰化縣','CHA');
insert into countys values (524,'溪州鄉','彰化縣','CHA');
insert into countys values (525,'竹塘鄉','彰化縣','CHA');
insert into countys values (526,'二林鎮','彰化縣','CHA');
insert into countys values (527,'大城鄉','彰化縣','CHA');
insert into countys values (528,'芳苑鄉','彰化縣','CHA');
insert into countys values (530,'二水鄉','彰化縣','CHA');
insert into countys values (540,'南投市','南投縣','NAN');
insert into countys values (541,'中寮鄉','南投縣','NAN');
insert into countys values (542,'草屯鎮','南投縣','NAN');
insert into countys values (544,'國姓鄉','南投縣','NAN');
insert into countys values (545,'埔里鎮','南投縣','NAN');
insert into countys values (546,'仁愛鄉','南投縣','NAN');
insert into countys values (551,'名間鄉','南投縣','NAN');
insert into countys values (552,'集集鎮','南投縣','NAN');
insert into countys values (553,'水里鄉','南投縣','NAN');
insert into countys values (555,'魚池鄉','南投縣','NAN');
insert into countys values (556,'信義鄉','南投縣','NAN');
insert into countys values (557,'竹山鎮','南投縣','NAN');
insert into countys values (558,'鹿谷鄉','南投縣','NAN');
insert into countys values (600,'東區','嘉義市','CYI');
insert into countys values (601,'西區','嘉義市','CYI');
insert into countys values (602,'番路鄉','嘉義縣','CYQ');
insert into countys values (603,'梅山鄉','嘉義縣','CYQ');
insert into countys values (604,'竹崎鄉','嘉義縣','CYQ');
insert into countys values (605,'里山鄉','嘉義縣','CYQ');
insert into countys values (606,'中埔鄉','嘉義縣','CYQ');
insert into countys values (607,'大埔鄉','嘉義縣','CYQ');
insert into countys values (608,'水上鄉','嘉義縣','CYQ');
insert into countys values (611,'鹿草鄉','嘉義縣','CYQ');
insert into countys values (612,'太保市','嘉義縣','CYQ');
insert into countys values (613,'朴子市','嘉義縣','CYQ');
insert into countys values (614,'東石鄉','嘉義縣','CYQ');
insert into countys values (615,'六腳鄉','嘉義縣','CYQ');
insert into countys values (616,'新港鄉','嘉義縣','CYQ');
insert into countys values (621,'民雄鄉','嘉義縣','CYQ');
insert into countys values (622,'大林鎮','嘉義縣','CYQ');
insert into countys values (623,'溪口鄉','嘉義縣','CYQ');
insert into countys values (624,'義竹鄉','嘉義縣','CYQ');
insert into countys values (625,'布袋鎮','嘉義縣','CYQ');
insert into countys values (630,'斗南鎮','雲林縣','YUN');
insert into countys values (631,'大埤鄉','雲林縣','YUN');
insert into countys values (632,'虎尾鎮','雲林縣','YUN');
insert into countys values (633,'土庫鎮','雲林縣','YUN');
insert into countys values (634,'褒忠鄉','雲林縣','YUN');
insert into countys values (635,'東勢鄉','雲林縣','YUN');
insert into countys values (636,'臺西鄉','雲林縣','YUN');
insert into countys values (637,'崙背鄉','雲林縣','YUN');
insert into countys values (638,'麥寮鄉','雲林縣','YUN');
insert into countys values (640,'斗六市','雲林縣','YUN');
insert into countys values (643,'林內鄉','雲林縣','YUN');
insert into countys values (646,'古坑鄉','雲林縣','YUN');
insert into countys values (647,'莿桐鄉','雲林縣','YUN');
insert into countys values (648,'西螺鎮','雲林縣','YUN');
insert into countys values (649,'二崙鄉','雲林縣','YUN');
insert into countys values (651,'北港鎮','雲林縣','YUN');
insert into countys values (652,'水林鄉','雲林縣','YUN');
insert into countys values (653,'口湖鄉','雲林縣','YUN');
insert into countys values (654,'四湖鄉','雲林縣','YUN');
insert into countys values (655,'元長鄉','雲林縣','YUN');
insert into countys values (700,'中西區','臺南市','TNN');
insert into countys values (701,'東區','臺南市','TNN');
insert into countys values (702,'南區','臺南市','TNN');
insert into countys values (704,'北區','臺南市','TNN');
insert into countys values (708,'安平區','臺南市','TNN');
insert into countys values (709,'安南區','臺南市','TNN');
insert into countys values (710,'永康區','臺南市','TNN');
insert into countys values (711,'歸仁區','臺南市','TNN');
insert into countys values (712,'新化區','臺南市','TNN');
insert into countys values (713,'左鎮區','臺南市','TNN');
insert into countys values (714,'玉井區','臺南市','TNN');
insert into countys values (715,'楠西區','臺南市','TNN');
insert into countys values (716,'南化區','臺南市','TNN');
insert into countys values (717,'仁德區','臺南市','TNN');
insert into countys values (718,'關廟區','臺南市','TNN');
insert into countys values (719,'龍崎區','臺南市','TNN');
insert into countys values (720,'官田區','臺南市','TNN');
insert into countys values (721,'麻豆區','臺南市','TNN');
insert into countys values (722,'佳里區','臺南市','TNN');
insert into countys values (723,'西港區','臺南市','TNN');
insert into countys values (724,'七股區','臺南市','TNN');
insert into countys values (725,'將軍區','臺南市','TNN');
insert into countys values (726,'學甲區','臺南市','TNN');
insert into countys values (727,'北門區','臺南市','TNN');
insert into countys values (730,'新營區','臺南市','TNN');
insert into countys values (731,'後壁區','臺南市','TNN');
insert into countys values (732,'白河區','臺南市','TNN');
insert into countys values (733,'東山區','臺南市','TNN');
insert into countys values (734,'六甲區','臺南市','TNN');
insert into countys values (735,'下營區','臺南市','TNN');
insert into countys values (736,'柳營區','臺南市','TNN');
insert into countys values (737,'鹽水區','臺南市','TNN');
insert into countys values (741,'善化區','臺南市','TNN');
insert into countys values (742,'大內區','臺南市','TNN');
insert into countys values (743,'山上區','臺南市','TNN');
insert into countys values (744,'新市區','臺南市','TNN');
insert into countys values (745,'安定區','臺南市','TNN');
insert into countys values (800,'新興區','高雄市','KHH');
insert into countys values (801,'前金區','高雄市','KHH');
insert into countys values (802,'苓雅區','高雄市','KHH');
insert into countys values (803,'鹽埕區','高雄市','KHH');
insert into countys values (804,'鼓山區','高雄市','KHH');
insert into countys values (805,'旗津區','高雄市','KHH');
insert into countys values (806,'前鎮區','高雄市','KHH');
insert into countys values (807,'三民區','高雄市','KHH');
insert into countys values (811,'楠梓區','高雄市','KHH');
insert into countys values (812,'小港區','高雄市','KHH');
insert into countys values (813,'左營區','高雄市','KHH');
insert into countys values (814,'仁武區','高雄市','KHH');
insert into countys values (815,'大社區','高雄市','KHH');
insert into countys values (817,'東沙群島','高雄市','KHH');
insert into countys values (819,'南沙群島','高雄市','KHH');
insert into countys values (820,'岡山區','高雄市','KHH');
insert into countys values (821,'路竹區','高雄市','KHH');
insert into countys values (822,'阿蓮區','高雄市','KHH');
insert into countys values (823,'田寮區','高雄市','KHH');
insert into countys values (824,'燕巢區','高雄市','KHH');
insert into countys values (825,'橋頭區','高雄市','KHH');
insert into countys values (826,'梓官區','高雄市','KHH');
insert into countys values (827,'彌陀區','高雄市','KHH');
insert into countys values (828,'永安區','高雄市','KHH');
insert into countys values (829,'湖內區','高雄市','KHH');
insert into countys values (830,'鳳山區','高雄市','KHH');
insert into countys values (831,'大寮區','高雄市','KHH');
insert into countys values (832,'林園區','高雄市','KHH');
insert into countys values (833,'鳥松區','高雄市','KHH');
insert into countys values (840,'大樹區','高雄市','KHH');
insert into countys values (842,'旗山區','高雄市','KHH');
insert into countys values (843,'美濃區','高雄市','KHH');
insert into countys values (844,'六龜區','高雄市','KHH');
insert into countys values (845,'內門區','高雄市','KHH');
insert into countys values (846,'杉林區','高雄市','KHH');
insert into countys values (847,'甲仙區','高雄市','KHH');
insert into countys values (848,'桃源區','高雄市','KHH');
insert into countys values (849,'那瑪夏區','高雄市','KHH');
insert into countys values (851,'茂林區','高雄市','KHH');
insert into countys values (852,'茄萣區','高雄市','KHH');
insert into countys values (880,'馬公市','澎湖縣','PEN');
insert into countys values (881,'西嶼鄉','澎湖縣','PEN');
insert into countys values (882,'望安鄉','澎湖縣','PEN');
insert into countys values (883,'七美鄉','澎湖縣','PEN');
insert into countys values (884,'白沙鄉','澎湖縣','PEN');
insert into countys values (885,'湖西鄉','澎湖縣','PEN');
insert into countys values (890,'金沙鎮','金門縣','KIN');
insert into countys values (891,'金湖鎮','金門縣','KIN');
insert into countys values (892,'金寧鄉','金門縣','KIN');
insert into countys values (893,'金城鎮','金門縣','KIN');
insert into countys values (894,'烈嶼鄉','金門縣','KIN');
insert into countys values (896,'烏坵鄉','金門縣','KIN');
insert into countys values (900,'屏東市','屏東縣','PIF');
insert into countys values (901,'三地門鄉','屏東縣','PIF');
insert into countys values (902,'霧臺鄉','屏東縣','PIF');
insert into countys values (903,'瑪家鄉','屏東縣','PIF');
insert into countys values (904,'九如鄉','屏東縣','PIF');
insert into countys values (905,'里港鄉','屏東縣','PIF');
insert into countys values (906,'高樹鄉','屏東縣','PIF');
insert into countys values (907,'鹽埔鄉','屏東縣','PIF');
insert into countys values (908,'長治鄉','屏東縣','PIF');
insert into countys values (909,'麟洛鄉','屏東縣','PIF');
insert into countys values (911,'竹田鄉','屏東縣','PIF');
insert into countys values (912,'內埔鄉','屏東縣','PIF');
insert into countys values (913,'萬丹鄉','屏東縣','PIF');
insert into countys values (920,'潮州鎮','屏東縣','PIF');
insert into countys values (921,'泰武鄉','屏東縣','PIF');
insert into countys values (922,'來義鄉','屏東縣','PIF');
insert into countys values (923,'萬巒鄉','屏東縣','PIF');
insert into countys values (924,'崁頂鄉','屏東縣','PIF');
insert into countys values (925,'新埤鄉','屏東縣','PIF');
insert into countys values (926,'南州鄉','屏東縣','PIF');
insert into countys values (927,'林邊鄉','屏東縣','PIF');
insert into countys values (928,'東港鎮','屏東縣','PIF');
insert into countys values (929,'琉球鄉','屏東縣','PIF');
insert into countys values (931,'佳冬鄉','屏東縣','PIF');
insert into countys values (932,'新園鄉','屏東縣','PIF');
insert into countys values (940,'枋寮鄉','屏東縣','PIF');
insert into countys values (941,'枋山鄉','屏東縣','PIF');
insert into countys values (942,'春日鄉','屏東縣','PIF');
insert into countys values (943,'獅子鄉','屏東縣','PIF');
insert into countys values (944,'車城鄉','屏東縣','PIF');
insert into countys values (945,'牡丹鄉','屏東縣','PIF');
insert into countys values (946,'恆春鎮','屏東縣','PIF');
insert into countys values (947,'滿州鄉','屏東縣','PIF');
insert into countys values (950,'臺東市','臺東縣','TTT');
insert into countys values (951,'綠島鄉','臺東縣','TTT');
insert into countys values (952,'蘭嶼鄉','臺東縣','TTT');
insert into countys values (953,'延平鄉','臺東縣','TTT');
insert into countys values (954,'卑南鄉','臺東縣','TTT');
insert into countys values (955,'鹿野鄉','臺東縣','TTT');
insert into countys values (956,'關山鎮','臺東縣','TTT');
insert into countys values (957,'海端鄉','臺東縣','TTT');
insert into countys values (958,'池上鄉','臺東縣','TTT');
insert into countys values (959,'東河鄉','臺東縣','TTT');
insert into countys values (961,'成功鎮','臺東縣','TTT');
insert into countys values (962,'長濱鄉','臺東縣','TTT');
insert into countys values (963,'太麻里鄉','臺東縣','TTT');
insert into countys values (964,'金峰鄉','臺東縣','TTT');
insert into countys values (965,'大武鄉','臺東縣','TTT');
insert into countys values (966,'達仁鄉','臺東縣','TTT');
insert into countys values (970,'花蓮市','花蓮縣','HUA');
insert into countys values (971,'新城鄉','花蓮縣','HUA');
insert into countys values (972,'秀林鄉','花蓮縣','HUA');
insert into countys values (973,'吉安鄉','花蓮縣','HUA');
insert into countys values (974,'壽豐鄉','花蓮縣','HUA');
insert into countys values (975,'鳳林鎮','花蓮縣','HUA');
insert into countys values (976,'光復鄉','花蓮縣','HUA');
insert into countys values (977,'豐濱鄉','花蓮縣','HUA');
insert into countys values (978,'瑞穗鄉','花蓮縣','HUA');
insert into countys values (979,'萬榮鄉','花蓮縣','HUA');
insert into countys values (981,'玉里鎮','花蓮縣','HUA');
insert into countys values (982,'卓溪鄉','花蓮縣','HUA');
insert into countys values (983,'富里鄉','花蓮縣','HUA');

select * from countys;