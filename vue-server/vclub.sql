SET NAMES UTF8;
#如果存在数据库vclub就丢弃
DROP DATABASE IF EXISTS vclub;
#创建数据库vclub
CREATE DATABASE vclub CHARSET=UTF8;
#使用vclub数据库
#1:进入vclub库中
USE vclub;
#2:城市列表
CREATE TABLE city(
 id    INT PRIMARY KEY AUTO_INCREMENT, 
 cname VARCHAR(10),
 img_url VARCHAR(255),
 cpath  VARCHAR(50)
);
INSERT INTO city VALUES(null,'北京',"http://127.0.0.1:3000/img/home/1.jpg","/city/beijing");
INSERT INTO city VALUES(null,'沈阳',"http://127.0.0.1:3000/img/home/2.jpg","/city/shenyang");
INSERT INTO city VALUES(null,'三亚',"http://127.0.0.1:3000/img/home/3.jpg","/city/sanya");
INSERT INTO city VALUES(null,'丽江',"http://127.0.0.1:3000/img/home/4.jpg","/city/lijiang");
INSERT INTO city VALUES(null,'大理',"http://127.0.0.1:3000/img/home/5.jpg","/city/dali");
INSERT INTO city VALUES(null,'大连',"http://127.0.0.1:3000/img/home/6.jpg","/city/dalian");
INSERT INTO city VALUES(null,'哈尔滨',"http://127.0.0.1:3000/img/home/7.jpg","/city/haerbin");
INSERT INTO city VALUES(null,'重庆',"http://127.0.0.1:3000/img/home/8.jpg","/city/chongqing");
INSERT INTO city VALUES(null,'成都',"http://127.0.0.1:3000/img/home/9.jpg","/city/chengdu");
INSERT INTO city VALUES(null,'长春',"http://127.0.0.1:3000/img/home/10.jpg","/city/changchun");
INSERT INTO city VALUES(null,'厦门',"http://127.0.0.1:3000/img/home/11.jpg","#");
INSERT INTO city VALUES(null,'深圳',"http://127.0.0.1:3000/img/home/12.jpg","#");
INSERT INTO city VALUES(null,'普吉岛',"http://127.0.0.1:3000/img/home/13.jpg","#");
INSERT INTO city VALUES(null,'巴厘岛',"http://127.0.0.1:3000/img/home/14.jpg","#");
INSERT INTO city VALUES(null,'巴黎',"http://127.0.0.1:3000/img/home/15.jpg","#");
INSERT INTO city VALUES(null,'圣托里尼',"http://127.0.0.1:3000/img/home/16.jpg","#");
#2:城市列表
CREATE TABLE citylist(
 id    INT PRIMARY KEY AUTO_INCREMENT, 
 title VARCHAR(10),
 img_url VARCHAR(255)
);
INSERT INTO citylist VALUES(null,'青春校园',"http://127.0.0.1:3000/img/city/1.jpg");
INSERT INTO citylist VALUES(null,'90后馆',"http://127.0.0.1:3000/img/city/2.jpg");
INSERT INTO citylist VALUES(null,'桥都新韵',"http://127.0.0.1:3000/img/city/3.jpg");
INSERT INTO citylist VALUES(null,'微光情愫',"http://127.0.0.1:3000/img/city/4.jpg");
INSERT INTO citylist VALUES(null,'渔人码头',"http://127.0.0.1:3000/img/city/5.jpg");
INSERT INTO citylist VALUES(null,'国家大剧院',"http://127.0.0.1:3000/img/city/6.jpg");
INSERT INTO citylist VALUES(null,'浪漫公园',"http://127.0.0.1:3000/img/city/7.jpg");
INSERT INTO citylist VALUES(null,'清新雨后',"http://127.0.0.1:3000/img/city/8.jpg");
INSERT INTO citylist VALUES(null,'中央大街',"http://127.0.0.1:3000/img/city/9.jpg");
INSERT INTO citylist VALUES(null,'童年游乐场',"http://127.0.0.1:3000/img/city/10.jpg");
INSERT INTO citylist VALUES(null,'枫叶小镇',"http://127.0.0.1:3000/img/city/11.jpg");
INSERT INTO citylist VALUES(null,'迪奥花房馆',"http://127.0.0.1:3000/img/city/12.jpg");
INSERT INTO citylist VALUES(null,'维纳荣耀馆',"http://127.0.0.1:3000/img/city/13.jpg");
INSERT INTO citylist VALUES(null,'枫叶小镇',"http://127.0.0.1:3000/img/city/14.jpg");
INSERT INTO citylist VALUES(null,'唯爱阳光馆',"http://127.0.0.1:3000/img/city/15.jpg");
INSERT INTO citylist VALUES(null,'花漫风尚馆',"http://127.0.0.1:3000/img/city/16.jpg");



