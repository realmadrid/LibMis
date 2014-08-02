insert into Authority (name) values('ROLE_ADMIN');
insert into Authority (name) values('ROLE_USER');
insert into Authority (name) values('ROLE_BORROW');
insert into Authority (name) values('ROLE_RETURN');
insert into Authority (name) values('ROLE_LOSE');
insert into Authority (name) values('ROLE_FAULT.ADD');
insert into Authority (name) values('ROLE_FAULT.READ');
insert into Authority (name) values('ROLE_SEARCH.READ');
insert into Authority (name) values('ROLE_USER.READ');
insert into Authority (name) values('ROLE_USER.ADD');
insert into Authority (name) values('ROLE_USER.UPDATE');
insert into Authority (name) values('ROLE_USER.DELETE');
insert into Authority (name) values('ROLE_ROLE.READ');
insert into Authority (name) values('ROLE_ROLE.ADD');
insert into Authority (name) values('ROLE_ROLE.UPDATE');
insert into Authority (name) values('ROLE_ROLE.DELETE');
insert into Authority (name) values('ROLE_BOOK.READ');
insert into Authority (name) values('ROLE_BOOK.ADD');
insert into Authority (name) values('ROLE_BOOK.UPDATE');
insert into Authority (name) values('ROLE_BOOK.DELETE');
insert into Authority (name) values('ROLE_COPY.READ');
insert into Authority (name) values('ROLE_COPY.ADD');
insert into Authority (name) values('ROLE_COPY.UPDATE');
insert into Authority (name) values('ROLE_COPY.DELETE');

insert into Role (name) values('超级管理员');
insert into Role (name) values('图书管理员');
insert into Role (name) values('用户');

insert into Role_Authority (Role_id, authorities_id) values(1,1);
insert into Role_Authority (Role_id, authorities_id) values(1,2);
insert into Role_Authority (Role_id, authorities_id) values(1,3);
insert into Role_Authority (Role_id, authorities_id) values(1,4);
insert into Role_Authority (Role_id, authorities_id) values(1,5);
insert into Role_Authority (Role_id, authorities_id) values(1,6);
insert into Role_Authority (Role_id, authorities_id) values(1,7);
insert into Role_Authority (Role_id, authorities_id) values(1,8);
insert into Role_Authority (Role_id, authorities_id) values(1,9);
insert into Role_Authority (Role_id, authorities_id) values(1,10);
insert into Role_Authority (Role_id, authorities_id) values(1,11);
insert into Role_Authority (Role_id, authorities_id) values(1,12);
insert into Role_Authority (Role_id, authorities_id) values(1,13);
insert into Role_Authority (Role_id, authorities_id) values(1,14);
insert into Role_Authority (Role_id, authorities_id) values(1,15);
insert into Role_Authority (Role_id, authorities_id) values(1,16);
insert into Role_Authority (Role_id, authorities_id) values(1,17);
insert into Role_Authority (Role_id, authorities_id) values(1,18);
insert into Role_Authority (Role_id, authorities_id) values(1,19);
insert into Role_Authority (Role_id, authorities_id) values(1,20);
insert into Role_Authority (Role_id, authorities_id) values(1,21);
insert into Role_Authority (Role_id, authorities_id) values(1,22);
insert into Role_Authority (Role_id, authorities_id) values(1,23);
insert into Role_Authority (Role_id, authorities_id) values(1,24);
insert into Role_Authority (Role_id, authorities_id) values(2,1);
insert into Role_Authority (Role_id, authorities_id) values(2,3);
insert into Role_Authority (Role_id, authorities_id) values(2,4);
insert into Role_Authority (Role_id, authorities_id) values(2,5);
insert into Role_Authority (Role_id, authorities_id) values(2,17);
insert into Role_Authority (Role_id, authorities_id) values(2,18);
insert into Role_Authority (Role_id, authorities_id) values(2,19);
insert into Role_Authority (Role_id, authorities_id) values(2,20);
insert into Role_Authority (Role_id, authorities_id) values(2,21);
insert into Role_Authority (Role_id, authorities_id) values(2,22);
insert into Role_Authority (Role_id, authorities_id) values(2,23);
insert into Role_Authority (Role_id, authorities_id) values(2,24);
insert into Role_Authority (Role_id, authorities_id) values(3,2);
insert into Role_Authority (Role_id, authorities_id) values(3,17);
insert into Role_Authority (Role_id, authorities_id) values(3,21);