#创建客片表
CREATE TABLE showpic(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  img_url VARCHAR(255),
  ctime VARCHAR(32),
  stype VARCHAR(50)
  );
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/1.jpg",'November.11.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/2.jpg",'November.4.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/3.jpg",'October.28.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/4.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/5.jpg",'November.11.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/6.jpg",'November.4.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/7.jpg",'October.28.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/8.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/9.jpg",'November.11.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/10.jpg",'November.4.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/11.jpg",'October.28.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/12.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/13.jpg",'November.11.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/14.jpg",'November.4.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/15.jpg",'October.28.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/16.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/17.jpg",'November.11.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/18.jpg",'November.4.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/19.jpg",'October.28.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/20.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/21.jpg",'November.11.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/22.jpg",'November.4.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/23.jpg",'October.28.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/24.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/25.jpg",'November.11.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/26.jpg",'November.4.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/27.jpg",'October.28.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/28.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/29.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');
  INSERT INTO showpic VALUES(null,"http://127.0.0.1:3000/img/show/30.jpg",'October.20.2018','V·CLUB WEDDIN PHOTOGRAPHY');



#创建新闻表
CREATE TABLE newslist(
 id INT PRIMARY KEY AUTO_INCREMENT, 
 img_url VARCHAR(255),
 title VARCHAR(50),
 content VARCHAR(255)
);
INSERT INTO newslist VALUES(null,"http://127.0.0.1:3000/img/home/a.jpg",'如何选择放大照片?','新人在拍摄完婚纱照后经过几天的等待就会接到婚纱影楼的通知去选片，在选片时新人要不仅要考虑哪些适合入册、哪些适合做成摆台、相框，还要选出几张来做放大婚纱照。唯映像小');
INSERT INTO newslist VALUES(null,"http://127.0.0.1:3000/img/home/b.jpg",'笑容攻略|拍照怎么笑最美?','拍摄婚纱照时，新人常常会遇到这类苦恼问题：该不该笑？该如何笑？是微笑还是大笑？怎么笑效果最好？今天唯映像小编就教你，怎么才能笑的最美！ 怎么能笑得美？ 拍婚纱照时，');
INSERT INTO newslist VALUES(null,"http://127.0.0.1:3000/img/home/c.jpg",'海景婚纱照如何选礼服?','在拍摄婚纱照时，新人选择外景婚纱照的拍摄场景时最不能错过的就是美丽的海边了，在海边拍摄婚纱照不仅在视觉效果上非常唯美，在海天一色的广阔环境下拍摄时新人的心情也会与');
INSERT INTO newslist VALUES(null,"http://127.0.0.1:3000/img/home/d.jpg",'为什么要选择拍中式婚纱照?','中式婚纱照 如今依旧成为新人们的必选婚纱照风格之一，新郎新娘一起将最幸福的时光呈现在古代浪漫的气息之中，幸福和甜蜜尽在眉宇之间。在岁月的沉淀下， 中式婚纱照 依旧拥有');
INSERT INTO newslist VALUES(null,"http://127.0.0.1:3000/img/home/e.jpg",'拍摄内景婚纱照需注意哪些事?','时下外景 婚纱照 成了新人买拍摄婚纱照的首选，但是内景 婚纱照 依旧是不可缺少的一个环境。外景 婚纱照 在大自然美景的承托下，拍摄出来的效果会更自然更有美感。而内景的拍摄');

#创建微电影列表
CREATE TABLE filmlist(
 id INT PRIMARY KEY AUTO_INCREMENT, 
 img_url VARCHAR(50),
 video VARCHAR(50),
 title VARCHAR(50)
);
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/1.jpg","http://127.0.0.1:3000/img/home/film.mp4",'《爱，就一生》 Mr.杨 & Mrs.王 ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/2.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《未来那么长，我们慢慢走》Mr.王 & Mr.李 ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/3.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《一切刚刚好》 Mr.赵 & Mrs.周  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/4.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《后来的我们》 Mr.李 & Mrs.张 ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/5.jpg","http://127.0.0.1:3000/img/home/film.mp4",'  《La ville de l amour》 Mr.欧阳 & Mrs.穆  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/6.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《小幸运》 Mr.张 & Mrs.许  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/7.jpg","http://127.0.0.1:3000/img/home/film.mp4",'《爱的回归线》 Mr.王 & Mrs.钱  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/8.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《旅行的青蛙》 Mr.马 & Ms.郑 ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/1.jpg","http://127.0.0.1:3000/img/home/film.mp4",'《爱，就一生》 Mr.杨 & Mrs.王 ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/2.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《未来那么长，我们慢慢走》Mr.王 & Mr.李 ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/3.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《一切刚刚好》 Mr.赵 & Mrs.周  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/4.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《后来的我们》 Mr.李 & Mrs.张 ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/5.jpg","http://127.0.0.1:3000/img/home/film.mp4",'  《La ville de l amour》 Mr.欧阳 & Mrs.穆  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/6.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《小幸运》 Mr.张 & Mrs.许  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/7.jpg","http://127.0.0.1:3000/img/home/film.mp4",'《爱的回归线》 Mr.王 & Mrs.钱  ');
INSERT INTO filmlist VALUES(null,"http://127.0.0.1:3000/img/film/8.jpg","http://127.0.0.1:3000/img/home/film.mp4",' 《旅行的青蛙》 Mr.马 & Ms.郑 ');
#新作
CREATE TABLE new(
 id INT PRIMARY KEY AUTO_INCREMENT, 
 img VARCHAR(50),
 city VARCHAR(10)
);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/1.jpg",'北京');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/2.jpg",'成都');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/3.jpg",'重庆');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/4.jpg",'沈阳');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/5.jpg",'哈尔滨');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/6.jpg",'大连');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/7.jpg",'长春');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/8.jpg",'三亚');
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/new/9.jpg",'厦门');
#礼服列表
CREATE TABLE dress(
 id INT PRIMARY KEY AUTO_INCREMENT, 
 img VARCHAR(50)
);
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/1.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/2.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/3.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/4.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/5.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/6.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/7.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/8.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/9.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/10.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/11.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/12.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/13.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/14.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/15.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/16.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/17.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/18.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/19.jpg");
INSERT INTO dress VALUES(null,"http://127.0.0.1:3000/img/dress/20.jpg");

#品牌列表
CREATE TABLE brand(
 id INT PRIMARY KEY AUTO_INCREMENT, 
 img VARCHAR(50)
);
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/1.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/2.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/3.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/4.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/5.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/6.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/7.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/8.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/9.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/10.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/11.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/12.jpg");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/about/13.jpg");

#2:创建用户提交信息表
CREATE TABLE user(
 id INT PRIMARY KEY AUTO_INCREMENT, 
 uname VARCHAR(10),
 merrytime DATETIME,
 phone VARCHAR(11)
);