insert into User (address, borrowed, cellphone, email, idnumber, limitNumber, password, realname, remark, sex, username) values('山东省济南市',0,'18769788939','15989835@qq.com','371235334311',100,'admin','石浩田','管理员','男','admin');
insert into User (address, borrowed, cellphone, email, idnumber, limitNumber, password, realname, remark, sex, username) values('山东省济南市',0,'18769788939','12881242@qq.com','371235334312',100,'taburiss','孟繁隽','管理员','男','taburiss');
insert into User (address, borrowed, cellphone, email, idnumber, limitNumber, password, realname, remark, sex, username) values('山东省济南市',0,'18769788345','27464123@qq.com','371235334313',8,'book','李磊','测试用户','男','book');
insert into User (address, borrowed, cellphone, email, idnumber, limitNumber, password, realname, remark, sex, username) values('山东省济南市',0,'18769781351','8867623@qq.com','371235334316',8,'user','张碧野','测试用户','男','user');
insert into User (address, borrowed, cellphone, email, idnumber, limitNumber, password, realname, remark, sex, username) values('山东省济南市',0,'18769751553','dbdesign@sina.com','371235334314',8,'sunyanzi','孙燕姿','测试用户','女','sunyanzi');
insert into User_Role (User_id, roles_id) values(1,1);
insert into User_Role (User_id, roles_id) values(2,1);
insert into User_Role (User_id, roles_id) values(3,2);
insert into User_Role (User_id, roles_id) values(4,3);
insert into User_Role (User_id, roles_id) values(5,3);

insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('宋远行','程序设计','978-7-302-26418-7','中文','J2EE应用开发实践',25.0,'清华大学出版社','2011','普通高等教育“十一五”国家级规划教材','');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('蒋卫祥','程序设计','978-7-122-10667-4','中文','J2EE案例开发教程 ',36.0,'化学工业出版社','2011','','');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('吴镝','程序设计','978-7-302-24117-1','中文','J2EE应用开发实例精解',25.0,'中国出版社','2011','本书共分为14章，包括两大部分：基础篇和综合应用篇。','');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('黄日胜','程序设计','978-7-302-26418-7','中文','Java程序设计 ',48.0,'北京理工大学出版社','2012','本书可作为高等院校及各类计算机培训学校的Java程序设计教材，也可作为Java开发人员的入门与提高教程。','');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('王电钢','程序设计','978-7-115-27129-7','中文','Java Web应用开发技术',29.8,'人民邮电出版社','2012','','');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('明日科技','程序设计','978-7-302-27666-1','中文','Java典型模块精解',49.8,'清华大学出版社','2012','','');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('黄亚群','数学','978-7-03-034344-4','中文','离散数学',45.0,'人民邮电出版社','2012','本书可作为高等院校计算机科学与技术专业及软件工程专业的教材，也可作为其他相关专业的教学用书，并可供计算机科研和工程技术人员参考。','');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('Kenneth H. Rosen','数学','978-7-111-35950-0','英文','离散数学及其应用',49.0,'机械工业出版社','2011','本书全面系统地介绍了高散数学的理论和方法, 除包括定义、定理的严密陈述外, 还配备大量的实例和图表的说明、各种练习和题目。','袁崇义');
insert into Book (author, category, isbn, language, name, price, publisher, pubtime, remark, translator)
 values('欧阳丹彤','数学','978-7-04-033054-0', '中文','离散数学及其应用',32.0,'高等教育出版社','2011','本书是普通高等教育“十一五”国家级规划教材。','');

insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB01806091',1,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB01806092',1,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB01806093',1,'计算机/编程',0,now(),0,null,'正常');
   
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100251',2,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100252',2,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100253',2,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100254',2,'计算机/编程',0,now(),0,null,'正常');
    
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02120481',3,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02120482',3,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02120483',3,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02120484',3,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02120485',3,'计算机/编程',0,now(),0,null,'正常');
    
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02120411',4,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100212',4,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100213',4,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100214',4,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02100215',4,'计算机/编程',0,now(),0,null,'正常');
    
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02109363',5,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02109364',5,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02109365',5,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02109366',5,'计算机/编程',0,now(),0,null,'正常');
  
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02102244',6,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02102245',6,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02102246',6,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02102247',6,'计算机/编程',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02102248',6,'计算机/编程',0,now(),0,null,'正常');
    
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02045116',7,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02045117',7,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02045118',7,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02045119',7,'数学',0,now(),0,null,'正常');
    
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02106550',8,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02106551',8,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02106552',8,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02106553',8,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02106554',8,'数学',0,now(),0,null,'正常');
    
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02108634',9,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02108635',9,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02108636',9,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02108637',9,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02108638',9,'数学',0,now(),0,null,'正常');
insert  into Copy (barcode, book_id, bookshelf, borrowed, entertime, logoff, outtime, status) 
    values('CB02108639',9,'数学',0,now(),0,null,'正常');