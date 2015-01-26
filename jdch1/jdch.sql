DROP TABLE cms_admin_menu;
CREATE TABLE cms_admin_menu (id int NOT NULL AUTO_INCREMENT COMMENT 'ID', name varchar(20) COMMENT '名称', url varchar(200) COMMENT '地址', parent_id int COMMENT '父类ID', sort int COMMENT '排序', isdel int COMMENT '是否删除', PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cms_admin_menu (id, name, url, parent_id, sort, isdel) VALUES (1, '会员管理', 'hunt/users_manage.jsp', -1, 0, 0);
INSERT INTO cms_admin_menu (id, name, url, parent_id, sort, isdel) VALUES (2, '评论管理', 'hunt/comment.jsp', -1, 0, 0);
INSERT INTO cms_admin_menu (id, name, url, parent_id, sort, isdel) VALUES (3, '申请管理', 'hunt/apply.jsp', -1, 0, 0);
INSERT INTO cms_admin_menu (id, name, url, parent_id, sort, isdel) VALUES (4, '图片管理', 'cmspage/image.jsp', 0, 0, 0);
INSERT INTO cms_admin_menu (id, name, url, parent_id, sort, isdel) VALUES (5, '文章管理', 'cmspage/article.jsp', 0, 0, 0);
INSERT INTO cms_admin_menu (id, name, url, parent_id, sort, isdel) VALUES (6, '导航管理', 'cmspage/admin_menu.jsp', 0, 0, 0);
DROP TABLE cms_admin_user;
CREATE TABLE cms_admin_user (admin_id int NOT NULL AUTO_INCREMENT COMMENT 'ID', admin_name varchar(20) COMMENT '账号', admin_pwd varchar(100) COMMENT '密码', admin_phone varchar(20) COMMENT '电话', admin_email varchar(50) COMMENT '邮箱', PRIMARY KEY (admin_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cms_admin_user (admin_id, admin_name, admin_pwd, admin_phone, admin_email) VALUES (1, 'admin', '123456', '13038000780', '741949068@qq.com');
INSERT INTO cms_admin_user (admin_id, admin_name, admin_pwd, admin_phone, admin_email) VALUES (2, 'admin2', '123456', '13038000000', '711111111@qq.com');
DROP TABLE cms_article;
CREATE TABLE cms_article (article_id int NOT NULL AUTO_INCREMENT COMMENT '文章ID', menu_id int COMMENT '菜单ID', article_title varchar(200) COMMENT '文章标题', article_content text COMMENT '文章内容', article_img varchar(500) COMMENT '文章图片', article_date varchar(20) COMMENT '添加文章时间', isdel int COMMENT '是否删除', shows int COMMENT '是否展示', rolls int COMMENT '是否滚动', PRIMARY KEY (article_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (9, 7, '垂钓三文鱼阿富汗酋长国东非大裂谷人是也你说我掉不掉哈哈。。。。。。。', '12333444dddddddddssssssssss', '1390203306078.jpg', '2014-01-18 16:44:42', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (10, 7, '222', '<strong><em><u>gdfgdfgdf</u></em></strong>', '1390034738941.jpg', '2014-01-18 16:45:38', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (11, 1, '222', '<strong>222</strong>', '1390034990650.jpg', '2014-01-18 16:49:50', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (12, 1, '333', '333', '', '2014-01-18 16:50:15', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (14, 6, '123', '123', '', '2014-01-18 18:15:21', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (15, 6, '1234', '1234', '', '2014-01-18 18:15:55', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (16, 6, '123456', '123456', '1390040266628.jpg', '2014-01-18 18:17:46', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (17, 7, '你好把！！！', '大大大你好把！！！', '1390199886031.jpg', '2014-01-20 14:30:08', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (18, 6, '啊啊啊', '反对反对反对发打发打发', '1390210882890.jpg', '2014-01-20 17:41:22', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (19, 6, '打猎价格', '<u><em>打猎价格：万把块东东 &nbsp;&nbsp;</em></u>淡淡的', '1390291220890.jpg', '2014-01-21 15:59:44', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (20, 1, '添加AOA服务', '添加AOA服务', '1390291466937.jpg', '2014-01-21 16:04:26', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (21, 1, '服务2', '服务2', '1390291489437.jpg', '2014-01-21 16:04:49', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (22, 6, '狩猎服务1', '狩猎服务1', '1390292177750.jpg', '2014-01-21 16:16:17', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (23, 6, '狩猎服务2', '狩猎服务2', '1390292284250.jpg', '2014-01-21 16:16:43', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (24, 6, '狩猎服务3', '狩猎服务3', '1390292257468.jpg', '2014-01-21 16:17:37', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (25, 6, '狩猎服务4', '狩猎服务4', '1390292274296.jpg', '2014-01-21 16:17:54', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (26, 6, '狩猎服务6', '狩猎服务6', '1390292302625.jpg', '2014-01-21 16:18:22', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (27, 48, '报名参加培训班', '报名参加培训班', '1390292753796.jpg', '2014-01-21 16:25:53', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (28, 1, 'AOA服务1', 'AOA服务1', '1390293998457.jpg', '2014-01-21 16:46:38', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (29, 6, '首页', '首页', '1390294130754.jpg', '2014-01-21 16:48:50', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (30, 6, '首页2', '首页2', '1390294186645.jpg', '2014-01-21 16:49:21', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (31, 7, 'sss', 'ssss', '1390355185703.jpg', '2014-01-22 09:46:25', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (32, 6, '狩猎服务123', '狩猎服务123', '1390355702109.jpg', '2014-01-22 09:55:02', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (33, 6, '图片', '图片', '1390357595359.jpg', '2014-01-22 10:25:50', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (34, 6, '达到', '赌东道&nbsp;', '1390377013796.jpg', '2014-01-22 15:50:13', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (35, 6, '事实', '事实', '1390377505656.jpg', '2014-01-22 15:58:25', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (36, 6, '444', '<p>
	444
</p>', '1390445551718.jpg', '2014-01-23 10:52:31', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (37, 6, 'sss', 'sss', '1390463424968.jpg', '2014-01-23 15:50:25', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (38, 6, '淡淡的', '淡淡的', '1390463650843.jpg', '2014-01-23 15:54:10', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (39, 6, 'fff', 'ff', '1390463728187.jpg', '2014-01-23 15:55:28', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (40, 6, 'dd', 'dd', '1390463752796.jpg', '2014-01-23 15:55:52', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (41, 6, 'sss', 'sss', '1390463846468.jpg', '2014-01-23 15:57:26', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (42, 6, 'ddd', 'ddd', '', '2014-01-23 15:58:27', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (43, 6, 'ggg', 'ggg', '1390463961859.jpg', '2014-01-23 15:59:21', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (44, 6, 'fff', 'fff', '1390465635390.jpg', '2014-01-23 16:27:15', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (45, 6, 'ggg', 'ggg', '1390465681265.jpg', '2014-01-23 16:28:01', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (46, 6, 'fff', 'fff', '1390465816890.jpg', '2014-01-23 16:30:16', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (47, 6, 'dddd', 'dddd', '1390531304484.jpg', '2014-01-24 10:41:44', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (48, 6, 'tgggdd', 'ggggd', '1390543279812.jpg', '2014-01-24 14:00:08', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (49, 6, 'dddd', 'dddd', '1390543307796.jpg', '2014-01-24 14:01:47', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (50, 6, 'kkkk', 'kkk', '1390545933546.jpg', '2014-01-24 14:45:33', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (51, 6, 'ooolll', 'ooollll', '1390545963281.jpg', '2014-01-24 14:45:50', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (52, 6, '打猎准备', '打猎的装备有：枪，绳子', '1390550004968.jpg', '2014-01-24 15:53:24', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (53, 51, '我的飞机', '歼击机10', '1390550188479.jpg', '2014-01-24 15:56:28', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (54, 6, '和哈哈哈哈', '哈哈哈哈1545', '1390557703609.jpg', '2014-01-24 18:00:47', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (55, 2, 'ss', 'ss', '1390559240203.gif', '2014-01-24 18:26:42', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (56, 52, '大大大反反复复发第三方分为', '顶顶顶顶顶大大大大大发的飞大', '', '2014-01-26 13:38:46', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (57, 3, 'sssssss方芳芳', '辅导费分为访问访问为', '', '2014-01-26 14:09:49', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (58, 60, 'aa', 'aaaa', '', '2014-01-26 18:56:30', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (59, 53, '航空服务提醒你', '现在时间是：2014年1月27日 10:28:24', '1390789715734.gif', '2014-01-27 10:28:35', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (60, 53, '天气服务', '2014年1月27日 10:29:12', '', '2014-01-27 10:29:14', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (61, 1, '大家老找茬', '找把找吧', '', '2014-01-27 11:03:03', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (62, 76, '赌东道赌东道赌东道的', '各个各个各个各个各个合乎他饿饿', '', '2014-01-27 16:01:12', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (64, 106, 'Welcome to Mr. Raymond Holliday-Bersegeay', '<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	After 11 wonderful years at ISP it is time for me to move on to new adventures. I am pleased to introduce Mr. Raymond Holliday-Bersegeay, who has been appointed as the interim Head of School for the academic year 2013-14.
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	Mr. Holliday-Bersegeay has a long experience as a senior administrator in British, French, Spanish, American and international systems of education. He will join us from Hungary where he has been the Director of the American International School of Budapest for the last seven years. Prior to that, Mr. Holliday-Bersegeay was Director of the French American International School of Boston for five years and Director of the British Council School of Madrid for ten years. His qualifications include a BA in French and Spanish literature, a Masters in Education and an Order of the British Empire award from the British government for services to bilingual and international education.
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	Mr. Holliday-Bersegeay holds both British and French passports, is bilingual in English and French as well as fluent in Spanish. His children are now grown up and living or studying in different parts of the world, with the exception of his youngest daughter who will be attending ISP’s Grade 4 this academic year.
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	I am sure that our community will make Mr. Holliday-Bersegeay, together with his wife and daughter, welcome to our school community. Due to his extensive experience, he will provide the necessary support to our community during this transitional period. I would also like to thank all of you for your support during these past 11 years, and look forward to catching up with you at the various alumni reunions and events that are being planned.
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	Sincerely,
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	Audrey Peverelli<br />
Head of School 2008-2013
</p>', '', '2014-02-08 10:19:51', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (65, 107, 'ISP Today', '<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	Since its creation under the name of Pershing Hall in 1964,&nbsp;<b>The International School of Paris</b>&nbsp;(ISP) has grown exponentially. From starting with only 6 students and 5 nationalities, today it boasts close to 700 students, over 60 nationalities and 50 languages.
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	ISP is the only English-speaking school within the city of&nbsp;<st1:city w:st="on">Paris</st1:city>&nbsp;and the only school in&nbsp;<st1:country-region w:st="on">France</st1:country-region>to offer all three International Baccalaureate programs. Its IB Diploma results are consistently above world average, and its graduates are admitted to many of the world’s best colleges and universities.<br />
Today, ISP is composed of two campuses in the 16th arrondissement of&nbsp;<st1:city w:st="on">Paris</st1:city>&nbsp;which are within 20 minutes walking distance from one another. The Primary School is located near the Ranelagh gardens and the Secondary School and Administration buildings are located near Trocadero. Facilities at these campuses include art, music and drama rooms, libraries, a gym, and technology labs.
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	ISP is governed by a Leadership Team and Board of Trustees. In 2006-2007, the Board of Trustees developed a Strategic Plan which provides guidelines and a plan of action for the development of the school.
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	To learn more about ISP''s Leadership Team, Board of Trustees, Strategic Plan and school Facilities, please visit the pages below:
</p>', '1391826437108.jpg', '2014-02-08 10:27:17', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (66, 116, 'Vision,Mission and philosophy', '<p style="text-indent:2em;">
	<span style="font-family:arial, 宋体, serif;font-size:14px;line-height:normal;white-space:normal;">Welcome to Mr. Raymond Holliday-Bersegeay &nbsp; ---------</span> 
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;text-indent:2em;">
	After 11 wonderful years at ISP it is time for me to move on to new adventures. I am pleased to introduce Mr. Raymond Holliday-Bersegeay, who has been appointed as the interim Head of School for the academic year 2013-14.
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;text-indent:2em;">
	Mr. Holliday-Bersegeay has a long experience as a senior administrator in British, French, Spanish, American and international systems of education. He will join us from Hungary where he has been the Director of the American International School of Budapest for the last seven years. Prior to that, Mr. Holliday-Bersegeay was Director of the French American International School of Boston for five years and Director of the British Council School of Madrid for ten years. His qualifications include a BA in French and Spanish literature, a Masters in Education and an Order of the British Empire award from the British government for services to bilingual and international education.
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;text-indent:2em;">
	Mr. Holliday-Bersegeay holds both British and French passports, is bilingual in English and French as well as fluent in Spanish. His children are now grown up and living or studying in different parts of the world, with the exception of his youngest daughter who will be attending ISP’s Grade 4 this academic year.
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;text-indent:2em;">
	I am sure that our community will make Mr. Holliday-Bersegeay, together with his wife and daughter, welcome to our school community. Due to his extensive experience, he will provide the necessary support to our community during this transitional period. I would also like to thank all of you for your support during these past 11 years, and look forward to catching up with you at the various alumni reunions and events that are being planned.
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;text-indent:2em;">
	Sincerely,
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;text-indent:2em;">
	Audrey Peverelli<br style="margin:0px;padding:0px;border:0px;" />
Head of School 2008-2013
</p>', '', '2014-02-08 10:53:29', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (67, 117, 'Objectives---news', '<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;">
	Mr. Holliday-Bersegeay has a long experience as a senior administrator in British, French, Spanish, American and international systems of education. He will join us from Hungary where he has been the Director of the American International School of Budapest for the last seven years. Prior to that, Mr. Holliday-Bersegeay was Director of the French American International School of Boston for five years and Director of the British Council School of Madrid for ten years. His qualifications include a BA in French and Spanish literature, a Masters in Education and an Order of the British Empire award from the British government for services to bilingual and international education.
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;">
	Mr. Holliday-Bersegeay holds both British and French passports, is bilingual in English and French as well as fluent in Spanish. His children are now grown up and living or studying in different parts of the world, with the exception of his youngest daughter who will be attending ISP’s Grade 4 this academic year.
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;">
	I am sure that our community will make Mr. Holliday-Bersegeay, together with his wife and daughter, welcome to our school community. Due to his extensive experience, he will provide the necessary support to our community during this transitional period. I would also like to thank all of you for your support during these past 11 years, and look forward to catching up with you at the various alumni reunions and events that are being planned.
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;">
	Sincerely,
</p>
<p style="margin-top:1em;margin-bottom:1em;padding:0px;border:0px;font-size:14px;line-height:normal;white-space:normal;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;background-color:#FFFFFF;">
	Audrey Peverelli<br style="margin:0px;padding:0px;border:0px;" />
Head of School 2008-2013
</p>', '1392721866375.jpg', '2014-02-08 10:56:56', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (68, 107, 'ss', 'ss<img src="/cms/attached/image/20140208/20140208111839_587.gif" alt="" /><img src="/cms/attached/image/20140208/20140208111912_572.gif" alt="" />', '', '2014-02-08 11:19:16', 1, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (69, 108, 'images-2', '<p>
	<img src="/cms/attached/image/20140208/20140208112541_975.gif" alt="" /><img src="/cms/attached/image/20140208/20140208112612_32.jpg" alt="" /> 
</p>
<p>
	他哟啊吧图片
</p>', '', '2014-02-08 11:26:48', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (70, 108, 'images', '<iframe style="width:560px;height:362px;" src="http://192.168.2.148:8080/cms/js/kindeditor/plugins/baidumap/index.html?center=108.957338%2C34.276428&zoom=15&width=558&height=360&markers=108.957338%2C34.276428&markerStyles=l%2CA" frameborder="0">
</iframe>
飞', '1391848887717.jpg', '2014-02-08 12:39:20', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (71, 108, 'images-news', '<p>
	<br />
</p>
<div style="text-align:center;">
	<br />
</div>
<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
	<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
		<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			</blockquote>
		</blockquote>
	</blockquote>
</blockquote>
<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
	<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
		<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
				<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
					<ul>
						<li>
							<span style="line-height:1.5;text-align:center;">ddd</span> 
						</li>
						<li>
							<span style="line-height:1.5;text-align:center;">d</span> 
						</li>
						<li>
							<span style="line-height:1.5;text-align:center;">d</span> 
						</li>
						<li>
							<span style="line-height:1.5;text-align:center;">d</span> 
						</li>
						<li>
							<span style="line-height:1.5;text-align:center;">d</span> 
						</li>
					</ul>
				</blockquote>
			</blockquote>
		</blockquote>
	</blockquote>
</blockquote>
<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
	<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
		<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			</blockquote>
		</blockquote>
	</blockquote>
</blockquote>
<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
	<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
		<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			</blockquote>
		</blockquote>
	</blockquote>
</blockquote>
<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
	<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
		<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			<blockquote style="margin:0 0 0 40px;border:none;padding:0px;">
			</blockquote>
		</blockquote>
	</blockquote>
</blockquote>
<p>
	<br />
</p>', '1392721828796.jpg', '2014-02-08 13:28:38', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (72, 196, 'General catalogue', '<p>
	<img src="/cms/attached/image/20140208/20140208141932_619.jpg" alt="" />
</p>
<p>
	<h1 style="margin:0.5em 0px;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;white-space:normal;background-color:#FFFFFF;">
		Job Opportunities
	</h1>
	<h6 style="margin:0.5em 0px;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;font-size:1em;white-space:normal;background-color:#FFFFFF;">
		<b><a href="http://www.isparis.edu/page.cfm?p=534" style="color:#1A6DAE;"></a></b>
	</h6>
	<p style="margin:12pt 0cm;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		Join us in providing a world-class, international education to 700 students from 65 different countries! The only English-speaking school within the city of Paris, ISP has offered small classes, supportive faculty and an active parents’ association in a family atmosphere since 1964. We offer the&nbsp;<a href="http://www.isparis.edu/page.cfm?p=176" style="color:#1A6DAE;">IB Primary Years Programme</a>, the<a href="http://www.isparis.edu/page.cfm?p=177" style="color:#1A6DAE;">&nbsp;IB Middle Years Programme</a>&nbsp;and the<a href="http://www.isparis.edu/page.cfm?p=178" style="color:#1A6DAE;">IB Diploma Programme</a>&nbsp;and develop well-rounded, global citizens within a context of academic excellence; our graduates are admitted to the world’s best colleges and universities.
	</p>
	<h1 style="margin:12pt 0cm;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;white-space:normal;background-color:#FFFFFF;">
		Primary School
	</h1>
	<p style="margin-top:12pt;margin-right:0cm;margin-bottom:12pt;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		&nbsp;
	</p>
	<h1 style="margin:12pt 0cm;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;white-space:normal;background-color:#FFFFFF;">
		Secondary School
	</h1>
	<p style="margin-top:12pt;margin-right:0cm;margin-bottom:12pt;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		&nbsp;
	</p>
	<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		<strong>Please note that it is essential for all applicants&nbsp;to have&nbsp;a nationality from one of the European Union countries, or valid French working papers.&nbsp;</strong>
	</p>
	<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		<strong></strong>There are currently no available positions. We thank everyone who has shown interest to work at the International School of Paris. &nbsp;
	</p>
	<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		<strong>Requirements:</strong>&nbsp;At least a Bachelors degree in the appropriate subject, plus a Teaching qualification. IB&nbsp;training and experience is a plus. A nationality from one of the European Union countries, or valid French working papers is essential.
	</p>
	<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		<br />
	</p>
	<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
		<br />
	</p>
</p>', '1391840484941.jpg', '2014-02-08 14:21:24', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (73, 106, 'fff', 'fff<img alt="" src="/cms/attached/image/20140208/20140208172939_833.jpg" />', '1391851784967.jpg', '2014-02-08 17:29:45', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (74, 129, 'The IB', '<h1 style="margin:0.5em 0px;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;white-space:normal;background-color:#FFFFFF;">
	The IB Programmes
</h1>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	The guiding principals of the&nbsp;<a target="_blank" href="http://www.ibo.org/" style="color:#1A6DAE;">International Baccalaureate programmes</a>&nbsp;used at the International School of Paris&nbsp;are:
</p>
<ul class="noindent" style="color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	<li>
		students should develop&nbsp;<b>a holistic attitude to knowledge</b>;&nbsp;they should&nbsp;see the subjects they learn as an integrated whole.
	</li>
	<li>
		students'' own cultural experiences and backgrounds, and those of our diverse teaching staff, are a valuable learning resource;&nbsp;we encourage&nbsp;<b>understanding through intercultural awareness.</b>
	</li>
	<li>
		the ability to express ideas both reflects and deepens understanding;&nbsp;students''<b>communication skills</b>&nbsp;are central to their learning.
	</li>
</ul>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	<b>The aim of all IB programmes is to develop internationally minded people who, recognizing their common humanity and shared guardianship of the planet, help to create a better and more peaceful world.</b>
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	&nbsp;
</p>
<h2 style="margin:0.5em 0px;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;font-size:1.8em;white-space:normal;background-color:#FFFFFF;">
	The IB Learner Profile
</h2>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	IB learners strive to be:
</p>
<ul class="noindent" style="color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	<li style="list-style-type:none;">
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Inquirers.</b>&nbsp;They develop their natural curiosity. They acquire the skills necessary to conduct inquiry and research and show independence in learning. They actively enjoy learning and this love of learning will be sustained throughout their lives.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Knowledgeable.</b>&nbsp;They explore concepts, ideas and issues that have local and global significance. In so doing, they acquire in-depth knowledge and develop understanding across a broad and balanced range of disciplines.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Thinkers.</b>&nbsp;They exercise initiative in applying thinking skills critically and creatively to recognize and approach complex problems, and make reasoned, ethical decisions.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Communicators.</b>&nbsp;They understand and express ideas and information confidently and creatively in more than one language and in a variety of modes of communication. They work effectively and willingly in collaboration with others.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Principled.</b>&nbsp;They act with integrity and honesty, with a strong sense of fairness, justice and respect for the dignity of the individual, groups and communities. They take responsibility for their own actions and the consequences that accompany them.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Open-minded.</b>&nbsp;They understand and appreciate their own cultures and personal histories, and are open to the perspectives, values and traditions of other individuals and communities. They are accustomed to seeking and evaluating a range of points of view, and are willing to grow from the experience.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Caring.</b>&nbsp;They show empathy, compassion and respect towards the needs and feelings of others. They have a personal commitment to service, and act to make a positive difference to the lives of others and to the environment.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Risk-takers.</b>&nbsp;They approach unfamiliar situations and uncertainty with courage and forethought, and have the independence of spirit to explore new roles, ideas and strategies. They are brave and articulate in defending their beliefs.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Balanced.</b>&nbsp;They understand the importance of intellectual, physical and emotional balance to achieve personal well-being for themselves and others.
		</p>
		<p style="margin-top:1em;margin-bottom:1em;">
			<b>Reflective.</b>&nbsp;They give thoughtful consideration to their own learning and experience. They are able to assess and understand their strengths and limitations in order to support their learning and personal development.
		</p>
	</li>
</ul>', '1392003848953.jpg', '2014-02-10 11:44:09', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (75, 164, 'Core', '<h3 class="title_indent" style="margin:0.5em 0px;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;font-size:1.6em;white-space:normal;background-color:#FFFFFF;min-width:12em;">
	<span style="color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;font-size:12px;">All Diploma Programme students participate in the three course requirements that make up the core of the hexagon. Reflection on all these activities is a principle that lies at the heart of the thinking behind the Diploma Programme.</span> 
</h3>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	<span class="soustitre"><span class="soustitre"></span></span> 
</p>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;list-style-type:none;">
	<b><a href="http://www.isparis.edu/page.cfm?p=401" style="color:#1A6DAE;">Theory of Knowledge</a></b>&nbsp;aims to compare and contrast the knowledge claims of the different disciplines and to reflect on the nature of knowledge itself.
</p>
<h3 style="margin:0.5em 0px;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;font-size:1.6em;white-space:normal;background-color:#FFFFFF;list-style-type:none;">
	IB Diploma Subjects
</h3>
<table border="1" cellpadding="0" cellspacing="0" style="color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;font-size:12px;background-color:#FFFFFF;width:497px;">
	<tbody>
		<tr>
			<td valign="top" width="14%" style="padding:0cm 5.4pt;">
				<p style="margin-top:1em;margin-bottom:1em;">
					&nbsp;
				</p>
			</td>
			<td valign="top" width="14%" style="padding:0cm 5.4pt;">
				<p style="margin-top:1em;margin-bottom:1em;">
					&nbsp;
				</p>
			</td>
			<td colspan="5" valign="top" width="71%" style="padding:0cm 5.4pt;">
				<p style="margin-top:1em;margin-bottom:1em;">
					&nbsp;
				</p>
				<h5 align="center" style="margin:0cm 0cm 0.0001pt;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;font-size:1.2em;">
					Theory of Knowledge
				</h5>
				<p style="margin-top:1em;margin-bottom:1em;">
					&nbsp;
				</p>
			</td>
		</tr>
		<tr>
			<td valign="top" width="14%" style="padding:0cm 5.4pt;">
				<p style="margin-top:1em;margin-bottom:1em;">
					&nbsp;
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>&nbsp;</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>A</b> 
				</p>
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					&nbsp;
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>B</b> 
				</p>
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>&nbsp;</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>C</b> 
				</p>
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>&nbsp;</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>D</b> 
				</p>
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>&nbsp;</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>E</b> 
				</p>
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>&nbsp;</b> 
				</p>
			</td>
		</tr>
		<tr>
			<td rowspan="5" width="14%" style="padding:0cm 5.4pt;">
				<h5 align="center" style="margin:0cm 0cm 0.0001pt;line-height:1em;color:#406EA3;font-family:Tahoma;font-weight:normal;font-size:1.2em;">
					Extended Essay
				</h5>
				<p align="center" style="margin:0cm 5.65pt 0.0001pt;">
					&nbsp;
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>A</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+3
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+3
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+2
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+2
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+1
				</p>
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
		</tr>
		<tr>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>B</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+3
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+2
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+1
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+1
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
		</tr>
		<tr>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>C</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+2
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+1
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+1
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					0
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
		</tr>
		<tr>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>D</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+2
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+1
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					0
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					0
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
		</tr>
		<tr>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					<b>E</b> 
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					+1
				</p>
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F*
				</p>
			</td>
			<td width="14%" style="padding:0cm 5.4pt;">
				<p align="center" style="margin-top:1em;margin-bottom:1em;">
					F
				</p>
			</td>
		</tr>
	</tbody>
</table>
<p style="margin-top:1em;margin-bottom:1em;color:#686868;font-family:Tahoma, Verdana, Arial, sans-serif;line-height:normal;white-space:normal;background-color:#FFFFFF;">
	<br />
</p>', '1392003997984.jpg', '2014-02-10 11:46:38', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (76, 132, 'dsdasdads', '<p>
	<br />
</p>
<p>
	话说今天有雨
</p>', '1392722138953.jpg', '2014-02-11 13:52:58', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (77, 106, 'baidu', '<a href="http://www.baidu.com" target="_blank">baidu</a>', '', '2014-02-12 09:31:41', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (78, 106, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '<p>
	　　各族人民群众的生命财产安全。
</p>
<p>
	　　据了委主席习近平，中共中央政治局常委、国务院总理李克强立即指示当地和有关部门抓紧核实灾情，搞好应急救援，加强灾情监测，最大限度保障各族人民群众的生命财产安全。
</p>
<p>
	　　据了解，地震发生时，于田县城与民丰县城均有明显震感，据中国地震台网中心统计，截至18时，震区已发生余震46次。目前中国地震局已启动地震应急三级响应中新网2月12日电 
新疆和田于田县12日17时19分发生7.3级地震，震源深度12千米。地震发生后，中共中央总书记、国家主席、中央军委主席习近平，中共中央政治局常委、国务院总理李克强立即指示当地和有关部门抓紧核实灾情，搞好应急救援，加强灾情监测，最大限度保障各族人民群众的生命财产安全。
</p>
<p>
	　　据了解，地震发生时，于田县城与民丰县城均有明显震感，据中国地震台网中心统计，截至18时，震区已发生余震46次。目前中国地震局已启动地震应急三级响应中新网2月12日电 
新疆和田于田县12日17时19分发生7.3级地震，震源深度12千米。地震发生后，中共中央总书记、国家主席、中央军委主席习近平，中共中央政治局常委、国务院总理李克强立即指示当地和有关部门抓紧核实灾情，搞好应急救援，加强灾情监测，最大限度保障各族人民群众的生命财产安全。
</p>
<p>
	　　据了解，地震发生时，于田县城与民丰县城均有明显震感，据中国地震台网中心统计，截至18时，震区已发生余震46次。目前中国地震局已启动地震应急三级响应中新网2月12日电 
新疆和田于田县12日17时19分发生7.3级地震，震源深度12千米。地震发生后，中共中央总书记、国家主席、中央军委主席习近平，中共中央政治局常委、国务院总理李克强立即指示当地和有关部门抓紧核实灾情，搞好应急救援，加强灾情监测，最大限度保障各族人民群众的生命财产安全。
</p>
<p>
	　　据了解，地震发生时，于田县城与民丰县城均有明显震感，据中国地震台网中心统计，截至18时，震区已发生余震46次。目前中国地震局已启动地震应急三级响应
</p>', '', '2014-02-13 10:48:26', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (80, 102, 'ddd', 'ddd', '1392772481453.jpg', '2014-02-13 17:14:56', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (81, 184, 'sss', 'sss', '', '2014-02-13 17:32:20', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (82, 184, 'dd', 'ddd', '', '2014-02-13 17:32:26', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (83, 103, '淡淡的', '<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	切实肩负起新形势下党赋予的神圣使命(深入学习贯彻习近平同志系列讲话精神)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　——深入学习贯彻习近平同志在中央政法工作会议上的重要讲话
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　郭声琨
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　习近平同志在中央政法工作会议上的重要讲话，站在党和国家事业发展全局和战略的高度，深刻阐述了事关政法工作长远发展的一系列重大理论和实践问题，进一步明确了新形势下政法工作的地位作用、方向目标、主要任务。讲话高屋建瓴、内涵丰富，思想深刻、论述精辟，既讲认识论、又讲方法论，既讲方向性、又讲操作性，有效解决了政法机关必须“坚持什么、反对什么”和“干什么、怎么干”这两个重大问题，具有很强的思想性、针对性、指导性，是做好当前和今后一个时期政法工作的纲领性文献。各级公安机关要深入学习领会、全面贯彻落实习近平同志重要讲话精神，准确把握基本内涵、精神实质，切实把思想和行动统一到习近平同志重要讲话精神上来，把智慧和力量凝聚到党在新形势下对政法工作的要求上来，高举旗帜、忠实履职，稳中求进、改革创新，切实肩负起维护社会大局稳定、促进社会公平正义、保障人民安居乐业的神圣使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>深刻领会习近平同志重要讲话的基本内涵</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，首先要深刻领会其基本精神和基本内涵，准确把握讲话蕴含的新思想、新观点、新要求，切实用讲话精神统一思想、提高认识、武装头脑。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　深刻领会政法工作的重大意义。习近平同志指出，政法工作做得怎么样，直接关系广大人民群众切身利益，直接关系党和国家工作大局，直接关系党和国家长治久安，直接关系实现两个一百年奋斗目标和中华民族伟大复兴的中国梦。这“四个直接关系”，把政法工作与党、人民、国家三者紧密联系在一起，精辟阐明了我国政法工作的本质特征，深刻论述了做好政法工作的极端重要性。我们要更加自觉地把政法工作摆到党和国家大局中去认识、去把握，切实增强政治意识、大局意识和责任意识，切实增强做好政法工作的政治责任感和历史使命感。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的真挚的为民情怀。习近平同志强调，政法工作搞得好不好，最终要看是否有利于人民安居乐业。政法机关和广大干警要把人民群众的事当作自己的事，把人民群众的小事当作自己的大事，从人民群众满意的事情做起，从人民群众不满意的问题改起，为人民群众安居乐业提供有力的法律保障。要重点解决好损害群众权益的突出问题，决不允许对群众的报警求助置之不理，决不允许让普通群众打不起官司，决不允许滥用权力侵犯群众合法权益，决不允许执法犯法造成冤假错案。这些重要论述，既是对我们党立党为公、执政为民理念的充分诠释，也是对新形势下政法机关践行党的宗旨的根本要求。我们必须把人民群众放在心中最高位置，牢固树立民意主导警务的理念，躬身践行执法为民思想，始终坚持把人民群众安全感和满意度作为衡量和检验政法工作的根本标准。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的鲜明的法治精神。习近平同志强调，依法治国是党领导人民治理国家的基本方略，党自身必须在宪法法律范围内活动，做到党领导立法、保证执法、带头守法。各级领导干部要带头依法办事，带头遵守法律。政法干警要把法治精神当作主心骨，做知法、懂法、守法、护法的执法者。这些重要论述，充分体现了法治精神和法治思维，集中诠释了政法工作的核心价值追求。我们必须牢固树立社会主义法治理念，始终把公平正义作为政法工作的生命线，恪守法治精神、坚守法治定力、严守法律底线，做到有法必依、执法必严、违法必究，不断提升司法公信力。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的强烈的担当意识。习近平同志强调，政法队伍尤其要敢于担当，面对歪风邪气，必须敢于亮剑、坚决斗争，绝不能听之任之；面对急难险重任务，必须豁得出来、顶得上去，绝不能畏缩不前。这些重要论述，铿锵有力、掷地有声，令人警醒、催人奋进，体现了对政法队伍的政治要求，寄予了对政法队伍的殷切期待。我们必须强化责任意识，敢于担当、勇于负责，把使命放在心上、把责任扛在肩上，切实担负起党和人民赋予的重大政治责任。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的科学的辩证方法。习近平同志在讲话中精辟阐述了若干重大关系，强调要正确处理坚持党的领导与人民当家作主、依法治国的关系，正确处理党的政策和国家法律的关系，正确处理坚持党的领导与确保司法机关依法独立公正行使职权的关系，正确处理活力与秩序的关系，正确处理维权与维稳的关系，正确处理文明公正执法与严格执法的关系，正确处理以德治国与依法治国的关系，正确处理从严治警与从优待警的关系，正确处理胆子要大与步子要稳、顶层设计与摸着石头过河的关系，等等。这一系列重大关系的阐述，充分体现了马克思主义唯物辩证的思想方法，进一步深化了我们党对新形势下政法工作规律特点的认识。我们必须牢牢把握这些正确的认识论、方法论，将其融会贯通到政法工作的具体实践中去，不断提高政法工作的科学化水平。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>坚持用习近平同志重要讲话精神指引公安工作</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，关键在于理论联系实际，坚持学以致用，真正用习近平同志重要讲话精神武装头脑、指导实践、推动工作。各级公安机关要紧紧围绕完善和发展中国特色社会主义制度、推进国家治理体系和治理能力现代化总目标，牢牢把握促进社会公平正义、增进人民福祉总要求，坚持稳中求进、改革创新，坚持问题导向、民意引领，深入推进平安中国、法治中国、过硬队伍建设，着力提升人民群众安全感、满意度和公安执法公信力，努力为全面建成小康社会和实现中华民族伟大复兴的中国梦创造安全稳定的社会环境、公平正义的法治环境和优质高效的服务环境。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　始终坚持正确政治方向。公安机关是武装性质的国家治安行政力量和刑事司法力量，担负着打击敌人、保护人民、惩治犯罪、服务群众、维护国家安全和社会稳定的重要职责。公安机关的性质特点和所担负的职责任务，决定了必须把坚持党的绝对领导作为公安工作第一位的政治要求，确保公安队伍绝对忠诚、绝对纯洁、绝对可靠。要坚持不懈地用中国特色社会主义理论体系武装头脑，用习近平同志重要讲话凝聚共识，教育引导广大民警在对我国基本国情的深刻把握中坚定对中国共产党领导的思想自觉、政治自觉、行动自觉，在对我国改革开放历程的深入思考中增强道路自信、理论自信、制度自信，坚定“主心骨”，筑牢“压舱石”，严守党的政治纪律和组织纪律，坚决服从命令、听从指挥，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致，确保政令警令畅通。要紧密结合公安机关的性质特点和担负的职责任务，深入开展“为何从警、如何做警、为谁用警”大讨论活动，大力弘扬人民警察核心价值观，着力培育广大民警为党和人民利益而战、为法律尊严而战、为警察荣誉而战的战斗意志，矢志不渝地做中国特色社会主义事业的建设者、捍卫者。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　坚决维护社会大局稳定。社会稳定，是国家之幸、人民所盼。当前，我国面临着对外维护国家主权、安全、发展利益，对内维护政治安全和社会稳定的双重压力，各种可以预见和难以预见的风险因素明显增多。各级公安机关必须切实增强忧患意识，牢固树立底线思维，着力下好先手棋、打好主动仗，严密防范、严厉打击境内外敌对势力、民族分裂势力和宗教极端势力的各种捣乱破坏活动，坚决维护国家安全。针对网络安全问题带来的多重挑战，要坚持依法管网、以人管网、技术管网相结合，建立健全网络综合防控体系，依法加强网络安全管理，严厉打击网上各类违法犯罪活动，切实维护网上秩序。要学习推广“枫桥经验”，坚持关口前移、源头防范，注重抓早抓小、防患于未然，加强风险评估预警，深化矛盾排查化解，强化应急处突准备，着力提升化解矛盾、应对风险的能力和水平，确保社会大局稳定。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　着力促进社会公平正义。实现社会公平正义是我们党的一贯主张，也是中国特色社会主义的内在要求。公安机关担负着行政执法和刑事司法双重职能，其执法水平如何，在很大程度上体现着国家法治文明程度，影响着法治中国建设进程。各级公安机关要牢牢把握促进社会公平正义这一核心价值追求，坚持以建设法治公安为目标，以深化执法规范化建设为载体，切实把法治原则贯穿到各项公安工作中，把严格公正文明执法的要求体现在每一项执法活动上，不断提升执法公信力。要按照深化司法体制改革的要求，进一步完善人权司法保障制度，健全行政执法与刑事司法衔接机制，加强实践急需的法律政策研究，积极构建科学完备的执法制度体系，努力让执法权在制度的笼子里运行。要全面加强执法管理，积极构建安全运行、运转高效、监督有力的执法管理体系，确保执法权始终在法治轨道内行使。要坚持不懈地开展社会主义法治理念教育、公正廉洁执法职业道德教育，切实加强执法教育培训，使广大民警不断强化执法良知，提升职业操守，增强法律素养，提高执法能力，让人民群众切实感受到公平正义就在身边。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　全力保障人民安居乐业。“民惟邦本，本固邦宁”。人民安居乐业，社会才能安定有序。当前，我国正处于刑事犯罪高发期，影响人民群众安全感的因素发生了不少新变化。各级公安机关要牢牢把握人民群众对社会平安的新期待，充分发挥平安中国建设主力军作用，坚持系统治理、依法治理、综合治理、源头治理，不断改进社会治理方式，着力提高社会治理水平，确保人民安居乐业、社会安定有序，不断增强人民群众安全感、满意度。要坚持专项打击与整体防控相结合，着力创新打击犯罪机制，不断完善治安防控体系，大力加强基层基础工作，全面落实打防管控措施，切实提升社会治安控制能力，做到更快地破大案、更多地破小案、更好地控发案，努力让老百姓居家更安心、出行更放心、生活更舒心。要坚持保障安全与服务民生相结合，牢固树立安全发展理念，始终坚持安全第一，依法履行安全管理职责，严格落实安全管理措施，最大限度地预防和减少火灾、道路交通等重特大治安灾害事故的发生，确保人民群众生命财产安全。要坚持维护秩序与激发活力相结合，积极适应全面深化改革新形势，紧紧围绕建设服务型政府新要求，以创造良好发展环境为目标，以提供优质公共服务为方向，大力推进公安行政管理改革，着力提高管理效能和服务水平，最大限度地激发社会创造活力。
</p>
<div id="ad_44086" class="otherContent_01" style="color:#333333;font-family:宋体;font-size:14px;line-height:23px;white-space:normal;background-color:#FFFFFF;width:200px;height:300px;margin:10px 20px 10px 0px;float:left;overflow:hidden;clear:both;padding:4px;border:1px solid #CDCDCD;">
	<ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" data-ad-offset-left="0" data-ad-offset-top="0" style="display:block;overflow:hidden;text-decoration:none;">
		<ins style="text-decoration:none;margin:0px auto;display:block;overflow:hidden;width:200px;height:300px;">
			<a href="http://sax.sina.com.cn/click?type=2&amp;t=NWQ1N2M2YTEtY2UwNS00ZTIxLWFhYTgtY2MyYjBhZjUwOGRkCTE3CVBEUFMwMDAwMDAwNDQwODYJMzEwNzcJMQ%3d%3d&amp;targeting=aHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE0LTAyLTEzLzA0MDAyOTQ1MDM2NS5zaHRtbAkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTg%3d&amp;url=http%3A%2F%2Fsax.sina.com.cn%2Fdsp%2Fclick%3Ft%3DMjAxNC0wMi0xMyAxNzoxODoxNgkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTgJYmNlNTkwZmItMjI0MS00MGFkLTkwMmYtNjdlOTUyOGE5OGM3CTcwOTYJMTc5ODQ2ODM4Ml9QSU5QQUktQ1BDCTE4ODYJNTEwMDAJMC4wMDE5NjA3ODQ0CTEJdHJ1ZQlQRFBTMDAwMDAwMDQ0MDg2CTMxMDc3CVBDCWltYWdlCTE%3D%26p%3DXVfGoc4FTiGqqMwrCvUI3QUFoc%252fE5MKCzxYkcw%253d%253d%26url%3Dhttp%253A%252F%252Fbenicco.tmall.com%252F%253Fspm%253Da1z10.1.w5001-3314891267.2.VV3u7K%2526%2526sinacpc" target="_blank" style="color:#113EA5;text-decoration:none;"><img border="0" src="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" alt="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" style="margin:0px;padding:0px;width:200px;height:300px;" /></a> 
		</ins>
	</ins>
</div>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　努力打造素质过硬队伍。公安队伍是一支拥有200多万人的纪律部队，掌握的公权力大、面临的考验诱惑多，必须坚持依法管理、从严管理。各级公安机关要毫不动摇地坚持“两手抓、两手都要硬”方针，按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力打造一支党和人民满意的信念坚定、执法为民、敢于担当、清正廉洁的公安队伍。要始终坚持素质强警，紧紧抓住领导干部这一关键，牢牢把握公安队伍战斗力这一核心，大力加强能力素质建设，不断强化全警实战训练，着力提高领导干部决策指挥能力和全警实战能力，确保公安队伍在关键时刻拉得出、冲得上、打得赢。要始终坚持从严治警，以巩固第一批党的群众路线教育实践活动成果、开展第二批党的群众路线教育实践活动为契机，大力加强纪律作风建设，强化问题导向，贯彻整风精神，集中整治人民群众反映强烈的突出问题，坚决查处各种违法违纪问题，坚决清除害群之马，进一步严肃纪律、整饬警风，努力以铁的纪律打造一支铁的队伍，切实担负起党和人民赋予的光荣使命，着力树立新时期人民公安为人民的新形象。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　(作者为国务委员、公安部部长)
</p>', '1392772331984.jpg', '2014-02-13 17:34:56', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (84, 178, 'fffffggggg', '<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	切实肩负起新形势下党赋予的神圣使命(深入学习贯彻习近平同志系列讲话精神)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　——深入学习贯彻习近平同志在中央政法工作会议上的重要讲话
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　郭声琨
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　习近平同志在中央政法工作会议上的重要讲话，站在党和国家事业发展全局和战略的高度，深刻阐述了事关政法工作长远发展的一系列重大理论和实践问题，进一步明确了新形势下政法工作的地位作用、方向目标、主要任务。讲话高屋建瓴、内涵丰富，思想深刻、论述精辟，既讲认识论、又讲方法论，既讲方向性、又讲操作性，有效解决了政法机关必须“坚持什么、反对什么”和“干什么、怎么干”这两个重大问题，具有很强的思想性、针对性、指导性，是做好当前和今后一个时期政法工作的纲领性文献。各级公安机关要深入学习领会、全面贯彻落实习近平同志重要讲话精神，准确把握基本内涵、精神实质，切实把思想和行动统一到习近平同志重要讲话精神上来，把智慧和力量凝聚到党在新形势下对政法工作的要求上来，高举旗帜、忠实履职，稳中求进、改革创新，切实肩负起维护社会大局稳定、促进社会公平正义、保障人民安居乐业的神圣使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>深刻领会习近平同志重要讲话的基本内涵</strong>
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，首先要深刻领会其基本精神和基本内涵，准确把握讲话蕴含的新思想、新观点、新要求，切实用讲话精神统一思想、提高认识、武装头脑。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　深刻领会政法工作的重大意义。习近平同志指出，政法工作做得怎么样，直接关系广大人民群众切身利益，直接关系党和国家工作大局，直接关系党和国家长治久安，直接关系实现两个一百年奋斗目标和中华民族伟大复兴的中国梦。这“四个直接关系”，把政法工作与党、人民、国家三者紧密联系在一起，精辟阐明了我国政法工作的本质特征，深刻论述了做好政法工作的极端重要性。我们要更加自觉地把政法工作摆到党和国家大局中去认识、去把握，切实增强政治意识、大局意识和责任意识，切实增强做好政法工作的政治责任感和历史使命感。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　深刻领会政法工作的政治方向。习近平同志指出，中国特色社会主义最本质的特征是坚持中国共产党领导。政法机关作为中国特色社会主义事业的建设者捍卫者，必须置于党的绝对领导之下。我们要牢牢把握政法机关的性质特点，更加自觉地把政法工作置于党的绝对领导之下，在任何时候任何情况下都要保持政治清醒和政治自觉，毫不动摇地坚持党对政法工作的绝对领导，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　深刻领会政法机关的职责定位。习近平同志指出，政法工作的主要任务就是维护社会大局稳定、促进社会公平正义、保障人民安居乐业。这是党在新形势下赋予政法机关的神圣使命，是政法机关在推进中国特色社会主义事业伟大进程中新的职责定位。我们要深刻理解这“三大任务”的丰富内涵，牢牢把握党在新形势下对政法机关提出的新要求，坚持把维护社会大局稳定作为基本任务，把促进社会公平正义作为核心价值追求，把保障人民安居乐业作为根本目标，坚定不移地做国家政权捍卫者、平安中国建设者、公平正义维护者、群众权益保障者，切实担负起中国特色社会主义事业建设者捍卫者的职责使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　深刻领会严格执法、公正司法的实现路径。习近平同志指出，政法机关要完成党和人民赋予的光荣使命，必须严格执法、公正司法。执法司法是否具有公信力，主要看两点，一是公正不公正，二是廉洁不廉洁。要扭住职业良知、坚守法治、制度约束、公开运行等环节，坚持不懈、持之以恒抓。这些重要论述，深刻指出了提升政法工作公信力的关键所在，系统阐述了严格执法、公正司法的实现路径。我们要深刻领会、牢牢把握严格执法、公正司法的基本要求，始终恪守职业良知、坚持执法为民，树立惩恶扬善、执法如山的浩然正气；自觉做到信仰法治、坚守法治，坚决维护国家法律的尊严和权威；不断健全完善制度、严格执行制度，让执法司法权在制度的笼子里运行；进一步深化执法公开、自觉接受监督，让暗箱操作没有空间、司法腐败无处藏身。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　深刻领会政法队伍建设的根本要求。习近平同志指出，实施依法治国基本方略，建设社会主义法治国家，必须有一支高素质队伍。要按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力建设一支信念坚定、执法为民、敢于担当、清正廉洁的政法队伍。这“五个过硬”，是党在新形势下对政法队伍建设的根本要求。我们要毫不动摇地坚持政治建警、素质强警、从严治警方针，进一步加强和改进政法队伍建设，坚定理想信念，敢于担当重任，锤炼过硬本领，严明组织纪律，改进工作作风，着力打造一支党和人民满意的高素质政法队伍，为推动政法事业发展进步提供根本保证。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　深刻领会司法体制改革的核心要义。习近平同志指出，深化司法体制改革，是要更好坚持党的领导、更好发挥我国司法制度的特色、更好促进社会公平正义。要从确保依法独立公正行使审判权检察权、健全司法权力运行机制、完善人权司法保障制度三个方面，着力解决影响司法公正、制约司法能力的深层次问题，破解体制性、机制性、保障性障碍。这“三个更好”、“三个方面”，既明确了司法体制改革必须坚持的正确政治方向，又明确了司法体制改革的着力点、聚焦点。我们要从推进国家治理体系和治理能力现代化的高度，准确把握司法体制改革的核心要义，积极稳妥地推进司法体制改革，切实提高司法公信力，真正发挥好司法维护社会公平正义最后一道防线的作用。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>牢牢把握习近平同志重要讲话的思想精髓</strong>
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　习近平同志的重要讲话，集中体现了我们党的执政理念和执政方略，集中体现了中国共产党人的价值追求和精神风范，集中体现了马克思主义的世界观和方法论。学习贯彻讲话精神，必须牢牢把握精神实质和思想精髓，不断深化对政法工作规律特点的认识。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的全新的治理理念。习近平同志强调，社会治理是一门科学，要正确处理活力和秩序的关系，坚持系统治理、依法治理、综合治理、源头治理，发动全社会一起来做好维护社会稳定工作。这些重要论述，标志着我们党对治理社会、维护稳定的认识达到了一个新的高度，对于我们在更高层次上推进平安中国建设具有重要指导意义。我们必须不断创新社会治理理念，改进社会治理方式，提升社会治理水平，既要有效维护社会秩序，更要着力激发社会活力；既要有效维护社会大局稳定，更要着力维护人民群众的合法权益。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的真挚的为民情怀。习近平同志强调，政法工作搞得好不好，最终要看是否有利于人民安居乐业。政法机关和广大干警要把人民群众的事当作自己的事，把人民群众的小事当作自己的大事，从人民群众满意的事情做起，从人民群众不满意的问题改起，为人民群众安居乐业提供有力的法律保障。要重点解决好损害群众权益的突出问题，决不允许对群众的报警求助置之不理，决不允许让普通群众打不起官司，决不允许滥用权力侵犯群众合法权益，决不允许执法犯法造成冤假错案。这些重要论述，既是对我们党立党为公、执政为民理念的充分诠释，也是对新形势下政法机关践行党的宗旨的根本要求。我们必须把人民群众放在心中最高位置，牢固树立民意主导警务的理念，躬身践行执法为民思想，始终坚持把人民群众安全感和满意度作为衡量和检验政法工作的根本标准。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的鲜明的法治精神。习近平同志强调，依法治国是党领导人民治理国家的基本方略，党自身必须在宪法法律范围内活动，做到党领导立法、保证执法、带头守法。各级领导干部要带头依法办事，带头遵守法律。政法干警要把法治精神当作主心骨，做知法、懂法、守法、护法的执法者。这些重要论述，充分体现了法治精神和法治思维，集中诠释了政法工作的核心价值追求。我们必须牢固树立社会主义法治理念，始终把公平正义作为政法工作的生命线，恪守法治精神、坚守法治定力、严守法律底线，做到有法必依、执法必严、违法必究，不断提升司法公信力。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的强烈的担当意识。习近平同志强调，政法队伍尤其要敢于担当，面对歪风邪气，必须敢于亮剑、坚决斗争，绝不能听之任之；面对急难险重任务，必须豁得出来、顶得上去，绝不能畏缩不前。这些重要论述，铿锵有力、掷地有声，令人警醒、催人奋进，体现了对政法队伍的政治要求，寄予了对政法队伍的殷切期待。我们必须强化责任意识，敢于担当、勇于负责，把使命放在心上、把责任扛在肩上，切实担负起党和人民赋予的重大政治责任。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　牢牢把握讲话体现出的科学的辩证方法。习近平同志在讲话中精辟阐述了若干重大关系，强调要正确处理坚持党的领导与人民当家作主、依法治国的关系，正确处理党的政策和国家法律的关系，正确处理坚持党的领导与确保司法机关依法独立公正行使职权的关系，正确处理活力与秩序的关系，正确处理维权与维稳的关系，正确处理文明公正执法与严格执法的关系，正确处理以德治国与依法治国的关系，正确处理从严治警与从优待警的关系，正确处理胆子要大与步子要稳、顶层设计与摸着石头过河的关系，等等。这一系列重大关系的阐述，充分体现了马克思主义唯物辩证的思想方法，进一步深化了我们党对新形势下政法工作规律特点的认识。我们必须牢牢把握这些正确的认识论、方法论，将其融会贯通到政法工作的具体实践中去，不断提高政法工作的科学化水平。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>坚持用习近平同志重要讲话精神指引公安工作</strong>
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，关键在于理论联系实际，坚持学以致用，真正用习近平同志重要讲话精神武装头脑、指导实践、推动工作。各级公安机关要紧紧围绕完善和发展中国特色社会主义制度、推进国家治理体系和治理能力现代化总目标，牢牢把握促进社会公平正义、增进人民福祉总要求，坚持稳中求进、改革创新，坚持问题导向、民意引领，深入推进平安中国、法治中国、过硬队伍建设，着力提升人民群众安全感、满意度和公安执法公信力，努力为全面建成小康社会和实现中华民族伟大复兴的中国梦创造安全稳定的社会环境、公平正义的法治环境和优质高效的服务环境。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　始终坚持正确政治方向。公安机关是武装性质的国家治安行政力量和刑事司法力量，担负着打击敌人、保护人民、惩治犯罪、服务群众、维护国家安全和社会稳定的重要职责。公安机关的性质特点和所担负的职责任务，决定了必须把坚持党的绝对领导作为公安工作第一位的政治要求，确保公安队伍绝对忠诚、绝对纯洁、绝对可靠。要坚持不懈地用中国特色社会主义理论体系武装头脑，用习近平同志重要讲话凝聚共识，教育引导广大民警在对我国基本国情的深刻把握中坚定对中国共产党领导的思想自觉、政治自觉、行动自觉，在对我国改革开放历程的深入思考中增强道路自信、理论自信、制度自信，坚定“主心骨”，筑牢“压舱石”，严守党的政治纪律和组织纪律，坚决服从命令、听从指挥，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致，确保政令警令畅通。要紧密结合公安机关的性质特点和担负的职责任务，深入开展“为何从警、如何做警、为谁用警”大讨论活动，大力弘扬人民警察核心价值观，着力培育广大民警为党和人民利益而战、为法律尊严而战、为警察荣誉而战的战斗意志，矢志不渝地做中国特色社会主义事业的建设者、捍卫者。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　坚决维护社会大局稳定。社会稳定，是国家之幸、人民所盼。当前，我国面临着对外维护国家主权、安全、发展利益，对内维护政治安全和社会稳定的双重压力，各种可以预见和难以预见的风险因素明显增多。各级公安机关必须切实增强忧患意识，牢固树立底线思维，着力下好先手棋、打好主动仗，严密防范、严厉打击境内外敌对势力、民族分裂势力和宗教极端势力的各种捣乱破坏活动，坚决维护国家安全。针对网络安全问题带来的多重挑战，要坚持依法管网、以人管网、技术管网相结合，建立健全网络综合防控体系，依法加强网络安全管理，严厉打击网上各类违法犯罪活动，切实维护网上秩序。要学习推广“枫桥经验”，坚持关口前移、源头防范，注重抓早抓小、防患于未然，加强风险评估预警，深化矛盾排查化解，强化应急处突准备，着力提升化解矛盾、应对风险的能力和水平，确保社会大局稳定。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　着力促进社会公平正义。实现社会公平正义是我们党的一贯主张，也是中国特色社会主义的内在要求。公安机关担负着行政执法和刑事司法双重职能，其执法水平如何，在很大程度上体现着国家法治文明程度，影响着法治中国建设进程。各级公安机关要牢牢把握促进社会公平正义这一核心价值追求，坚持以建设法治公安为目标，以深化执法规范化建设为载体，切实把法治原则贯穿到各项公安工作中，把严格公正文明执法的要求体现在每一项执法活动上，不断提升执法公信力。要按照深化司法体制改革的要求，进一步完善人权司法保障制度，健全行政执法与刑事司法衔接机制，加强实践急需的法律政策研究，积极构建科学完备的执法制度体系，努力让执法权在制度的笼子里运行。要全面加强执法管理，积极构建安全运行、运转高效、监督有力的执法管理体系，确保执法权始终在法治轨道内行使。要坚持不懈地开展社会主义法治理念教育、公正廉洁执法职业道德教育，切实加强执法教育培训，使广大民警不断强化执法良知，提升职业操守，增强法律素养，提高执法能力，让人民群众切实感受到公平正义就在身边。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　全力保障人民安居乐业。“民惟邦本，本固邦宁”。人民安居乐业，社会才能安定有序。当前，我国正处于刑事犯罪高发期，影响人民群众安全感的因素发生了不少新变化。各级公安机关要牢牢把握人民群众对社会平安的新期待，充分发挥平安中国建设主力军作用，坚持系统治理、依法治理、综合治理、源头治理，不断改进社会治理方式，着力提高社会治理水平，确保人民安居乐业、社会安定有序，不断增强人民群众安全感、满意度。要坚持专项打击与整体防控相结合，着力创新打击犯罪机制，不断完善治安防控体系，大力加强基层基础工作，全面落实打防管控措施，切实提升社会治安控制能力，做到更快地破大案、更多地破小案、更好地控发案，努力让老百姓居家更安心、出行更放心、生活更舒心。要坚持保障安全与服务民生相结合，牢固树立安全发展理念，始终坚持安全第一，依法履行安全管理职责，严格落实安全管理措施，最大限度地预防和减少火灾、道路交通等重特大治安灾害事故的发生，确保人民群众生命财产安全。要坚持维护秩序与激发活力相结合，积极适应全面深化改革新形势，紧紧围绕建设服务型政府新要求，以创造良好发展环境为目标，以提供优质公共服务为方向，大力推进公安行政管理改革，着力提高管理效能和服务水平，最大限度地激发社会创造活力。
</p>
<div id="ad_44086" class="otherContent_01" style="color:#333333;font-family:宋体;font-size:14px;line-height:23px;white-space:normal;background-color:#FFFFFF;width:200px;height:300px;margin:10px 20px 10px 0px;float:left;overflow:hidden;clear:both;padding:4px;border:1px solid #CDCDCD;">
	<ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" data-ad-offset-left="0" data-ad-offset-top="0" style="display:block;overflow:hidden;text-decoration:none;">
		<ins style="text-decoration:none;margin:0px auto;display:block;overflow:hidden;width:200px;height:300px;">
			<a href="http://sax.sina.com.cn/click?type=2&amp;t=NWQ1N2M2YTEtY2UwNS00ZTIxLWFhYTgtY2MyYjBhZjUwOGRkCTE3CVBEUFMwMDAwMDAwNDQwODYJMzEwNzcJMQ%3d%3d&amp;targeting=aHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE0LTAyLTEzLzA0MDAyOTQ1MDM2NS5zaHRtbAkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTg%3d&amp;url=http%3A%2F%2Fsax.sina.com.cn%2Fdsp%2Fclick%3Ft%3DMjAxNC0wMi0xMyAxNzoxODoxNgkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTgJYmNlNTkwZmItMjI0MS00MGFkLTkwMmYtNjdlOTUyOGE5OGM3CTcwOTYJMTc5ODQ2ODM4Ml9QSU5QQUktQ1BDCTE4ODYJNTEwMDAJMC4wMDE5NjA3ODQ0CTEJdHJ1ZQlQRFBTMDAwMDAwMDQ0MDg2CTMxMDc3CVBDCWltYWdlCTE%3D%26p%3DXVfGoc4FTiGqqMwrCvUI3QUFoc%252fE5MKCzxYkcw%253d%253d%26url%3Dhttp%253A%252F%252Fbenicco.tmall.com%252F%253Fspm%253Da1z10.1.w5001-3314891267.2.VV3u7K%2526%2526sinacpc" target="_blank" style="color:#113EA5;text-decoration:none;"><img border="0" src="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" alt="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" style="margin:0px;padding:0px;width:200px;height:300px;" /></a>
		</ins>
	</ins>
</div>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　努力打造素质过硬队伍。公安队伍是一支拥有200多万人的纪律部队，掌握的公权力大、面临的考验诱惑多，必须坚持依法管理、从严管理。各级公安机关要毫不动摇地坚持“两手抓、两手都要硬”方针，按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力打造一支党和人民满意的信念坚定、执法为民、敢于担当、清正廉洁的公安队伍。要始终坚持素质强警，紧紧抓住领导干部这一关键，牢牢把握公安队伍战斗力这一核心，大力加强能力素质建设，不断强化全警实战训练，着力提高领导干部决策指挥能力和全警实战能力，确保公安队伍在关键时刻拉得出、冲得上、打得赢。要始终坚持从严治警，以巩固第一批党的群众路线教育实践活动成果、开展第二批党的群众路线教育实践活动为契机，大力加强纪律作风建设，强化问题导向，贯彻整风精神，集中整治人民群众反映强烈的突出问题，坚决查处各种违法违纪问题，坚决清除害群之马，进一步严肃纪律、整饬警风，努力以铁的纪律打造一支铁的队伍，切实担负起党和人民赋予的光荣使命，着力树立新时期人民公安为人民的新形象。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　(作者为国务委员、公安部部长)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		切实肩负起新形势下党赋予的神圣使命(深入学习贯彻习近平同志系列讲话精神)
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　——深入学习贯彻习近平同志在中央政法工作会议上的重要讲话
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　郭声琨
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　习近平同志在中央政法工作会议上的重要讲话，站在党和国家事业发展全局和战略的高度，深刻阐述了事关政法工作长远发展的一系列重大理论和实践问题，进一步明确了新形势下政法工作的地位作用、方向目标、主要任务。讲话高屋建瓴、内涵丰富，思想深刻、论述精辟，既讲认识论、又讲方法论，既讲方向性、又讲操作性，有效解决了政法机关必须“坚持什么、反对什么”和“干什么、怎么干”这两个重大问题，具有很强的思想性、针对性、指导性，是做好当前和今后一个时期政法工作的纲领性文献。各级公安机关要深入学习领会、全面贯彻落实习近平同志重要讲话精神，准确把握基本内涵、精神实质，切实把思想和行动统一到习近平同志重要讲话精神上来，把智慧和力量凝聚到党在新形势下对政法工作的要求上来，高举旗帜、忠实履职，稳中求进、改革创新，切实肩负起维护社会大局稳定、促进社会公平正义、保障人民安居乐业的神圣使命。
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　<strong>深刻领会习近平同志重要讲话的基本内涵</strong>
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　学习贯彻习近平同志重要讲话精神，首先要深刻领会其基本精神和基本内涵，准确把握讲话蕴含的新思想、新观点、新要求，切实用讲话精神统一思想、提高认识、武装头脑。
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　深刻领会政法工作的重大意义。习近平同志指出，政法工作做得怎么样，直接关系广大人民群众切身利益，直接关系党和国家工作大局，直接关系党和国家长治久安，直接关系实现两个一百年奋斗目标和中华民族伟大复兴的中国梦。这“四个直接关系”，把政法工作与党、人民、国家三者紧密联系在一起，精辟阐明了我国政法工作的本质特征，深刻论述了做好政法工作的极端重要性。我们要更加自觉地把政法工作摆到党和国家大局中去认识、去把握，切实增强政治意识、大局意识和责任意识，切实增强做好政法工作的政治责任感和历史使命感。
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　深刻领会政法工作的政治方向。习近平同志指出，中国特色社会主义最本质的特征是坚持中国共产党领导。政法机关作为中国特色社会主义事业的建设者捍卫者，必须置于党的绝对领导之下。我们要牢牢把握政法机关的性质特点，更加自觉地把政法工作置于党的绝对领导之下，在任何时候任何情况下都要保持政治清醒和政治自觉，毫不动摇地坚持党对政法工作的绝对领导，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致。
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　深刻领会政法机关的职责定位。习近平同志指出，政法工作的主要任务就是维护社会大局稳定、促进社会公平正义、保障人民安居乐业。这是党在新形势下赋予政法机关的神圣使命，是政法机关在推进中国特色社会主义事业伟大进程中新的职责定位。我们要深刻理解这“三大任务”的丰富内涵，牢牢把握党在新形势下对政法机关提出的新要求，坚持把维护社会大局稳定作为基本任务，把促进社会公平正义作为核心价值追求，把保障人民安居乐业作为根本目标，坚定不移地做国家政权捍卫者、平安中国建设者、公平正义维护者、群众权益保障者，切实担负起中国特色社会主义事业建设者捍卫者的职责使命。
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　深刻领会严格执法、公正司法的实现路径。习近平同志指出，政法机关要完成党和人民赋予的光荣使命，必须严格执法、公正司法。执法司法是否具有公信力，主要看两点，一是公正不公正，二是廉洁　　努力打造素质过硬队伍。公安队伍是一支拥有200多万人的纪律部队，掌握的公权力大、面临的考验诱惑多，必须坚持依法管理、从严管理。各级公安机关要毫不动摇地坚持“两手抓、两手都要硬”方针，按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力打造一支党和人民满意的信念坚定、执法为民、敢于担当、清正廉洁的公安队伍。要始终坚持素质强警，紧紧抓住领导干部这一关键，牢牢把握公安队伍战斗力这一核心，大力加强能力素质建设，不断强化全警实战训练，着力提高领导干部决策指挥能力和全警实战能力，确保公安队伍在关键时刻拉得出、冲得上、打得赢。要始终坚持从严治警，以巩固第一批党的群众路线教育实践活动成果、开展第二批党的群众路线教育实践活动为契机，大力加强纪律作风建设，强化问题导向，贯彻整风精神，集中整治人民群众反映强烈的突出问题，坚决查处各种违法违纪问题，坚决清除害群之马，进一步严肃纪律、整饬警风，努力以铁的纪律打造一支铁的队伍，切实担负起党和人民赋予的光荣使命，着力树立新时期人民公安为人民的新形象。
	</p>
	<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
		　　(作者为国务委员、公安部部长)
	</p>
</p>', '', '2014-02-13 17:39:49', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (85, 178, 'dddd', '<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	切实肩负起新形势下党赋予的神圣使命(深入学习贯彻习近平同志系列讲ISP Today话精神)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　——深入学习贯彻习近平同志在中央政法工作会议上的重要讲话
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　郭声琨
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　习近平同志在中央政法工作会议上的重要讲话，站在党和国家事业发展全局和战略的高度，深刻阐述了事关政法工作长远发展的一系列重大理论和实践问题，进一
步明确了新形势下政法工作的地位作用、方向目标、主要任务。讲话高屋建瓴、内涵丰富，思想深刻、论述精辟，既讲认识论、又讲方法论，既讲方向性、又讲操作
性，有效解决了政法机关必须“坚持什么、反对什么”和“干什么、怎么干”这两个重大问题，具有很强的思想性、针对性、指导性，是做好当前和今后一个时期政
法工作的纲领性文献。各级公安机关要深入学习领会、全面贯彻落实习近平同志重要讲话精神，准确把握基本内涵、精神实质，切实把思想和行动统一到习近平同志
重要讲话精神上来，把智慧和力量凝聚到党在新形势下对政法工作的要求上来，高举旗帜、忠实履职，稳中求进、改革创新，切实肩负起维护社会大局稳定、促进社
会公平正义、保障人民安居乐业的神圣使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>深刻领会习近平同志重要讲话的基本内涵</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，首先要深刻领会其基本精神和基本内涵，准确把握讲话蕴含的新思想、新观点、新要求，切实用讲话精神统一思想、提高认识、武装头脑。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会政法工作的重大意义。习近平同志指出，政法工作做得怎么样，直接关系广大人民群众切身利益，直接关系党和国家工作大局，直接关系党和国家长治久
安，直接关系实现两个一百年奋斗目标和中华民族伟大复兴的中国梦。这“四个直接关系”，把政法工作与党、人民、国家三者紧密联系在一起，精辟阐明了我国政
法工作的本质特征，深刻论述了做好政法工作的极端重要性。我们要更加自觉地把政法工作摆到党和国家大局中去认识、去把握，切实增强政治意识、大局意识和责
任意识，切实增强做好政法工作的政治责任感和历史使命感。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会政法工作的政治方向。习近平同志指出，中国特色社会主义最本质的特征是坚持中国共产党领导。政法机关作为中国特色社会主义事业的建设者捍卫者，
必须置于党的绝对领导之下。我们要牢牢把握政法机关的性质特点，更加自觉地把政法工作置于党的绝对领导之下，在任何时候任何情况下都要保持政治清醒和政治
自觉，毫不动摇地坚持党对政法工作的绝对领导，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会政法机关的职责定位。习近平同志指出，政法工作的主要任务就是维护社会大局稳定、促进社会公平正义、保障人民安居乐业。这是党在新形势下赋予政
法机关的神圣使命，是政法机关在推进中国特色社会主义事业伟大进程中新的职责定位。我们要深刻理解这“三大任务”的丰富内涵，牢牢把握党在新形势下对政法
机关提出的新要求，坚持把维护社会大局稳定作为基本任务，把促进社会公平正义作为核心价值追求，把保障人民安居乐业作为根本目标，坚定不移地做国家政权捍
卫者、平安中国建设者、公平正义维护者、群众权益保障者，切实担负起中国特色社会主义事业建设者捍卫者的职责使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会严格执法、公正司法的实现路径。习近平同志指出，政法机关要完成党和人民赋予的光荣使命，必须严格执法、公正司法。执法司法是否具有公信力，主
要看两点，一是公正不公正，二是廉洁不廉洁。要扭住职业良知、坚守法治、制度约束、公开运行等环节，坚持不懈、持之以恒抓。这些重要论述，深刻指出了提升
政法工作公信力的关键所在，系统阐述了严格执法、公正司法的实现路径。我们要深刻领会、牢牢把握严格执法、公正司法的基本要求，始终恪守职业良知、坚持执
法为民，树立惩恶扬善、执法如山的浩然正气；自觉做到信仰法治、坚守法治，坚决维护国家法律的尊严和权威；不断健全完善制度、严格执行制度，让执法司法权
在制度的笼子里运行；进一步深化执法公开、自觉接受监督，让暗箱操作没有空间、司法腐败无处藏身。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会政法队伍建设的根本要求。习近平同志指出，实施依法治国基本方略，建设社会主义法治国家，必须有一支高素质队伍。要按照政治过硬、业务过硬、责
任过硬、纪律过硬、作风过硬的要求，努力建设一支信念坚定、执法为民、敢于担当、清正廉洁的政法队伍。这“五个过硬”，是党在新形势下对政法队伍建设的根
本要求。我们要毫不动摇地坚持政治建警、素质强警、从严治警方针，进一步加强和改进政法队伍建设，坚定理想信念，敢于担当重任，锤炼过硬本领，严明组织纪
律，改进工作作风，着力打造一支党和人民满意的高素质政法队伍，为推动政法事业发展进步提供根本保证。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会司法体制改革的核心要义。习近平同志指出，深化司法体制改革，是要更好坚持党的领导、更好发挥我国司法制度的特色、更好促进社会公平正义。要从
确保依法独立公正行使审判权检察权、健全司法权力运行机制、完善人权司法保障制度三个方面，着力解决影响司法公正、制约司法能力的深层次问题，破解体制
性、机制性、保障性障碍。这“三个更好”、“三个方面”，既明确了司法体制改革必须坚持的正确政治方向，又明确了司法体制改革的着力点、聚焦点。我们要从
推进国家治理体系和治理能力现代化的高度，准确把握司法体制改革的核心要义，积极稳妥地推进司法体制改革，切实提高司法公信力，真正发挥好司法维护社会公
平正义最后一道防线的作用。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>牢牢把握习近平同志重要讲话的思想精髓</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　习近平同志的重要讲话，集中体现了我们党的执政理念和执政方略，集中体现了中国共产党人的价值追求和精神风范，集中体现了马克思主义的世界观和方法论。学习贯彻讲话精神，必须牢牢把握精神实质和思想精髓，不断深化对政法工作规律特点的认识。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　牢牢把握讲话体现出的全新的治理理念。习近平同志强调，社会治理是一门科学，要正确处理活力和秩序的关系，坚持系统治理、依法治理、综合治理、源头治
理，发动全社会一起来做好维护社会稳定工作。这些重要论述，标志着我们党对治理社会、维护稳定的认识达到了一个新的高度，对于我们在更高层次上推进平安中
国建设具有重要指导意义。我们必须不断创新社会治理理念，改进社会治理方式，提升社会治理水平，既要有效维护社会秩序，更要着力激发社会活力；既要有效维
护社会大局稳定，更要着力维护人民群众的合法权益。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　牢牢把握讲话体现出的真挚的为民情怀。习近平同志强调，政法工作搞得好不好，最终要看是否有利于人民安居乐业。政法机关和广大干警要把人民群众的事当作
自己的事，把人民群众的小事当作自己的大事，从人民群众满意的事情做起，从人民群众不满意的问题改起，为人民群众安居乐业提供有力的法律保障。要重点解决
好损害群众权益的突出问题，决不允许对群众的报警求助置之不理，决不允许让普通群众打不起官司，决不允许滥用权力侵犯群众合法权益，决不允许执法犯法造成
冤假错案。这些重要论述，既是对我们党立党为公、执政为民理念的充分诠释，也是对新形势下政法机关践行党的宗旨的根本要求。我们必须把人民群众放在心中最
高位置，牢固树立民意主导警务的理念，躬身践行执法为民思想，始终坚持把人民群众安全感和满意度作为衡量和检验政法工作的根本标准。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　牢牢把握讲话体现出的鲜明的法治精神。习近平同志强调，依法治国是党领导人民治理国家的基本方略，党自身必须在宪法法律范围内活动，做到党领导立法、保
证执法、带头守法。各级领导干部要带头依法办事，带头遵守法律。政法干警要把法治精神当作主心骨，做知法、懂法、守法、护法的执法者。这些重要论述，充分
体现了法治精神和法治思维，集中诠释了政法工作的核心价值追求。我们必须牢固树立社会主义法治理念，始终把公平正义作为政法工作的生命线，恪守法治精神、
坚守法治定力、严守法律底线，做到有法必依、执法必严、违法必究，不断提升司法公信力。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　牢牢把握讲话体现出的强烈的担当意识。习近平同志强调，政法队伍尤其要敢于担当，面对歪风邪气，必须敢于亮剑、坚决斗争，绝不能听之任之；面对急难险重
任务，必须豁得出来、顶得上去，绝不能畏缩不前。这些重要论述，铿锵有力、掷地有声，令人警醒、催人奋进，体现了对政法队伍的政治要求，寄予了对政法队伍
的殷切期待。我们必须强化责任意识，敢于担当、勇于负责，把使命放在心上、把责任扛在肩上，切实担负起党和人民赋予的重大政治责任。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　牢牢把握讲话体现出的科学的辩证方法。习近平同志在讲话中精辟阐述了若干重大关系，强调要正确处理坚持党的领导与人民当家作主、依法治国的关系，正确处
理党的政策和国家法律的关系，正确处理坚持党的领导与确保司法机关依法独立公正行使职权的关系，正确处理活力与秩序的关系，正确处理维权与维稳的关系，正
确处理文明公正执法与严格执法的关系，正确处理以德治国与依法治国的关系，正确处理从严治警与从优待警的关系，正确处理胆子要大与步子要稳、顶层设计与摸
着石头过河的关系，等等。这一系列重大关系的阐述，充分体现了马克思主义唯物辩证的思想方法，进一步深化了我们党对新形势下政法工作规律特点的认识。我们
必须牢牢把握这些正确的认识论、方法论，将其融会贯通到政法工作的具体实践中去，不断提高政法工作的科学化水平。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>坚持用习近平同志重要讲话精神指引公安工作</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　学习贯彻习近平同志重要讲话精神，关键在于理论联系实际，坚持学以致用，真正用习近平同志重要讲话精神武装头脑、指导实践、推动工作。各级公安机关要紧
紧围绕完善和发展中国特色社会主义制度、推进国家治理体系和治理能力现代化总目标，牢牢把握促进社会公平正义、增进人民福祉总要求，坚持稳中求进、改革创
新，坚持问题导向、民意引领，深入推进平安中国、法治中国、过硬队伍建设，着力提升人民群众安全感、满意度和公安执法公信力，努力为全面建成小康社会和实
现中华民族伟大复兴的中国梦创造安全稳定的社会环境、公平正义的法治环境和优质高效的服务环境。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　始终坚持正确政治方向。公安机关是武装性质的国家治安行政力量和刑事司法力量，担负着打击敌人、保护人民、惩治犯罪、服务群众、维护国家安全和社会稳定
的重要职责。公安机关的性质特点和所担负的职责任务，决定了必须把坚持党的绝对领导作为公安工作第一位的政治要求，确保公安队伍绝对忠诚、绝对纯洁、绝对
可靠。要坚持不懈地用中国特色社会主义理论体系武装头脑，用习近平同志重要讲话凝聚共识，教育引导广大民警在对我国基本国情的深刻把握中坚定对中国共产党
领导的思想自觉、政治自觉、行动自觉，在对我国改革开放历程的深入思考中增强道路自信、理论自信、制度自信，坚定“主心骨”，筑牢“压舱石”，严守党的政
治纪律和组织纪律，坚决服从命令、听从指挥，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致，确保政令警令畅通。要紧密结合公
安机关的性质特点和担负的职责任务，深入开展“为何从警、如何做警、为谁用警”大讨论活动，大力弘扬人民警察核心价值观，着力培育广大民警为党和人民利益
而战、为法律尊严而战、为警察荣誉而战的战斗意志，矢志不渝地做中国特色社会主义事业的建设者、捍卫者。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　坚决维护社会大局稳定。社会稳定，是国家之幸、人民所盼。当前，我国面临着对外维护国家主权、安全、发展利益，对内维护政治安全和社会稳定的双重压力，
各种可以预见和难以预见的风险因素明显增多。各级公安机关必须切实增强忧患意识，牢固树立底线思维，着力下好先手棋、打好主动仗，严密防范、严厉打击境内
外敌对势力、民族分裂势力和宗教极端势力的各种捣乱破坏活动，坚决维护国家安全。针对网络安全问题带来的多重挑战，要坚持依法管网、以人管网、技术管网相
结合，建立健全网络综合防控体系，依法加强网络安全管理，严厉打击网上各类违法犯罪活动，切实维护网上秩序。要学习推广“枫桥经验”，坚持关口前移、源头
防范，注重抓早抓小、防患于未然，加强风险评估预警，深化矛盾排查化解，强化应急处突准备，着力提升化解矛盾、应对风险的能力和水平，确保社会大局稳定。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　着力促进社会公平正义。实现社会公平正义是我们党的一贯主张，也是中国特色社会主义的内在要求。公安机关担负着行政执法和刑事司法双重职能，其执法水平
如何，在很大程度上体现着国家法治文明程度，影响着法治中国建设进程。各级公安机关要牢牢把握促进社会公平正义这一核心价值追求，坚持以建设法治公安为目
标，以深化执法规范化建设为载体，切实把法治原则贯穿到各项公安工作中，把严格公正文明执法的要求体现在每一项执法活动上，不断提升执法公信力。要按照深
化司法体制改革的要求，进一步完善人权司法保障制度，健全行政执法与刑事司法衔接机制，加强实践急需的法律政策研究，积极构建科学完备的执法制度体系，努
力让执法权在制度的笼子里运行。要全面加强执法管理，积极构建安全运行、运转高效、监督有力的执法管理体系，确保执法权始终在法治轨道内行使。要坚持不懈
地开展社会主义法治理念教育、公正廉洁执法职业道德教育，切实加强执法教育培训，使广大民警不断强化执法良知，提升职业操守，增强法律素养，提高执法能
力，让人民群众切实感受到公平正义就在身边。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　全力保障人民安居乐业。“民惟邦本，本固邦宁”。人民安居乐业，社会才能安定有序。当前，我国正处于刑事犯罪高发期，影响人民群众安全感的因素发生了不
少新变化。各级公安机关要牢牢把握人民群众对社会平安的新期待，充分发挥平安中国建设主力军作用，坚持系统治理、依法治理、综合治理、源头治理，不断改进
社会治理方式，着力提高社会治理水平，确保人民安居乐业、社会安定有序，不断增强人民群众安全感、满意度。要坚持专项打击与整体防控相结合，着力创新打击
犯罪机制，不断完善治安防控体系，大力加强基层基础工作，全面落实打防管控措施，切实提升社会治安控制能力，做到更快地破大案、更多地破小案、更好地控发
案，努力让老百姓居家更安心、出行更放心、生活更舒心。要坚持保障安全与服务民生相结合，牢固树立安全发展理念，始终坚持安全第一，依法履行安全管理职
责，严格落实安全管理措施，最大限度地预防和减少火灾、道路交通等重特大治安灾害事故的发生，确保人民群众生命财产安全。要坚持维护秩序与激发活力相结
合，积极适应全面深化改革新形势，紧紧围绕建设服务型政府新要求，以创造良好发展环境为目标，以提供优质公共服务为方向，大力推进公安行政管理改革，着力
提高管理效能和服务水平，最大限度地激发社会创造活力。
</p>
<div id="ad_44086" class="otherContent_01" style="color:#333333;font-family:宋体;font-size:14px;line-height:23px;white-space:normal;background-color:#FFFFFF;width:200px;height:300px;margin:10px 20px 10px 0px;float:left;overflow:hidden;clear:both;padding:4px;border:1px solid #CDCDCD;">
	<ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" data-ad-offset-left="0" data-ad-offset-top="0" style="display:block;overflow:hidden;text-decoration:none;">
		<ins style="text-decoration:none;margin:0px auto;display:block;overflow:hidden;width:200px;height:300px;">
			<a href="http://sax.sina.com.cn/click?type=2&amp;t=NWQ1N2M2YTEtY2UwNS00ZTIxLWFhYTgtY2MyYjBhZjUwOGRkCTE3CVBEUFMwMDAwMDAwNDQwODYJMzEwNzcJMQ%3d%3d&amp;targeting=aHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE0LTAyLTEzLzA0MDAyOTQ1MDM2NS5zaHRtbAkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTg%3d&amp;url=http%3A%2F%2Fsax.sina.com.cn%2Fdsp%2Fclick%3Ft%3DMjAxNC0wMi0xMyAxNzoxODoxNgkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTgJYmNlNTkwZmItMjI0MS00MGFkLTkwMmYtNjdlOTUyOGE5OGM3CTcwOTYJMTc5ODQ2ODM4Ml9QSU5QQUktQ1BDCTE4ODYJNTEwMDAJMC4wMDE5NjA3ODQ0CTEJdHJ1ZQlQRFBTMDAwMDAwMDQ0MDg2CTMxMDc3CVBDCWltYWdlCTE%3D%26p%3DXVfGoc4FTiGqqMwrCvUI3QUFoc%252fE5MKCzxYkcw%253d%253d%26url%3Dhttp%253A%252F%252Fbenicco.tmall.com%252F%253Fspm%253Da1z10.1.w5001-3314891267.2.VV3u7K%2526%2526sinacpc" target="_blank" style="color:#113EA5;text-decoration:none;"><img src="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" alt="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" style="margin:0px;padding:0px;width:200px;height:300px;" border="0" /></a> 
		</ins>
	</ins>
</div>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　努力打造素质过硬队伍。公安队伍是一支拥有200多万人的纪律部队，掌握的公权力大、面临的考验诱惑多，必须坚持依法管理、从严管理。各级公安机关要毫
不动摇地坚持“两手抓、两手都要硬”方针，按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力打造一支党和人民满意的信念坚定、执法为
民、敢于担当、清正廉洁的公安队伍。要始终坚持素质强警，紧紧抓住领导干部这一关键，牢牢把握公安队伍战斗力这一核心，大力加强能力素质建设，不断强化全
警实战训练，着力提高领导干部决策指挥能力和全警实战能力，确保公安队伍在关键时刻拉得出、冲得上、打得赢。要始终坚持从严治警，以巩固第一批党的群众路
线教育实践活动成果、开展第二批党的群众路线教育实践活动为契机，大力加强纪律作风建设，强化问题导向，贯彻整风精神，集中整治人民群众反映强烈的突出问
题，坚决查处各种违法违纪问题，坚决清除害群之马，进一步严肃纪律、整饬警风，努力以铁的纪律打造一支铁的队伍，切实担负起党和人民赋予的光荣使命，着力
树立新时期人民公安为人民的新形象。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　(作者为国务委员、公安部部长)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	切实肩负起新形势下党赋予的神圣使命(深入学习贯彻习近平同志系列讲话精神)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　——深入学习贯彻习近平同志在中央政法工作会议上的重要讲话
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　郭声琨
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　习近平同志在中央政法工作会议上的重要讲话，站在党和国家事业发展全局和战略的高度，深刻阐述了事关政法工作长远发展的一系列重大理论和实践问题，进一
步明确了新形势下政法工作的地位作用、方向目标、主要任务。讲话高屋建瓴、内涵丰富，思想深刻、论述精辟，既讲认识论、又讲方法论，既讲方向性、又讲操作
性，有效解决了政法机关必须“坚持什么、反对什么”和“干什么、怎么干”这两个重大问题，具有很强的思想性、针对性、指导性，是做好当前和今后一个时期政
法工作的纲领性文献。各级公安机关要深入学习领会、全面贯彻落实习近平同志重要讲话精神，准确把握基本内涵、精神实质，切实把思想和行动统一到习近平同志
重要讲话精神上来，把智慧和力量凝聚到党在新形势下对政法工作的要求上来，高举旗帜、忠实履职，稳中求进、改革创新，切实肩负起维护社会大局稳定、促进社
会公平正义、保障人民安居乐业的神圣使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>深刻领会习近平同志重要讲话的基本内涵</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，首先要深刻领会其基本精神和基本内涵，准确把握讲话蕴含的新思想、新观点、新要求，切实用讲话精神统一思想、提高认识、武装头脑。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会政法工作的重大意义。习近平同志指出，政法工作做得怎么样，直接关系广大人民群众切身利益，直接关系党和国家工作大局，直接关系党和国家长治久
安，直接关系实现两个一百年奋斗目标和中华民族伟大复兴的中国梦。这“四个直接关系”，把政法工作与党、人民、国家三者紧密联系在一起，精辟阐明了我国政
法工作的本质特征，深刻论述了做好政法工作的极端重要性。我们要更加自觉地把政法工作摆到党和国家大局中去认识、去把握，切实增强政治意识、大局意识和责
任意识，切实增强做好政法工作的政治责任感和历史使命感。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会政法工作的政治方向。习近平同志指出，中国特色社会主义最本质的特征是坚持中国共产党领导。政法机关作为中国特色社会主义事业的建设者捍卫者，
必须置于党的绝对领导之下。我们要牢牢把握政法机关的性质特点，更加自觉地把政法工作置于党的绝对领导之下，在任何时候任何情况下都要保持政治清醒和政治
自觉，毫不动摇地坚持党对政法工作的绝对领导，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会政法机关的职责定位。习近平同志指出，政法工作的主要任务就是维护社会大局稳定、促进社会公平正义、保障人民安居乐业。这是党在新形势下赋予政
法机关的神圣使命，是政法机关在推进中国特色社会主义事业伟大进程中新的职责定位。我们要深刻理解这“三大任务”的丰富内涵，牢牢把握党在新形势下对政法
机关提出的新要求，坚持把维护社会大局稳定作为基本任务，把促进社会公平正义作为核心价值追求，把保障人民安居乐业作为根本目标，坚定不移地做国家政权捍
卫者、平安中国建设者、公平正义维护者、群众权益保障者，切实担负起中国特色社会主义事业建设者捍卫者的职责使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
　深刻领会严格执法、公正司法的实现路径。习近平同志指出，政法机关要完成党和人民赋予的光荣使命，必须严格执法、公正司法。执法司法是否具有公信力，主
要看两点，一是公正不公正，二是廉洁　　努力打造素质过硬队伍。公安队伍是一支拥有200多万人的纪律部队，掌握的公权力大、面临的考验诱惑多，必须坚持
依法管理、从严管理。各级公安机关要毫不动摇地坚持“两手抓、两手都要硬”方针，按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力打造
一支党和人民满意的信念坚定、执法为民、敢于担当、清正廉洁的公安队伍。要始终坚持素质强警，紧紧抓住领导干部这一关键，牢牢把握公安队伍战斗力这一核
心，大力加强能力素质建设，不断强化全警实战训练，着力提高领导干部决策指挥能力和全警实战能力，确保公安队伍在关键时刻拉得出、冲得上、打得赢。要始终
坚持从严治警，以巩固第一批党的群众路线教育实践活动成果、开展第二批党的群众路线教育实践活动为契机，大力加强纪律作风建设，强化问题导向，贯彻整风精
神，集中整治人民群众反映强烈的突出问题，坚决查处各种违法违纪问题，坚决清除害群之马，进一步严肃纪律、整饬警风，努力以铁的纪律打造一支铁的队伍，切
实担负起党和人民赋予的光荣使命，着力树立新时期人民公安为人民的新形象。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　(作者为国务委员、公安部部长)
</p>', '', '2014-02-13 18:18:51', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (86, 178, '深入学习贯彻习近平同志系列讲话精神', '<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	切实肩负起新形势下党赋予的神圣使命(深入学习贯彻习近平同志系列讲话精神)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　——深入学习贯彻习近平同志在中央政法工作会议上的重要讲dd话
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　郭声琨
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　习近平同志在中央政法工作会议上的重要讲话，站在党和国家事业发展全局和战略的高度，深刻阐述了事关政法工作长远发展的一系列重大理论和实践问题，进一
步明确了新形势下政法工作的地位作用、方向目标、主要任务。讲话高屋建瓴、内涵丰富，思想深刻、论述精辟，既讲认识论、又讲方法论，既讲方向性、又讲操作
性，有效解决了政法机关必须“坚持什么、反对什么”和“干什么、怎么干”这两个重大问题，具有很强的思想性、针对性、指导性，是做好当前和今后一个时期政
法工作的纲领性文献。各级公安机关要深入学习领会、全面贯彻落实习近平同志重要讲话精神，准确把握基本内涵、精神实质，切实把思想和行动统一到习近平同志
重要讲话精神上来，把智慧和力量凝聚到党在新形势下对政法工作的要求上来，高举旗帜、忠实履职，稳中求进、改革创新，切实肩负起维护社会大局稳定、促进社
会公平正义、保障人民安居乐业的神圣使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>深刻领会习近平同志重要讲话的基本内涵</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，首先要深刻领会其基本精神和基本内涵，准确把握讲话蕴含的新思想、新观点、新要求，切实用讲话精神统一思想、提高认识、武装头脑。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会政法工作的重大意义。习近平同志指出，政法工作做得怎么样，直接关系广大人民群众切身利益，直接关系党和国家工作大局，直接关系党和国家长治久
安，直接关系实现两个一百年奋斗目标和中华民族伟大复兴的中国梦。这“四个直接关系”，把政法工作与党、人民、国家三者紧密联系在一起，精辟阐明了我国政
法工作的本质特征，深刻论述了做好政法工作的极端重要性。我们要更加自觉地把政法工作摆到党和国家大局中去认识、去把握，切实增强政治意识、大局意识和责
任意识，切实增强做好政法工作的政治责任感和历史使命感。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会政法工作的政治方向。习近平同志指出，中国特色社会主义最本质的特征是坚持中国共产党领导。政法机关作为中国特色社会主义事业的建设者捍卫者，
必须置于党的绝对领导之下。我们要牢牢把握政法机关的性质特点，更加自觉地把政法工作置于党的绝对领导之下，在任何时候任何情况下都要保持政治清醒和政治
自觉，毫不动摇地坚持党对政法工作的绝对领导，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会政法机关的职责定位。习近平同志指出，政法工作的主要任务就是维护社会大局稳定、促进社会公平正义、保障人民安居乐业。这是党在新形势下赋予政
法机关的神圣使命，是政法机关在推进中国特色社会主义事业伟大进程中新的职责定位。我们要深刻理解这“三大任务”的丰富内涵，牢牢把握党在新形势下对政法
机关提出的新要求，坚持把维护社会大局稳定作为基本任务，把促进社会公平正义作为核心价值追求，把保障人民安居乐业作为根本目标，坚定不移地做国家政权捍
卫者、平安中国建设者、公平正义维护者、群众权益保障者，切实担负起中国特色社会主义事业建设者捍卫者的职责使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会严格执法、公正司法的实现路径。习近平同志指出，政法机关要完成党和人民赋予的光荣使命，必须严格执法、公正司法。执法司法是否具有公信力，主
要看两点，一是公正不公正，二是廉洁不廉洁。要扭住职业良知、坚守法治、制度约束、公开运行等环节，坚持不懈、持之以恒抓。这些重要论述，深刻指出了提升
政法工作公信力的关键所在，系统阐述了严格执法、公正司法的实现路径。我们要深刻领会、牢牢把握严格执法、公正司法的基本要求，始终恪守职业良知、坚持执
法为民，树立惩恶扬善、执法如山的浩然正气；自觉做到信仰法治、坚守法治，坚决维护国家法律的尊严和权威；不断健全完善制度、严格执行制度，让执法司法权
在制度的笼子里运行；进一步深化执法公开、自觉接受监督，让暗箱操作没有空间、司法腐败无处藏身。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会政法队伍建设的根本要求。习近平同志指出，实施依法治国基本方略，建设社会主义法治国家，必须有一支高素质队伍。要按照政治过硬、业务过硬、责
任过硬、纪律过硬、作风过硬的要求，努力建设一支信念坚定、执法为民、敢于担当、清正廉洁的政法队伍。这“五个过硬”，是党在新形势下对政法队伍建设的根
本要求。我们要毫不动摇地坚持政治建警、素质强警、从严治警方针，进一步加强和改进政法队伍建设，坚定理想信念，敢于担当重任，锤炼过硬本领，严明组织纪
律，改进工作作风，着力打造一支党和人民满意的高素质政法队伍，为推动政法事业发展进步提供根本保证。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会司法体制改革的核心要义。习近平同志指出，深化司法体制改革，是要更好坚持党的领导、更好发挥我国司法制度的特色、更好促进社会公平正义。要从
确保依法独立公正行使审判权检察权、健全司法权力运行机制、完善人权司法保障制度三个方面，着力解决影响司法公正、制约司法能力的深层次问题，破解体制
性、机制性、保障性障碍。这“三个更好”、“三个方面”，既明确了司法体制改革必须坚持的正确政治方向，又明确了司法体制改革的着力点、聚焦点。我们要从
推进国家治理体系和治理能力现代化的高度，准确把握司法体制改革的核心要义，积极稳妥地推进司法体制改革，切实提高司法公信力，真正发挥好司法维护社会公
平正义最后一道防线的作用。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>牢牢把握习近平同志重要讲话的思想精髓</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　习近平同志的重要讲话，集中体现了我们党的执政理念和执政方略，集中体现了中国共产党人的价值追求和精神风范，集中体现了马克思主义的世界观和方法论。学习贯彻讲话精神，必须牢牢把握精神实质和思想精髓，不断深化对政法工作规律特点的认识。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　牢牢把握讲话体现出的全新的治理理念。习近平同志强调，社会治理是一门科学，要正确处理活力和秩序的关系，坚持系统治理、依法治理、综合治理、源头治
理，发动全社会一起来做好维护社会稳定工作。这些重要论述，标志着我们党对治理社会、维护稳定的认识达到了一个新的高度，对于我们在更高层次上推进平安中
国建设具有重要指导意义。我们必须不断创新社会治理理念，改进社会治理方式，提升社会治理水平，既要有效维护社会秩序，更要着力激发社会活力；既要有效维
护社会大局稳定，更要着力维护人民群众的合法权益。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　牢牢把握讲话体现出的真挚的为民情怀。习近平同志强调，政法工作搞得好不好，最终要看是否有利于人民安居乐业。政法机关和广大干警要把人民群众的事当作
自己的事，把人民群众的小事当作自己的大事，从人民群众满意的事情做起，从人民群众不满意的问题改起，为人民群众安居乐业提供有力的法律保障。要重点解决
好损害群众权益的突出问题，决不允许对群众的报警求助置之不理，决不允许让普通群众打不起官司，决不允许滥用权力侵犯群众合法权益，决不允许执法犯法造成
冤假错案。这些重要论述，既是对我们党立党为公、执政为民理念的充分诠释，也是对新形势下政法机关践行党的宗旨的根本要求。我们必须把人民群众放在心中最
高位置，牢固树立民意主导警务的理念，躬身践行执法为民思想，始终坚持把人民群众安全感和满意度作为衡量和检验政法工作的根本标准。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　牢牢把握讲话体现出的鲜明的法治精神。习近平同志强调，依法治国是党领导人民治理国家的基本方略，党自身必须在宪法法律范围内活动，做到党领导立法、保
证执法、带头守法。各级领导干部要带头依法办事，带头遵守法律。政法干警要把法治精神当作主心骨，做知法、懂法、守法、护法的执法者。这些重要论述，充分
体现了法治精神和法治思维，集中诠释了政法工作的核心价值追求。我们必须牢固树立社会主义法治理念，始终把公平正义作为政法工作的生命线，恪守法治精神、
坚守法治定力、严守法律底线，做到有法必依、执法必严、违法必究，不断提升司法公信力。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　牢牢把握讲话体现出的强烈的担当意识。习近平同志强调，政法队伍尤其要敢于担当，面对歪风邪气，必须敢于亮剑、坚决斗争，绝不能听之任之；面对急难险重
任务，必须豁得出来、顶得上去，绝不能畏缩不前。这些重要论述，铿锵有力、掷地有声，令人警醒、催人奋进，体现了对政法队伍的政治要求，寄予了对政法队伍
的殷切期待。我们必须强化责任意识，敢于担当、勇于负责，把使命放在心上、把责任扛在肩上，切实担负起党和人民赋予的重大政治责任。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　牢牢把握讲话体现出的科学的辩证方法。习近平同志在讲话中精辟阐述了若干重大关系，强调要正确处理坚持党的领导与人民当家作主、依法治国的关系，正确处
理党的政策和国家法律的关系，正确处理坚持党的领导与确保司法机关依法独立公正行使职权的关系，正确处理活力与秩序的关系，正确处理维权与维稳的关系，正
确处理文明公正执法与严格执法的关系，正确处理以德治国与依法治国的关系，正确处理从严治警与从优待警的关系，正确处理胆子要大与步子要稳、顶层设计与摸
着石头过河的关系，等等。这一系列重大关系的阐述，充分体现了马克思主义唯物辩证的思想方法，进一步深化了我们党对新形势下政法工作规律特点的认识。我们
必须牢牢把握这些正确的认识论、方法论，将其融会贯通到政法工作的具体实践中去，不断提高政法工作的科学化水平。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>坚持用习近平同志重要讲话精神指引公安工作</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　学习贯彻习近平同志重要讲话精神，关键在于理论联系实际，坚持学以致用，真正用习近平同志重要讲话精神武装头脑、指导实践、推动工作。各级公安机关要紧
紧围绕完善和发展中国特色社会主义制度、推进国家治理体系和治理能力现代化总目标，牢牢把握促进社会公平正义、增进人民福祉总要求，坚持稳中求进、改革创
新，坚持问题导向、民意引领，深入推进平安中国、法治中国、过硬队伍建设，着力提升人民群众安全感、满意度和公安执法公信力，努力为全面建成小康社会和实
现中华民族伟大复兴的中国梦创造安全稳定的社会环境、公平正义的法治环境和优质高效的服务环境。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　始终坚持正确政治方向。公安机关是武装性质的国家治安行政力量和刑事司法力量，担负着打击敌人、保护人民、惩治犯罪、服务群众、维护国家安全和社会稳定
的重要职责。公安机关的性质特点和所担负的职责任务，决定了必须把坚持党的绝对领导作为公安工作第一位的政治要求，确保公安队伍绝对忠诚、绝对纯洁、绝对
可靠。要坚持不懈地用中国特色社会主义理论体系武装头脑，用习近平同志重要讲话凝聚共识，教育引导广大民警在对我国基本国情的深刻把握中坚定对中国共产党
领导的思想自觉、政治自觉、行动自觉，在对我国改革开放历程的深入思考中增强道路自信、理论自信、制度自信，坚定“主心骨”，筑牢“压舱石”，严守党的政
治纪律和组织纪律，坚决服从命令、听从指挥，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致，确保政令警令畅通。要紧密结合公
安机关的性质特点和担负的职责任务，深入开展“为何从警、如何做警、为谁用警”大讨论活动，大力弘扬人民警察核心价值观，着力培育广大民警为党和人民利益
而战、为法律尊严而战、为警察荣誉而战的战斗意志，矢志不渝地做中国特色社会主义事业的建设者、捍卫者。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　坚决维护社会大局稳定。社会稳定，是国家之幸、人民所盼。当前，我国面临着对外维护国家主权、安全、发展利益，对内维护政治安全和社会稳定的双重压力，
各种可以预见和难以预见的风险因素明显增多。各级公安机关必须切实增强忧患意识，牢固树立底线思维，着力下好先手棋、打好主动仗，严密防范、严厉打击境内
外敌对势力、民族分裂势力和宗教极端势力的各种捣乱破坏活动，坚决维护国家安全。针对网络安全问题带来的多重挑战，要坚持依法管网、以人管网、技术管网相
结合，建立健全网络综合防控体系，依法加强网络安全管理，严厉打击网上各类违法犯罪活动，切实维护网上秩序。要学习推广“枫桥经验”，坚持关口前移、源头
防范，注重抓早抓小、防患于未然，加强风险评估预警，深化矛盾排查化解，强化应急处突准备，着力提升化解矛盾、应对风险的能力和水平，确保社会大局稳定。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　着力促进社会公平正义。实现社会公平正义是我们党的一贯主张，也是中国特色社会主义的内在要求。公安机关担负着行政执法和刑事司法双重职能，其执法水平
如何，在很大程度上体现着国家法治文明程度，影响着法治中国建设进程。各级公安机关要牢牢把握促进社会公平正义这一核心价值追求，坚持以建设法治公安为目
标，以深化执法规范化建设为载体，切实把法治原则贯穿到各项公安工作中，把严格公正文明执法的要求体现在每一项执法活动上，不断提升执法公信力。要按照深
化司法体制改革的要求，进一步完善人权司法保障制度，健全行政执法与刑事司法衔接机制，加强实践急需的法律政策研究，积极构建科学完备的执法制度体系，努
力让执法权在制度的笼子里运行。要全面加强执法管理，积极构建安全运行、运转高效、监督有力的执法管理体系，确保执法权始终在法治轨道内行使。要坚持不懈
地开展社会主义法治理念教育、公正廉洁执法职业道德教育，切实加强执法教育培训，使广大民警不断强化执法良知，提升职业操守，增强法律素养，提高执法能
力，让人民群众切实感受到公平正义就在身边。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　全力保障人民安居乐业。“民惟邦本，本固邦宁”。人民安居乐业，社会才能安定有序。当前，我国正处于刑事犯罪高发期，影响人民群众安全感的因素发生了不
少新变化。各级公安机关要牢牢把握人民群众对社会平安的新期待，充分发挥平安中国建设主力军作用，坚持系统治理、依法治理、综合治理、源头治理，不断改进
社会治理方式，着力提高社会治理水平，确保人民安居乐业、社会安定有序，不断增强人民群众安全感、满意度。要坚持专项打击与整体防控相结合，着力创新打击
犯罪机制，不断完善治安防控体系，大力加强基层基础工作，全面落实打防管控措施，切实提升社会治安控制能力，做到更快地破大案、更多地破小案、更好地控发
案，努力让老百姓居家更安心、出行更放心、生活更舒心。要坚持保障安全与服务民生相结合，牢固树立安全发展理念，始终坚持安全第一，依法履行安全管理职
责，严格落实安全管理措施，最大限度地预防和减少火灾、道路交通等重特大治安灾害事故的发生，确保人民群众生命财产安全。要坚持维护秩序与激发活力相结
合，积极适应全面深化改革新形势，紧紧围绕建设服务型政府新要求，以创造良好发展环境为目标，以提供优质公共服务为方向，大力推进公安行政管理改革，着力
提高管理效能和服务水平，最大限度地激发社会创造活力。
</p>
<div id="ad_44086" class="otherContent_01" style="color:#333333;font-family:宋体;font-size:14px;line-height:23px;white-space:normal;background-color:#FFFFFF;width:200px;height:300px;margin:10px 20px 10px 0px;float:left;overflow:hidden;clear:both;padding:4px;border:1px solid #CDCDCD;">
	<ins class="sinaads sinaads-done" id="Sinads49447" data-ad-pdps="PDPS000000044086" data-ad-status="done" data-ad-offset-left="0" data-ad-offset-top="0" style="display:block;overflow:hidden;text-decoration:none;">
		<ins style="text-decoration:none;margin:0px auto;display:block;overflow:hidden;width:200px;height:300px;">
			<a href="http://sax.sina.com.cn/click?type=2&amp;t=NWQ1N2M2YTEtY2UwNS00ZTIxLWFhYTgtY2MyYjBhZjUwOGRkCTE3CVBEUFMwMDAwMDAwNDQwODYJMzEwNzcJMQ%3d%3d&amp;targeting=aHR0cDovL25ld3Muc2luYS5jb20uY24vYy8yMDE0LTAyLTEzLzA0MDAyOTQ1MDM2NS5zaHRtbAkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTg%3d&amp;url=http%3A%2F%2Fsax.sina.com.cn%2Fdsp%2Fclick%3Ft%3DMjAxNC0wMi0xMyAxNzoxODoxNgkyMjIuOTAuMTA1Ljk1CTIyMi45MC4xMDUuOTVfMTM5MjE3NTIwOC4zMTkyOTgJYmNlNTkwZmItMjI0MS00MGFkLTkwMmYtNjdlOTUyOGE5OGM3CTcwOTYJMTc5ODQ2ODM4Ml9QSU5QQUktQ1BDCTE4ODYJNTEwMDAJMC4wMDE5NjA3ODQ0CTEJdHJ1ZQlQRFBTMDAwMDAwMDQ0MDg2CTMxMDc3CVBDCWltYWdlCTE%3D%26p%3DXVfGoc4FTiGqqMwrCvUI3QUFoc%252fE5MKCzxYkcw%253d%253d%26url%3Dhttp%253A%252F%252Fbenicco.tmall.com%252F%253Fspm%253Da1z10.1.w5001-3314891267.2.VV3u7K%2526%2526sinacpc" target="_blank" style="color:#113EA5;text-decoration:none;"><img src="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" alt="http://d1.sina.com.cn/pfpghc/4a5e83f3437d4012b691dec6668f641e.jpg" style="margin:0px;padding:0px;width:200px;height:300px;" border="0" /></a> 
		</ins>
	</ins>
</div>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　努力打造素质过硬队伍。公安队伍是一支拥有200多万人的纪律部队，掌握的公权力大、面临的考验诱惑多，必须坚持依法管理、从严管理。各级公安机关要毫
不动摇地坚持“两手抓、两手都要硬”方针，按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力打造一支党和人民满意的信念坚定、执法为
民、敢于担当、清正廉洁的公安队伍。要始终坚持素质强警，紧紧抓住领导干部这一关键，牢牢把握公安队伍战斗力这一核心，大力加强能力素质建设，不断强化全
警实战训练，着力提高领导干部决策指挥能力和全警实战能力，确保公安队伍在关键时刻拉得出、冲得上、打得赢。要始终坚持从严治警，以巩固第一批党的群众路
线教育实践活动成果、开展第二批党的群众路线教育实践活动为契机，大力加强纪律作风建设，强化问题导向，贯彻整风精神，集中整治人民群众反映强烈的突出问
题，坚决查处各种违法违纪问题，坚决清除害群之马，进一步严肃纪律、整饬警风，努力以铁的纪律打造一支铁的队伍，切实担负起党和人民赋予的光荣使命，着力
树立新时期人民公安为人民的新形象。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　(作者为国务委员、公安部部长)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	切实肩负起新形势下党赋予的神圣使命(深入学习贯彻习近平同志系列讲话精神)
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　——深入学习贯彻习近平同志在中央政法工作会议上的重要讲话
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　郭声琨
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　习近平同志在中央政法工作会议上的重要讲话，站在党和国家事业发展全局和战略的高度，深刻阐述了事关政法工作长远发展的一系列重大理论和实践问题，进一
步明确了新形势下政法工作的地位作用、方向目标、主要任务。讲话高屋建瓴、内涵丰富，思想深刻、论述精辟，既讲认识论、又讲方法论，既讲方向性、又讲操作
性，有效解决了政法机关必须“坚持什么、反对什么”和“干什么、怎么干”这两个重大问题，具有很强的思想性、针对性、指导性，是做好当前和今后一个时期政
法工作的纲领性文献。各级公安机关要深入学习领会、全面贯彻落实习近平同志重要讲话精神，准确把握基本内涵、精神实质，切实把思想和行动统一到习近平同志
重要讲话精神上来，把智慧和力量凝聚到党在新形势下对政法工作的要求上来，高举旗帜、忠实履职，稳中求进、改革创新，切实肩负起维护社会大局稳定、促进社
会公平正义、保障人民安居乐业的神圣使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　<strong>深刻领会习近平同志重要讲话的基本内涵</strong> 
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　学习贯彻习近平同志重要讲话精神，首先要深刻领会其基本精神和基本内涵，准确把握讲话蕴含的新思想、新观点、新要求，切实用讲话精神统一思想、提高认识、武装头脑。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会政法工作的重大意义。习近平同志指出，政法工作做得怎么样，直接关系广大人民群众切身利益，直接关系党和国家工作大局，直接关系党和国家长治久
安，直接关系实现两个一百年奋斗目标和中华民族伟大复兴的中国梦。这“四个直接关系”，把政法工作与党、人民、国家三者紧密联系在一起，精辟阐明了我国政
法工作的本质特征，深刻论述了做好政法工作的极端重要性。我们要更加自觉地把政法工作摆到党和国家大局中去认识、去把握，切实增强政治意识、大局意识和责
任意识，切实增强做好政法工作的政治责任感和历史使命感。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会政法工作的政治方向。习近平同志指出，中国特色社会主义最本质的特征是坚持中国共产党领导。政法机关作为中国特色社会主义事业的建设者捍卫者，
必须置于党的绝对领导之下。我们要牢牢把握政法机关的性质特点，更加自觉地把政法工作置于党的绝对领导之下，在任何时候任何情况下都要保持政治清醒和政治
自觉，毫不动摇地坚持党对政法工作的绝对领导，始终在思想上、政治上、行动上与以习近平同志为总书记的党中央保持高度一致。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会政法机关的职责定位。习近平同志指出，政法工作的主要任务就是维护社会大局稳定、促进社会公平正义、保障人民安居乐业。这是党在新形势下赋予政
法机关的神圣使命，是政法机关在推进中国特色社会主义事业伟大进程中新的职责定位。我们要深刻理解这“三大任务”的丰富内涵，牢牢把握党在新形势下对政法
机关提出的新要求，坚持把维护社会大局稳定作为基本任务，把促进社会公平正义作为核心价值追求，把保障人民安居乐业作为根本目标，坚定不移地做国家政权捍
卫者、平安中国建设者、公平正义维护者、群众权益保障者，切实担负起中国特色社会主义事业建设者捍卫者的职责使命。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　深刻领会严格执法、公正司法的实现路径。习近平同志指出，政法机关要完成党和人民赋予的光荣使命，必须严格执法、公正司法。执法司法是否具有公信力，主
要看两点，一是公正不公正，二是廉洁　　努力打造素质过硬队伍。公安队伍是一支拥有200多万人的纪律部队，掌握的公权力大、面临的考验诱惑多，必须坚持
依法管理、从严管理。各级公安机关要毫不动摇地坚持“两手抓、两手都要硬”方针，按照政治过硬、业务过硬、责任过硬、纪律过硬、作风过硬的要求，努力打造
一支党和人民满意的信念坚定、执法为民、敢于担当、清正廉洁的公安队伍。要始终坚持素质强警，紧紧抓住领导干部这一关键，牢牢把握公安队伍战斗力这一核
心，大力加强能力素质建设，不断强化全警实战训练，着力提高领导干部决策指挥能力和全警实战能力，确保公安队伍在关键时刻拉得出、冲得上、打得赢。要始终
坚持从严治警，以巩固第一批党的群众路线教育实践活动成果、开展第二批党的群众路线教育实践活动为契机，大力加强纪律作风建设，强化问题导向，贯彻整风精
神，集中整治人民群众反映强烈的突出问题，坚决查处各种违法违纪问题，坚决清除害群之马，进一步严肃纪律、整饬警风，努力以铁的纪律打造一支铁的队伍，切
实担负起党和人民赋予的光荣使命，着力树立新时期人民公安为人民的新形象。
</p>
<p style="margin-top:15px;margin-bottom:15px;padding:0px;font-size:14px;line-height:23px;color:#333333;font-family:宋体;white-space:normal;background-color:#FFFFFF;">
	　　(作者为国务委员、公安部部长)
</p>', '', '2014-02-13 18:19:00', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (87, 116, '美媒：中印军事差距扩大 印度需重估中国威胁', '<p style="text-indent:2em;">
	<strong>原标题：美称中印军事实力差距扩大 印度需重估中国威胁<br />
</strong> 
</p>
<p style="text-indent:2em;">
	据美国欧亚评论网站报道，面对不断上升的来自中国和巴基斯坦的威胁，印度令人遗憾的国防预算支出的下降形成了鲜明的对比。
</p>
<p style="text-indent:2em;">
	据评估中国的国防预算在2014年直逼1480亿美元，仅次于美国，超过了德国、法国和英国这三个国家国防预算的总和。
</p>
<p style="text-align:center;text-indent:2em;">
	<br />
</p>
<ul>
	<ul>
		<ul>
			<li>
				<span style="line-height:1.5;">中国的国防预算也远远超过了其对等的亚洲竞争对手</span>
			</li>
			<li>
				<span style="line-height:1.5;">中国的国防预算也远远超过了其对等的亚洲竞争对手</span>
			</li>
			<li>
				<span style="line-height:1.5;">中国的国防预算也远远超过了其对等的亚洲竞争对手</span>
			</li>
			<li>
				<span style="line-height:1.5;">中国的国防预算也远远超过了其对等的亚洲竞争对手</span>
			</li>
		</ul>
	</ul>
</ul>
<p>
	<br />
</p>
<p style="text-indent:2em;">
	<br />
</p>
<p style="text-indent:2em;">
	中国的国防预算也远远超过了其对等的亚洲竞争对手日本和印度的国防开支的总和。日本的国防支出在2013年达到568.42亿美元，印度是461.83亿美元。印度在每年年度预算临近的时候，都需要成千上万的卢比脱离国防预算来平衡财政部的账面。
</p>
<p style="text-indent:2em;">
	世界各地的战略分析师都在质疑：在没有面临可信的来自美国和俄罗斯等大国的威胁的情况下，为什么中国需要这样的巨额预算呢？
</p>
<p style="text-indent:2em;">
	分析结果呼之欲出：中国正在努力减少其在其军事力量上与美国的差异，其行为拥有多重目的，最主要的是成为亚洲主要的军事力量，试图成为美国亚洲战略的对等力量。
</p>
<p style="text-indent:2em;">
	中国为这样的多重战略目标增加国防预算的重点是与兵力投送一起扩大海军和空军的战斗力，同时需要关注的是其核武库方面的现代化，中国的海军与空军力量加剧了在南海与越南和菲律宾、东海与日本之间的冲突是显而易见的。
</p>
<p style="text-indent:2em;">
	可以预见，中国的国防预算的进一步增加将会用于大幅增加中国的海上力量，包括升级潜艇舰队、水面主力军舰以及追加的航空母舰。预计中国的导弹武库以及核武库也会增加。
</p>
<p style="text-indent:2em;">
	中国地面部队在人力上可能不会增加，但是可以预见的是火力系统、直升机、空降部队以及特种部队的行动能力肯定会升级。
</p>
<p style="text-indent:2em;">
	对综合作战的强调标志着中国的指挥自动化系统能力将会引来关注。
</p>
<p style="text-indent:2em;">
	中国的网络做战能力需要大家对中国所有的军事网站的特别关注，不管是在和平时期还是冲突阶段，网络作战都同样适用。
</p>
<p style="text-indent:2em;">
	中国日益增长的军事力量与其自称的“和平崛起”极其不符，自2009年以来中国从使用“软实力战略”切换到“硬实力战略”，与越南、菲律宾、日本甚至与印度就喜马拉雅边境问题展开了更明显的对抗活动。
</p>
<p style="text-indent:2em;">
	中国新兴的军事实力也引起了主要军事大国美国、俄罗斯等国的关注，他们都以自己的方式来应对中国非良性目的、不利于全球及地区稳定的军事崛起。
</p>
<p style="text-indent:2em;">
	伴随着国防预算增加的中国持续增长的军事支出对印度有什么军事影响呢？
</p>
<p style="text-indent:2em;">
	就像有些人争辩的那样，中国国防开支的增加可能不是专门针对印度，他们会提到之前概述的战略目标，然而，根据溢出效应，什么都不能磨灭中国日益增长的军事力量对印度的战略和军事方面的严重影响的的战略现实。
</p>
<p style="text-indent:2em;">
	在战略方面，与中国强大的军事效应不同，印度的军事事实使的中国成为了印度在军事方面的“头号威胁”，在战略上印度的所作所为严重影响了将其列为“亚洲强国”的分值，也影响了其在亚洲乃至全球的形象，面对显著而快速增加军事力量的中国，就连日本都就“中国威胁”展现出了向“亚洲强国”奔达的姿态进行回应。
</p>
<p style="text-indent:2em;">
	因此，就战略上而言，较之试图减少与中国军事力量的差异，印度一直在退缩，任由中国座大，对此，所有的印度子民都应该表现出关心。
</p>
<p style="text-indent:2em;">
	为了应对中国针对印度日益增长的军事支出，我们在海陆空三个领域都面临着严峻的挑战。
</p>
<p style="text-indent:2em;">
	中国与印度在喜马拉雅边境有着特殊的军事问题，在边界与西藏腹地，中国都积累了压倒性的军事力量、空中力量和战略核导弹，并广泛发展国防基础设施如公路、铁路和机场来支持这个聚集中国军事力量来威胁印度的区域。
</p>
<p style="text-indent:2em;">
	中国在西藏就空中机动设备以及直升机方面的军费开支，主要是针对印度印度欠发达的国防、以及在反攻方面有限的流动性下的军队快速做出反应。
</p>
<p style="text-indent:2em;">
	中国在增加在西藏的整体实力部署，印度却由于政治领导及低效的国防部文职官僚，过去30年来炮兵被剥了向现代化诱变的机会，这些严重阻碍了印度军队在西藏边境的军事行动。
</p>
<p style="text-indent:2em;">
	由于在过去十年或更久的时间里政治上的优柔寡断以及国防部的官僚机构处理无力，使印度库存的超过126架战斗机在严重受损。这明显的薄弱严重削弱了印度在西藏边界的空中防御能力、剥夺了印度军队极度需要的空中支援、而印度炮兵配备的过时的武器系统使情势更加严峻。
</p>
<p style="text-indent:2em;">
	印度应该觉悟到，中国海事力量随着预算的不断增加正在持续壮大，长此以往，印度洋将会有不再是印度洋的危险，借着加入打击亚丁湾海盗的国际合作行动，中国海军已经在印度洋建立了军事存在。
</p>
<p style="text-indent:2em;">
	面对中国在印度洋日益增长的侵入性策略，印度的一如既往的态度也有可能对印度东望政策的实施造成影响，印度东望政策的有效实施除了强烈的政治意愿，还需要一个强大的海军姿态。
</p>
<p style="text-indent:2em;">
	目前我们对印度政府有否大量的金融资源，通过有效地分配土地、海洋和空中防御来合力安排安达曼和尼科巴群岛的驻军部署保持怀疑的态度。
</p>
<p style="text-indent:2em;">
	最后，我们就中国持续增长的国防开支及其对印度的影响进行了总结：
</p>
<p style="text-indent:2em;">
	1.中国一直并将继续是印度的“军事威胁”。
</p>
<p style="text-indent:2em;">
	2.中国持续增长的国防开支加强了其对印度的“军事威胁”。
</p>
<p style="text-indent:2em;">
	3.印度的政治领导人缺乏政治意愿来衡量中国军事力量的威胁，导致中印军事实力差距的扩大。
</p>
<p style="text-indent:2em;">
	4.印度需要测评中国威胁，划分责任，完整重组印度国防部等国家安全机构，重铸军民关系
</p>
<p style="text-indent:2em;">
	<br />
</p>
<p style="text-indent:2em;">
	<strong>原标题：美称中印军事实力差距扩大 印度需重估中国威胁<br />
</strong> 
</p>
<p style="text-indent:2em;">
	据美国欧亚评论网站报道，面对不断上升的来自中国和巴基斯坦的威胁，印度令人遗憾的国防预算支出的下降形成了鲜明的对比。
</p>
<p style="text-indent:2em;">
	据评估中国的国防预算在2014年直逼1480亿美元，仅次于美国，超过了德国、法国和英国这三个国家国防预算的总和。
</p>
<p style="text-indent:2em;">
	中国的国防预算也远远超过了其对等的亚洲竞争对手日本和印度的国防开支的总和。日本的国防支出在2013年达到568.42亿美元，印度是461.83亿美元。印度在每年年度预算临近的时候，都需要成千上万的卢比脱离国防预算来平衡财政部的账面。
</p>
<p style="text-indent:2em;">
	世界各地的战略分析师都在质疑：在没有面临可信的来自美国和俄罗斯等大国的威胁的情况下，为什么中国需要这样的巨额预算呢？
</p>
<p style="text-indent:2em;">
	分析结果呼之欲出：中国正在努力减少其在其军事力量上与美国的差异，其行为拥有多重目的，最主要的是成为亚洲主要的军事力量，试图成为美国亚洲战略的对等力量。
</p>
<p style="text-indent:2em;">
	中国为这样的多重战略目标增加国防预算的重点是与兵力投送一起扩大海军和空军的战斗力，同时需要关注的是其核武库方面的现代化，中国的海军与空军力量加剧了在南海与越南和菲律宾、东海与日本之间的冲突是显而易见的。
</p>
<p style="text-indent:2em;">
	可以预见，中国的国防预算的进一步增加将会用于大幅增加中国的海上力量，包括升级潜艇舰队、水面主力军舰以及追加的航空母舰。预计中国的导弹武库以及核武库也会增加。
</p>
<p style="text-indent:2em;">
	中国地面部队在人力上可能不会增加，但是可以预见的是火力系统、直升机、空降部队以及特种部队的行动能力肯定会升级。
</p>
<p style="text-indent:2em;">
	对综合作战的强调标志着中国的指挥自动化系统能力将会引来关注。
</p>
<p style="text-indent:2em;">
	中国的网络做战能力需要大家对中国所有的军事网站的特别关注，不管是在和平时期还是冲突阶段，网络作战都同样适用。
</p>
<p style="text-indent:2em;">
	中国日益增长的军事力量与其自称的“和平崛起”极其不符，自2009年以来中国从使用“软实力战略”切换到“硬实力战略”，与越南、菲律宾、日本甚至与印度就喜马拉雅边境问题展开了更明显的对抗活动。
</p>
<p style="text-indent:2em;">
	中国新兴的军事实力也引起了主要军事大国美国、俄罗斯等国的关注，他们都以自己的方式来应对中国非良性目的、不利于全球及地区稳定的军事崛起。
</p>
<p style="text-indent:2em;">
	伴随着国防预算增加的中国持续增长的军事支出对印度有什么军事影响呢？
</p>
<p style="text-indent:2em;">
	就像有些人争辩的那样，中国国防开支的增加可能不是专门针对印度，他们会提到之前概述的战略目标，然而，根据溢出效应，什么都不能磨灭中国日益增长的军事力量对印度的战略和军事方面的严重影响的的战略现实。
</p>
<p style="text-indent:2em;">
	在战略方面，与中国强大的军事效应不同，印度的军事事实使的中国成为了印度在军事方面的“头号威胁”，在战略上印度的所作所为严重影响了将其列为“亚洲强国”的分值，也影响了其在亚洲乃至全球的形象，面对显著而快速增加军事力量的中国，就连日本都就“中国威胁”展现出了向“亚洲强国”奔达的姿态进行回应。
</p>
<p style="text-indent:2em;">
	因此，就战略上而言，较之试图减少与中国军事力量的差异，印度一直在退缩，任由中国座大，对此，所有的印度子民都应该表现出关心。
</p>
<p style="text-indent:2em;">
	为了应对中国针对印度日益增长的军事支出，我们在海陆空三个领域都面临着严峻的挑战。
</p>
<p style="text-indent:2em;">
	中国与印度在喜马拉雅边境有着特殊的军事问题，在边界与西藏腹地，中国都积累了压倒性的军事力量、空中力量和战略核导弹，并广泛发展国防基础设施如公路、铁路和机场来支持这个聚集中国军事力量来威胁印度的区域。
</p>
<p style="text-indent:2em;">
	中国在西藏就空中机动设备以及直升机方面的军费开支，主要是针对印度印度欠发达的国防、以及在反攻方面有限的流动性下的军队快速做出反应。
</p>
<p style="text-indent:2em;">
	中国在增加在西藏的整体实力部署，印度却由于政治领导及低效的国防部文职官僚，过去30年来炮兵被剥了向现代化诱变的机会，这些严重阻碍了印度军队在西藏边境的军事行动。
</p>
<p style="text-indent:2em;">
	由于在过去十年或更久的时间里政治上的优柔寡断以及国防部的官僚机构处理无力，使印度库存的超过126架战斗机在严重受损。这明显的薄弱严重削弱了印度在西藏边界的空中防御能力、剥夺了印度军队极度需要的空中支援、而印度炮兵配备的过时的武器系统使情势更加严峻。
</p>
<p style="text-indent:2em;">
	印度应该觉悟到，中国海事力量随着预算的不断增加正在持续壮大，长此以往，印度洋将会有不再是印度洋的危险，借着加入打击亚丁湾海盗的国际合作行动，中国海军已经在印度洋建立了军事存在。
</p>
<p style="text-indent:2em;">
	面对中国在印度洋日益增长的侵入性策略，印度的一如既往的态度也有可能对印度东望政策的实施造成影响，印度东望政策的有效实施除了强烈的政治意愿，还需要一个强大的海军姿态。
</p>
<p style="text-indent:2em;">
	目前我们对印度政府有否大量的金融资源，通过有效地分配土地、海洋和空中防御来合力安排安达曼和尼科巴群岛的驻军部署保持怀疑的态度。
</p>
<p style="text-indent:2em;">
	最后，我们就中国持续增长的国防开支及其对印度的影响进行了总结：
</p>
<p style="text-indent:2em;">
	1.中国一直并将继续是印度的“军事威胁”。
</p>
<p style="text-indent:2em;">
	2.中国持续增长的国防开支加强了其对印度的“军事威胁”。
</p>
<p style="text-indent:2em;">
	3.印度的政治领导人缺乏政治意愿来衡量中国军事力量的威胁，导致中印军事实力差距的扩大。
</p>
<p style="text-indent:2em;">
	4.印度需要测评中国威胁，划分责任，完整重组印度国防部等国家安全机构，重铸军民关系
</p>
<p style="text-indent:2em;">
	<strong>原标题：美称中印军事实力差距扩大 印度需重估中国威胁<br />
</strong> 
</p>
<p style="text-indent:2em;">
	据美国欧亚评论网站报道，面对不断上升的来自中国和巴基斯坦的威胁，印度令人遗憾的国防预算支出的下降形成了鲜明的对比。
</p>
<p style="text-indent:2em;">
	据评估中国的国防预算在2014年直逼1480亿美元，仅次于美国，超过了德国、法国和英国这三个国家国防预算的总和。
</p>
<p style="text-indent:2em;">
	中国的国防预算也远远超过了其对等的亚洲竞争对手日本和印度的国防开支的总和。日本的国防支出在2013年达到568.42亿美元，印度是461.83亿美元。印度在每年年度预算临近的时候，都需要成千上万的卢比脱离国防预算来平衡财政部的账面。
</p>
<p style="text-indent:2em;">
	世界各地的战略分析师都在质疑：在没有面临可信的来自美国和俄罗斯等大国的威胁的情况下，为什么中国需要这样的巨额预算呢？
</p>
<p style="text-indent:2em;">
	分析结果呼之欲出：中国正在努力减少其在其军事力量上与美国的差异，其行为拥有多重目的，最主要的是成为亚洲主要的军事力量，试图成为美国亚洲战略的对等力量。
</p>
<p style="text-indent:2em;">
	中国为这样的多重战略目标增加国防预算的重点是与兵力投送一起扩大海军和空军的战斗力，同时需要关注的是其核武库方面的现代化，中国的海军与空军力量加剧了在南海与越南和菲律宾、东海与日本之间的冲突是显而易见的。
</p>
<p style="text-indent:2em;">
	可以预见，中国的国防预算的进一步增加将会用于大幅增加中国的海上力量，包括升级潜艇舰队、水面主力军舰以及追加的航空母舰。预计中国的导弹武库以及核武库也会增加。
</p>
<p style="text-indent:2em;">
	中国地面部队在人力上可能不会增加，但是可以预见的是火力系统、直升机、空降部队以及特种部队的行动能力肯定会升级。
</p>
<p style="text-indent:2em;">
	对综合作战的强调标志着中国的指挥自动化系统能力将会引来关注。
</p>
<p style="text-indent:2em;">
	中国的网络做战能力需要大家对中国所有的军事网站的特别关注，不管是在和平时期还是冲突阶段，网络作战都同样适用。
</p>
<p style="text-indent:2em;">
	中国日益增长的军事力量与其自称的“和平崛起”极其不符，自2009年以来中国从使用“软实力战略”切换到“硬实力战略”，与越南、菲律宾、日本甚至与印度就喜马拉雅边境问题展开了更明显的对抗活动。
</p>
<p style="text-indent:2em;">
	中国新兴的军事实力也引起了主要军事大国美国、俄罗斯等国的关注，他们都以自己的方式来应对中国非良性目的、不利于全球及地区稳定的军事崛起。
</p>
<p style="text-indent:2em;">
	伴随着国防预算增加的中国持续增长的军事支出对印度有什么军事影响呢？
</p>
<p style="text-indent:2em;">
	就像有些人争辩的那样，中国国防开支的增加可能不是专门针对印度，他们会提到之前概述的战略目标，然而，根据溢出效应，什么都不能磨灭中国日益增长的军事力量对印度的战略和军事方面的严重影响的的战略现实。
</p>
<p style="text-indent:2em;">
	在战略方面，与中国强大的军事效应不同，印度的军事事实使的中国成为了印度在军事方面的“头号威胁”，在战略上印度的所作所为严重影响了将其列为“亚洲强国”的分值，也影响了其在亚洲乃至全球的形象，面对显著而快速增加军事力量的中国，就连日本都就“中国威胁”展现出了向“亚洲强国”奔达的姿态进行回应。
</p>
<p style="text-indent:2em;">
	因此，就战略上而言，较之试图减少与中国军事力量的差异，印度一直在退缩，任由中国座大，对此，所有的印度子民都应该表现出关心。
</p>
<p style="text-indent:2em;">
	为了应对中国针对印度日益增长的军事支出，我们在海陆空三个领域都面临着严峻的挑战。
</p>
<p style="text-indent:2em;">
	中国与印度在喜马拉雅边境有着特殊的军事问题，在边界与西藏腹地，中国都积累了压倒性的军事力量、空中力量和战略核导弹，并广泛发展国防基础设施如公路、铁路和机场来支持这个聚集中国军事力量来威胁印度的区域。
</p>
<p style="text-indent:2em;">
	中国在西藏就空中机动设备以及直升机方面的军费开支，主要是针对印度印度欠发达的国防、以及在反攻方面有限的流动性下的军队快速做出反应。
</p>
<p style="text-indent:2em;">
	中国在增加在西藏的整体实力部署，印度却由于政治领导及低效的国防部文职官僚，过去30年来炮兵被剥了向现代化诱变的机会，这些严重阻碍了印度军队在西藏边境的军事行动。
</p>
<p style="text-indent:2em;">
	由于在过去十年或更久的时间里政治上的优柔寡断以及国防部的官僚机构处理无力，使印度库存的超过126架战斗机在严重受损。这明显的薄弱严重削弱了印度在西藏边界的空中防御能力、剥夺了印度军队极度需要的空中支援、而印度炮兵配备的过时的武器系统使情势更加严峻。
</p>
<p style="text-indent:2em;">
	印度应该觉悟到，中国海事力量随着预算的不断增加正在持续壮大，长此以往，印度洋将会有不再是印度洋的危险，借着加入打击亚丁湾海盗的国际合作行动，中国海军已经在印度洋建立了军事存在。
</p>
<p style="text-indent:2em;">
	面对中国在印度洋日益增长的侵入性策略，印度的一如既往的态度也有可能对印度东望政策的实施造成影响，印度东望政策的有效实施除了强烈的政治意愿，还需要一个强大的海军姿态。
</p>
<p style="text-indent:2em;">
	目前我们对印度政府有否大量的金融资源，通过有效地分配土地、海洋和空中防御来合力安排安达曼和尼科巴群岛的驻军部署保持怀疑的态度。
</p>
<p style="text-indent:2em;">
	最后，我们就中国持续增长的国防开支及其对印度的影响进行了总结：
</p>
<p style="text-indent:2em;">
	1.中国一直并将继续是印度的“军事威胁”。
</p>
<p style="text-indent:2em;">
	2.中国持续增长的国防开支加强了其对印度的“军事威胁”。
</p>
<p style="text-indent:2em;">
	3.印度的政治领导人缺乏政治意愿来衡量中国军事力量的威胁，导致中印军事实力差距的扩大。
</p>
<p style="text-indent:2em;">
	4.印度需要测评中国威胁，划分责任，完整重组印度国防部等国家安全机构，重铸军民关系
</p>
<img src="http://img1.gtimg.com/news/pics/hv1/144/153/1519/98812134.jpg" alt="" /> 
<p>
	<br />
</p>', '', '2014-02-14 09:16:34', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (88, 106, 'jj', 'jjjj', '1392358836249.jpg', '2014-02-14 14:20:36', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (89, 106, 'gg', 'gggg', '', '2014-02-14 14:20:50', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (90, 105, 'working at XHIS', 'working at XHISworking at XHISworking at XHISworking at XHISworking at XHIS', '1392722012359.jpg', '2014-02-14 16:15:25', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (91, 196, 'General catalogue', 'General catalogueGeneral catalogueGeneral catalogueGeneral catalogue', '1392722042312.jpg', '2014-02-14 16:32:54', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (92, 129, 'The IB Programmes', 'The IB ProgrammesThe IB ProgrammesThe IB ProgrammesThe IB Programmes', '1392721957953.jpg', '2014-02-17 16:49:46', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (94, 105, 'ddd', 'dddd', '1392866158421.jpg', '2014-02-20 11:15:58', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (105, 117, 'ggggggggggggggggg', 'ggggggggggggggggg', '1392889283749.jpg', '2014-02-20 17:41:23', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (106, 117, 'kkkkkkkk', 'kkkkkkkkkkkk', '1392889316260.jpg', '2014-02-20 17:41:56', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (108, 117, 'uuuuuuu', 'uuuuuuuuuuu', '', '2014-02-20 17:43:38', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (111, 117, 'ooooooooooo', 'oooooooooooooo', '1392889921292.jpg', '2014-02-20 17:52:01', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (112, 117, 'bbbbbbbbbbbb', 'bbbbbbbbbbb', '', '2014-02-20 17:53:36', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (113, 216, '关于我们', '关于我们1关于我们1关于我们1关于我们1', '1392948726161.jpg', '2014-02-21 10:12:06', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (114, 215, '中文版滚动出来就错了', '<span style="white-space:normal;">fff</span>', '', '2014-02-21 11:12:22', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (115, 247, 'fffffffffffffff', 'ffffffffffffffff', '', '2014-02-21 15:46:10', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (116, 248, '关于我们火爆中', '关于我们火爆中', '1392972552624.jpg', '2014-02-21 16:21:31', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (117, 254, '学校负责人1', '学校负责人学校负责人学校负责人学校负责人学校负责人', '', '2014-02-21 16:50:53', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (118, 248, '顶顶顶顶', '顶顶顶顶', '', '2014-02-21 16:53:20', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (119, 248, '苟富贵', '规范飞', '', '2014-02-21 16:54:12', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (120, 254, '学校负责人', '学校负责人学校负责人学校负责人学校负责人学校负责人', '1392973188787.jpg', '2014-02-21 16:59:48', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (121, 254, '学校负责人2', '学校负责人学校负责人学校负责人学校负责人学校负责人', '', '2014-02-21 17:00:41', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (122, 254, '学校负责人2', '学校负责人2学校负责人2学校负责人2学校负责人2', '', '2014-02-21 17:01:10', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (123, 103, '撒撒', '撒飒飒', '', '2014-02-21 17:05:09', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (124, 256, '使命', '使命使命使命使命', '1392973517748.jpg', '2014-02-21 17:05:17', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (125, 264, '愿景，使命和理念', '愿景，使命和理念愿景，使命和理念愿景，使命和理念愿景，使命和理念', '', '2014-02-21 17:05:38', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (126, 265, '目标', '目标目标目标目标', '', '2014-02-21 17:05:54', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (127, 248, '费大幅度', '<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	<strong>原标题：美称中印军事实力差距扩大 印度需重估中国威胁<br />
</strong>
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	据美国欧亚评论网站报道，面对不断上升的来自中国和巴基斯坦的威胁，印度令人遗憾的国防预算支出的下降形成了鲜明的对比。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	据评估中国的国防预算在2014年直逼1480亿美元，仅次于美国，超过了德国、法国和英国这三个国家国防预算的总和。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国的国防预算也远远超过了其对等的亚洲竞争对手日本和印度的国防开支的总和。日本的国防支出在2013年达到568.42亿美元，印度是461.83亿美元。印度在每年年度预算临近的时候，都需要成千上万的卢比脱离国防预算来平衡财政部的账面。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	世界各地的战略分析师都在质疑：在没有面临可信的来自美国和俄罗斯等大国的威胁的情况下，为什么中国需要这样的巨额预算呢？
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	分析结果呼之欲出：中国正在努力减少其在其军事力量上与美国的差异，其行为拥有多重目的，最主要的是成为亚洲主要的军事力量，试图成为美国亚洲战略的对等力量。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国为这样的多重战略目标增加国防预算的重点是与兵力投送一起扩大海军和空军的战斗力，同时需要关注的是其核武库方面的现代化，中国的海军与空军力量加剧了在南海与越南和菲律宾、东海与日本之间的冲突是显而易见的。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	可以预见，中国的国防预算的进一步增加将会用于大幅增加中国的海上力量，包括升级潜艇舰队、水面主力军舰以及追加的航空母舰。预计中国的导弹武库以及核武库也会增加。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国地面部队在人力上可能不会增加，但是可以预见的是火力系统、直升机、空降部队以及特种部队的行动能力肯定会升级。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	对综合作战的强调标志着中国的指挥自动化系统能力将会引来关注。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国的网络做战能力需要大家对中国所有的军事网站的特别关注，不管是在和平时期还是冲突阶段，网络作战都同样适用。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国日益增长的军事力量与其自称的“和平崛起”极其不符，自2009年以来中国从使用“软实力战略”切换到“硬实力战略”，与越南、菲律宾、日本甚至与印度就喜马拉雅边境问题展开了更明显的对抗活动。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国新兴的军事实力也引起了主要军事大国美国、俄罗斯等国的关注，他们都以自己的方式来应对中国非良性目的、不利于全球及地区稳定的军事崛起。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	伴随着国防预算增加的中国持续增长的军事支出对印度有什么军事影响呢？
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	就像有些人争辩的那样，中国国防开支的增加可能不是专门针对印度，他们会提到之前概述的战略目标，然而，根据溢出效应，什么都不能磨灭中国日益增长的军事力量对印度的战略和军事方面的严重影响的的战略现实。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	在战略方面，与中国强大的军事效应不同，印度的军事事实使的中国成为了印度在军事方面的“头号威胁”，在战略上印度的所作所为严重影响了将其列为“亚洲强国”的分值，也影响了其在亚洲乃至全球的形象，面对显著而快速增加军事力量的中国，就连日本都就“中国威胁”展现出了向“亚洲强国”奔达的姿态进行回应。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	因此，就战略上而言，较之试图减少与中国军事力量的差异，印度一直在退缩，任由中国座大，对此，所有的印度子民都应该表现出关心。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	为了应对中国针对印度日益增长的军事支出，我们在海陆空三个领域都面临着严峻的挑战。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国与印度在喜马拉雅边境有着特殊的军事问题，在边界与西藏腹地，中国都积累了压倒性的军事力量、空中力量和战略核导弹，并广泛发展国防基础设施如公路、铁路和机场来支持这个聚集中国军事力量来威胁印度的区域。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国在西藏就空中机动设备以及直升机方面的军费开支，主要是针对印度印度欠发达的国防、以及在反攻方面有限的流动性下的军队快速做出反应。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国在增加在西藏的整体实力部署，印度却由于政治领导及低效的国防部文职官僚，过去30年来炮兵被剥了向现代化诱变的机会，这些严重阻碍了印度军队在西藏边境的军事行动。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	由于在过去十年或更久的时间里政治上的优柔寡断以及国防部的官僚机构处理无力，使印度库存的超过126架战斗机在严重受损。这明显的薄弱严重削弱了印度在西藏边界的空中防御能力、剥夺了印度军队极度需要的空中支援、而印度炮兵配备的过时的武器系统使情势更加严峻。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	印度应该觉悟到，中国海事力量随着预算的不断增加正在持续壮大，长此以往，印度洋将会有不再是印度洋的危险，借着加入打击亚丁湾海盗的国际合作行动，中国海军已经在印度洋建立了军事存在。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	面对中国在印度洋日益增长的侵入性策略，印度的一如既往的态度也有可能对印度东望政策的实施造成影响，印度东望政策的有效实施除了强烈的政治意愿，还需要一个强大的海军姿态。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	目前我们对印度政府有否大量的金融资源，通过有效地分配土地、海洋和空中防御来合力安排安达曼和尼科巴群岛的驻军部署保持怀疑的态度。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	最后，我们就中国持续增长的国防开支及其对印度的影响进行了总结：
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	1.中国一直并将继续是印度的“军事威胁”。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	2.中国持续增长的国防开支加强了其对印度的“军事威胁”。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	3.印度的政治领导人缺乏政治意愿来衡量中国军事力量的威胁，导致中印军事实力差距的扩大。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	4.印度需要测评中国威胁，划分责任，完整重组印度国防部等国家安全机构，重铸军民关系
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	<strong>原标题：美称中印军事实力差距扩大 印度需重估中国威胁<br />
</strong>
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	据美国欧亚评论网站报道，面对不断上升的来自中国和巴基斯坦的威胁，印度令人遗憾的国防预算支出的下降形成了鲜明的对比。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	据评估中国的国防预算在2014年直逼1480亿美元，仅次于美国，超过了德国、法国和英国这三个国家国防预算的总和。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国的国防预算也远远超过了其对等的亚洲竞争对手日本和印度的国防开支的总和。日本的国防支出在2013年达到568.42亿美元，印度是461.83亿美元。印度在每年年度预算临近的时候，都需要成千上万的卢比脱离国防预算来平衡财政部的账面。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	世界各地的战略分析师都在质疑：在没有面临可信的来自美国和俄罗斯等大国的威胁的情况下，为什么中国需要这样的巨额预算呢？
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	分析结果呼之欲出：中国正在努力减少其在其军事力量上与美国的差异，其行为拥有多重目的，最主要的是成为亚洲主要的军事力量，试图成为美国亚洲战略的对等力量。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国为这样的多重战略目标增加国防预算的重点是与兵力投送一起扩大海军和空军的战斗力，同时需要关注的是其核武库方面的现代化，中国的海军与空军力量加剧了在南海与越南和菲律宾、东海与日本之间的冲突是显而易见的。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	可以预见，中国的国防预算的进一步增加将会用于大幅增加中国的海上力量，包括升级潜艇舰队、水面主力军舰以及追加的航空母舰。预计中国的导弹武库以及核武库也会增加。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国地面部队在人力上可能不会增加，但是可以预见的是火力系统、直升机、空降部队以及特种部队的行动能力肯定会升级。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	对综合作战的强调标志着中国的指挥自动化系统能力将会引来关注。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国的网络做战能力需要大家对中国所有的军事网站的特别关注，不管是在和平时期还是冲突阶段，网络作战都同样适用。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国日益增长的军事力量与其自称的“和平崛起”极其不符，自2009年以来中国从使用“软实力战略”切换到“硬实力战略”，与越南、菲律宾、日本甚至与印度就喜马拉雅边境问题展开了更明显的对抗活动。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国新兴的军事实力也引起了主要军事大国美国、俄罗斯等国的关注，他们都以自己的方式来应对中国非良性目的、不利于全球及地区稳定的军事崛起。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	伴随着国防预算增加的中国持续增长的军事支出对印度有什么军事影响呢？
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	就像有些人争辩的那样，中国国防开支的增加可能不是专门针对印度，他们会提到之前概述的战略目标，然而，根据溢出效应，什么都不能磨灭中国日益增长的军事力量对印度的战略和军事方面的严重影响的的战略现实。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	在战略方面，与中国强大的军事效应不同，印度的军事事实使的中国成为了印度在军事方面的“头号威胁”，在战略上印度的所作所为严重影响了将其列为“亚洲强国”的分值，也影响了其在亚洲乃至全球的形象，面对显著而快速增加军事力量的中国，就连日本都就“中国威胁”展现出了向“亚洲强国”奔达的姿态进行回应。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	因此，就战略上而言，较之试图减少与中国军事力量的差异，印度一直在退缩，任由中国座大，对此，所有的印度子民都应该表现出关心。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	为了应对中国针对印度日益增长的军事支出，我们在海陆空三个领域都面临着严峻的挑战。
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;list-style:none;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;text-indent:2em;">
	中国与印度在喜马拉雅边境有着特殊的军事问题，在边界与西藏腹地，中国都积累了压倒性的军事力量、空中力量和战略核导弹，并广泛发展国防基础设施如公路、铁路和机场来支持这个聚集中国军事力量来威胁印度的区域。
</p>', '', '2014-02-21 17:10:06', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (128, 248, '大声道', '的是上的', '1392974014265.jpg', '2014-02-21 17:13:34', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (129, 102, '111', '111', '1393410875531.jpg', '2014-02-26 18:34:35', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (132, 248, 'sss', '<p style="white-space:normal;text-indent:2em;">
	中新网2月13日电 广西平南县公安局民警胡平涉嫌故意杀人案13日上午9时将在贵港市中级人民法院开庭审理。涉案民警涉嫌故意杀人被提起公诉，同时，死者家属委托律师提起总额共计123万余元的刑事附带民事赔偿。死者丈夫蔡世勇也将赶回平南县参加庭审。
</p>
<ol>
	<ol>
		<ol>
			<ol>
				<ul>
					<li>
						<strong style="line-height:1.5;text-indent:2em;">民警酒后闯入米粉店 开枪打死怀孕女店主</strong> 
					</li>
					<li>
						<strong style="line-height:1.5;text-indent:2em;">民警酒后闯入米粉店 开枪打死怀孕女店主</strong> 
					</li>
					<li>
						<strong style="line-height:1.5;text-indent:2em;">民警酒后闯入米粉店 开枪打死怀孕女店主</strong> 
					</li>
					<li>
						<strong style="line-height:1.5;text-indent:2em;">民警酒后闯入米粉店 开枪打死怀孕女店主</strong> 
					</li>
				</ul>
			</ol>
		</ol>
	</ol>
</ol>
<p style="white-space:normal;text-indent:2em;">
	2013年10月28日，广西平南县大鹏镇发生一起杀人案，该县公安局民警胡平酒后在该镇某米粉店购买食品时，只因米粉店不卖奶茶，遂拔枪打死已怀有身孕的女店主，其丈夫中枪侥幸未死。
</p>
<p style="white-space:normal;text-indent:2em;">
	案件发生后，涉案民警胡平被开除党籍、开除公职，移送司法机关处理，并被检察机关以涉嫌故意杀人罪提起公诉，6名有关责任人被停职调查。据中央政法委2014年2月11日通报，平南县原副县长、公安局长周贤，公安局原政委李坚分别受到撤销党内职务、行政撤职处分，其他相关责任人分别受到党纪政纪处理。
</p>
<p style="white-space:normal;text-indent:2em;">
	据报道，涉案民警的家属曾试图通过经济赔偿取得被害人谅解，但被受害人家属拒绝。当地政府部门也曾提出赔偿计划，并和被害人家属进行协商，当事人家属一度拒绝赔偿。
</p>
<p style="white-space:normal;text-indent:2em;">
	2013年10月31日，当地政府曾将死者吴英娘家、婆家亲属召集到一处，商议先行赔偿问题。蔡世勇的姐夫赖先生表示，政府提出的赔偿金额70余万，包括死者赔偿金、孩子抚养费等。
</p>
<p style="white-space:normal;text-indent:2em;">
	当地政府的这一行为引发公众质疑：加害人为醉酒民警，政府为何埋单？2013年11月3日，贵港市副市长、平南县委书记黄星荣接受采访时称，考虑到诉讼时间较长，为了尽快让受害者得到补偿，计划由政府出面先行支付，事后再由犯罪嫌疑人偿还政府。
</p>
<p style="white-space:normal;text-indent:2em;">
	<strong>死者家属索赔123万 或得不到精神抚慰金</strong> 
</p>
<p style="white-space:normal;text-indent:2em;">
	广西警察枪杀孕妇案曾引起社会广泛关注，在案发后的3个多月的时间内，始终未走上司法程序，被网友戏称为“2013年十大烂尾案件”。
</p>
<p style="white-space:normal;text-indent:2em;">
	除了涉案民警最终判决结果，受害人家属的索赔金额也受到关注。因此前受害人家属拒绝涉案民警家属赔偿，此次提出123万元赔偿，能否获得法院支持尚存疑问。
</p>
<p style="white-space:normal;text-indent:2em;">
	据受害人家属的代理律师陈逸洋介绍，吴英的父母还提起了总额共计123万余元的刑事附带民事赔偿诉讼。包括死者吴英的死亡赔偿金、被扶养人的扶养费、丧葬费、精神损害抚慰金等；吴英的丈夫蔡世勇的医药费、误工费、护理费、住院补贴、伙食补贴、交通费以及精神损害抚慰金等。
</p>
<p style="white-space:normal;text-indent:2em;">
	据媒体报道，受害人吴英的哥哥、受伤店主蔡世勇及其姐夫赖先生称，此前他们已经从当地政府处收到70万元的赔偿，但受害人家属未能详细说明该笔钱的性质。
</p>
<p style="white-space:normal;text-indent:2em;">
	有法律人士指出，从法律上说，刑事附带民事赔偿应该按照法律的有关规定和标准进行赔偿，但是和普通的民事伤害案件不同，刑事案件中的犯罪嫌疑人要受到刑事处罚，依法律不会再有精神赔偿金。
</p>', '', '2014-03-05 09:33:39', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (133, 248, 'ddd', '啊啊啊啊啊啊啊啊', '1399276219759.jpg', '2014-03-05 09:34:47', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (134, 248, 'ddd', '·，', '', '2014-03-05 09:37:16', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (135, 248, '111', '<pre id="recommend-content-425477102" accuse="aContent" class="recommend-text expand-exp mb-10" style="margin-top:0px;margin-bottom:10px;padding:0px;font-family:arial, ''courier new'', courier, 宋体, monospace;white-space:pre-wrap;word-wrap:break-word;position:relative;zoom:1;color:#333333;font-size:14px;line-height:24px;background-color:#F1FEDD;">丶1</pre>', '', '2014-03-05 09:41:25', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (136, 101, '淡淡的', '<p>
	<br />
</p>
<span style="line-height:1.5;">
<ul>
	<ul>
		<ul>
			<li>
				<span style="line-height:1.5;">四十四</span>
			</li>
			<li>
				<span style="line-height:1.5;">第三方的sf的sf&nbsp;</span>
			</li>
			<li>
				<span style="line-height:1.5;">发大水发大水fs的发大水</span>
			</li>
			<li>
				<span style="line-height:1.5;">发送到松岛枫</span>
			</li>
		</ul>
	</ul>
</ul>
</span>
<p>
	<br />
</p>', '', '2014-03-05 10:12:49', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (137, 101, '是颠三倒四', '<p>
	<br />
</p>
<ul>
	<ul>
		<ul>
			<ul>
				<ul>
					<ul>
						<li>
							<span style="line-height:1.5;">顶顶顶顶顶顶顶顶顶</span> 
						</li>
						<li>
							<span style="line-height:1.5;">反复反复反复反复发</span> 
						</li>
						<li>
							<span style="line-height:1.5;">嘎嘎嘎灌灌灌灌灌</span> 
						</li>
						<li>
							<span style="line-height:1.5;">hhhhhhhhhjjjjjjj</span> 
						</li>
						<li>
							<span style="line-height:1.5;">jjjjjjjjjhhhhhhhhhhhh</span> 
						</li>
					</ul>
				</ul>
			</ul>
		</ul>
	</ul>
</ul>
<p>
	<br />
</p>', '', '2014-03-12 10:12:42', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (147, 362, '测试测试测试测试测试', '<span style="white-space:normal;">顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶<span style="white-space:normal;">顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶<span style="white-space:normal;">顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶<span style="white-space:normal;">顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶<img src="/cmss/attached/image/20140404/20140404144308_370.jpg" alt="" /></span></span></span></span>', '1396593796879.jpg', '2014-04-04 14:43:16', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (148, 362, '测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试<img src="/cmss/attached/image/20140404/20140404144343_352.jpg" alt="" />', '', '2014-04-04 14:43:45', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (149, 363, '测试1测试1测试1', '测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1', '1396593932463.jpg', '2014-04-04 14:45:32', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (150, 364, '测试2测试2测试2测试2', '测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2测试2', '1396593956135.jpg', '2014-04-04 14:45:56', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (152, 365, 'abc', '阿百川v你是否开始对你佛山$*$东方舵手发给你独守空房$*$给你的福克斯功能分工', '1411720327505.jpg', '2014-05-07 15:29:33', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (153, 108, 'abc', '<img src="/cms/attached/image/20140519/20140519110242_539.png" alt="" />', '', '2014-05-19 11:03:02', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (154, 193, 'WE ARE NOW HIRING', '<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;">
	Are you a dynamic and experienced teacher looking to work for Xhis in Xi’an ?
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;">
	This is the opportunity that you have been waiting for !!!
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;">
	We are currently looking for professional, pro-active and dedicated teachers to join our team !!!
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;">
	We offer competitive packages based on your qualifications, experience and attitude while opening the door for you to beautiful and exotic China !
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;">
	Please contact Cathy, our Human Resources Director ASAP !
</p>
<p style="margin-top:8px;margin-bottom:8px;padding:0px 28px;line-height:16px;color:#686868;font-family:Arial, Helvetica, sans-serif;white-space:normal;">
	<a href="mailto:administration@xhisid.com" style="outline-style:none;color:#486DAE;font-weight:bold;">administration@xhisid.com</a>
</p>', '', '2014-09-04 09:41:28', 1, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (155, 105, 'mytest', 'mytest!', '', '2014-09-04 09:49:09', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (156, 106, 'dd', 'dddd', '', '2014-09-04 10:08:37', 0, 0, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (157, 100, 'sdsdsdsdsdfs', '<a href="/cms/attached/file/20141031/20141031170955_889.rar" target="_blank">/cms/attached/file/20141031/20141031170955_889.rar</a>
<p>
	asfsgdfgdsfsdfghsdhflsdnfosnd$*$fjkdsbnjbdjbsddddddddddddddbgfjkxdbfjksbdafgaksjdbgkjbbjfjdssssssssssssssssssssssssssnjfbsdjkbf$*$jjjjjjjjjjjjjgfhfghdfshfkjsdngkdnfgdnfgkjdnsfgjknbdfjkgsdjfgjfdgjdfgdjfgjnsdhfuhjsdhbsdkjg
</p>
<p>
	bsjdbgjsdbgjsdbgjsdbgsjdbgjksdbgksjdbgjksdfgbjsdfbgjsdfbgjsdfbgjsdbgjfbgjsdfbgjsk
</p>
<hr />
<p>
	<br />
</p>
<p>
	dfbgjsdgbjsdbgjfsdbgjfsdbgjsdfbgjfsdbgjfbgjbsahjsavbfhjsdfjsdfjhsdfhsdfhsdfh
</p>
<p>
	dsbfjhsdbfhsdbfhdsbfhdbfhdbfhdbfhdbfdssdfsdfdsfdffgdfgfdgfdgf
</p>
<p>
	sdffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
</p>
<p>
	dfghfghfghghjghjghj
</p>
<p>
	fdgjhgjghjghjghjghj
</p>
<p>
	djhgjgjkjhkjkjhkhjkjh
</p>
<p>
	gfkjkhjkhjkhjkhjk
</p>
<p>
	dhjghkkhjkhgjkhjkh
</p>
<p>
	fgjghjhgjghjhgk
</p>
<p>
	hgjhgkjjhkjkjh
</p>
<p>
	gfdjhgjhggggggggggggggggggggggggggggggggggggggggggkjh
</p>
<p>
	k
</p>
<p>
	fjkjjhkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
</p>
<p>
	dsssssssssssssssssssssssssssssssssssssss
</p>
<p>
	sdddddddddddddddddddddddddddddddddd
</p>
<p>
	dsfgfgggggggggggggggggggggggggggggggggggggggggggggg
</p>
<p>
	&nbsp;
</p>', '', '2014-09-26 11:20:23', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (158, 248, '简介', '<p class="MsoNormal" style="text-indent:28.65pt;">
	<b>西安建筑科技大学建筑勘测研究所是一个以测量专业专家、教授和工程技术人员为主，综合其它院、系的工程地质、建筑结构等相关专业科研人员，集教学、科研、生产为一体的专业技术实体。本所自创建以来，经过学校和本所全体人员努力奋斗，研究所在科研水平、生产能力等方面有了迅速发展。研究所现有人员</b><b>28</b><b>人，其中具有高级职称者</b><b>10</b><b>人，中级职称</b><b>16</b><b>人。研究所拥有各类勘测仪器、设备近</b><b>200</b><b>台套，其中大部分是从美国、德国、英国、日本等国家进口的先进的高精密仪器。</b><b></b> 
</p>
<p class="MsoNormal" style="text-indent:28.65pt;">
	<b>本所充分发挥高校的科技优势，以严谨求实的科学态度，积极为社会服务。先后承担国家级研究课题</b><b>4</b><b>项、省部级研究课题</b><b>6</b><b>项，并多次完成了大型的工业与民用建筑、城镇规划、厂矿建设、农田水利和管线、道路建设等工程的测绘任务。如珠海市横琴岛</b><b>1</b><b>﹕</b><b>500</b><b>地形图测绘、黄河壶口瀑布风景区</b><b>1</b><b>﹕</b><b>1000</b><b>规划地形图测绘、华山风景区</b><b>1</b><b>﹕</b><b>500</b><b>地形图测绘、安徽省铜陵金昌冶炼厂</b><b>1</b><b>﹕</b><b>500</b><b>地形图及地下管线探测与计算机信息管理等大、中型测绘项目，均受到建设单位的嘉奖。我所还发挥我校在建筑方面的技术优势，与地基、建筑结构、材料等方面的专家、教授联合，在大中型建、构筑物变形监测及结构构件形变监测方面，采用高精度的先进仪器、设备进行施测，配已完善的计算机数据处理系统，对外业测量数据进行处理，发现异常，从地基、结构、材料等方面及时进行分析、研究，并提出科学、合理的解决方法。使测量与建筑工程专业紧密结合起来，切实做到测量为建筑工程服务。通过在大量的实际工程中运用，取得了令人满意的研究成果和社会效益，为建设单位解决了许多实际问题和工程技术难题，消除了事故隐患，挽回了较大的经济损失，同时也积累了丰富的工程实践经验。近年来先后承担了北京～石家庄高速铁路客运专线“永定河特大桥”沉降观测及梁体徐变监测、陕西省电信网管大楼（高</b><b>161m</b><b>）为代表的沉降观测项目</b><b>400</b><b>余项。陕西日报社《西北五省区安全生产专刊》及陕西电视台“时代广场”栏目均对此作过报道。我所在全国唯一承担着国家自然科学基金委员会的《建筑物形变与结构应变三维数字摄影测量与数学模型研究》这一高科技研究课题，并得到了国家科委</b><b>12</b><b>万元经费的专项研究资助。此项目的承担标志着我所在建筑物变形（沉降与位移）方面的研究处于国内领先水平。</b><b></b> 
</p>
<b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;我所持有国家测绘局颁发的《测绘资格证书》和西安市规划局颁发的《测绘许可证》，并通过了西安市质检站沉降观测资格认证。</b>', '1419979650203.jpg', '2014-12-31 06:43:17', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (159, 252, '联系我们', '<b>地址：西安市雁塔路13号&nbsp;&nbsp; 建大北院综合楼二楼</b>', '', '2014-12-31 06:51:57', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (160, 373, '元旦放假通知', '元旦放假3天，特此通知！', '', '2014-12-31 06:53:14', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (161, 374, '欢度圣诞', '欢度圣诞', '', '2014-12-31 06:55:45', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (162, 375, '招聘信息', '&nbsp; &nbsp; 招聘招聘招聘！<img src="http://localhost/jdch/js/kindeditor/plugins/emoticons/images/0.gif" border="0" alt="" />', '', '2014-12-31 06:57:46', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (163, 378, '习大大指导相关工作', '&nbsp;&nbsp;&nbsp;&nbsp;近期习大大指导相关工作！', '', '2014-12-31 07:03:27', 0, 1, 1);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (164, 377, '校领导', '校领导考察', '', '2014-12-31 07:05:43', 0, 1, 0);
INSERT INTO cms_article (article_id, menu_id, article_title, article_content, article_img, article_date, isdel, shows, rolls) VALUES (165, 260, '地图', '<img src="http://api.map.baidu.com/staticimage?center=108.973499%2C34.244987&zoom=17&width=558&height=360&markers=108.973499%2C34.244987&markerStyles=l%2CA" alt="" />', '', '2014-12-31 10:09:01', 0, 1, 0);
DROP TABLE cms_image;
CREATE TABLE cms_image (img_id int NOT NULL AUTO_INCREMENT COMMENT 'ID', img_content varchar(200) COMMENT '图片文字', img_path varchar(200) COMMENT '图片地址', img_album int COMMENT '是否相册', isdel int COMMENT '是否删除', parent_id int COMMENT '父类id', shows int COMMENT '是否首页显示', PRIMARY KEY (img_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (90, '风景', '1399273448760.jpg', 1, 1, 0, 0);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (91, '风景1', '1392893443250.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (92, '风景2', '1392889125468.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (93, '风景3', '1399277458657.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (94, '风景4', '1399277469366.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (95, '风景5', '1399277480202.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (96, '风景1', '1399277497590.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (97, '测试相册a', '1410509639502.jpg', 1, 1, 0, 0);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (98, 'ssdfsdfsdfsdfsdfsdfds', '1410509144802.jpg', 0, 1, 97, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (99, 'ggg', '1392893549828.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (100, 'ffgggg', '1392893106375.jpg', 0, 1, 99, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (101, 'aa', '1392950629312.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (102, 'aaaf', '1392895568531.jpg', 0, 1, 101, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (103, 'ddfdf', '1392893032562.jpg', 1, 1, 0, 0);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (104, 'sdfsdfsd', '1410509075770.jpg', 0, 1, 103, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (105, '00', '1392891689729.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (106, '00000', '1392891681186.jpg', 0, 1, 105, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (107, 'cccccccccccccccccccccc', '1392893212546.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (108, 'gfhfhfghfghf', '1392893204953.png', 0, 1, 107, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (109, '啊啊', '1392893455403.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (110, 'ff', '1392893467771.jpg', 0, 1, 109, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (111, 'gggg', '1392893705631.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (112, 'sasdf', '1392949246593.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (113, 'aaa', '1392893758999.jpg', 0, 1, 112, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (114, 'aaaf', '1392949197671.jpg', 0, 1, 112, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (115, 'ggggt', '1392945894875.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (116, 'aaaf', '1392893894628.jpg', 0, 1, 101, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (117, '风景1', '1392893947734.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (118, 'gggg', '1392894075721.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (119, 'aa', '1392894105028.jpg', 0, 1, 118, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (120, 'aa', '1392894118588.jpg', 0, 1, 115, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (121, 'aaaff', '1392945834484.jpg', 0, 1, 115, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (122, 'aa', '1392894248721.jpg', 0, 1, 115, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (123, 'ggg', '1392894333375.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (124, '风景2', '1399277510961.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (125, 'ggg', '1392895717625.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (126, 'gggg', '1392895843232.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (127, 'aaaff', '1392895887796.jpg', 0, 1, 115, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (128, 'gg', '1392945667500.jpg', 0, 1, 115, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (129, 'gg', '1392945627390.jpg', 0, 1, 115, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (130, '修改后测试', '1392948505375.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (131, '001', '1392950595000.jpg', 0, 1, 130, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (132, '002', '1392949149734.jpg', 0, 1, 130, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (133, '003', '1392948570156.png', 0, 1, 130, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (134, '004', '1392954727453.jpg', 0, 1, 130, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (135, '005', '1392949125468.jpg', 0, 1, 130, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (136, '006', '1392948664968.jpg', 0, 1, 130, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (137, '006', '1392948810859.jpg', 0, 1, 130, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (138, '测试IE', '1392950734328.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (139, '001', '1392950947599.jpg', 0, 1, 138, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (140, '002', '1392950742359.jpg', 0, 1, 138, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (141, '003', '1392948950281.jpg', 0, 1, 138, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (142, '003', '1392949011046.jpg', 0, 1, 138, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (143, '发个广告', '1393410373420.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (144, '烦烦烦', '1393410396452.jpg', 0, 1, 143, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (145, '大大大aaa', '1410509318015.jpg', 0, 1, 97, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (146, '地对地导弹aa', '1410509374037.png', 0, 1, 97, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (147, '松松散散', '1393412918750.jpg', 0, 1, 101, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (148, '111', '1410509382714.png', 0, 1, 97, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (149, '11111111', '1393414074921.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (150, 'dd', '1399347450332.jpg', 1, 1, 0, 0);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (151, 'ddd', '1399347468674.jpg', 0, 1, 150, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (152, 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '1396579726046.jpg', 1, 1, 0, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (153, '   asdfasdf', '1396580945269.jpg', 0, 1, 97, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (154, '哈哈', '1397790495863.jpg', 1, 1, 0, 0);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (155, '啊哈哈哈', '1396593611262.jpg', 0, 1, 154, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (156, '风景8', '1399274033998.jpg', 0, 1, 90, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (157, '首页', '1418631211192.JPG', 1, 1, 0, 0);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (158, '12', '1418631240853.JPG', 0, 1, 157, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (159, '23', '1418631269273.JPG', 0, 1, 157, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (160, '56', '1418631315365.JPG', 0, 1, 157, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (161, '首页', '1419640069765.JPG', 1, 1, 0, 0);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (162, '地方', '1419640095234.JPG', 0, 1, 161, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (163, '地方1', '1419640124093.JPG', 0, 1, 161, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (164, '的歌', '1419640184593.JPG', 0, 1, 161, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (165, '首页', '1419979130421.JPG', 1, 0, 0, 1);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (166, '123', '1419979158531.JPG', 0, 0, 165, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (167, '234', '1419979174906.JPG', 0, 0, 165, null);
INSERT INTO cms_image (img_id, img_content, img_path, img_album, isdel, parent_id, shows) VALUES (168, '345', '1419979188796.JPG', 0, 0, 165, null);
DROP TABLE cms_show_menu;
CREATE TABLE cms_show_menu (menu_id int NOT NULL AUTO_INCREMENT COMMENT '菜单ID', parent_id int COMMENT '父类ID', menu_name varchar(80) COMMENT '菜单名称', menu_url varchar(500) COMMENT '菜单地址', sort int COMMENT '排序', isdel int DEFAULT '0' COMMENT '是否删除', sign int DEFAULT '0' NOT NULL COMMENT '菜单级别', languages int, PRIMARY KEY (menu_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (100, 0, 'about us', 'school/particulars.jsp', 1, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (101, 0, 'admissions', 'school/particulars.jsp', 2, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (102, 0, 'learning at XHIS', 'school/particulars.jsp', 3, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (103, 0, 'life at XHIS', 'school/particulars.jsp', 4, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (104, 0, 'PTA Events', 'school/particulars.jsp', 5, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (105, 0, 'working at XHIS', 'school/particulars.jsp', 6, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (106, 100, 'Head of school#', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (107, 100, 'XHIS Today', 'school/particulars.jsp', 2, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (108, 100, 'Mission', 'school/particulars.jsp', 3, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (109, 100, 'Contact Information & Directory', 'school/particulars.jsp', 4, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (110, 100, 'Facilities', 'school/particulars.jsp', 5, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (111, 100, 'Virtual Campus Tour', 'school/particulars.jsp', 6, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (112, 100, 'Map & Directions', 'school/particulars.jsp', 7, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (113, 100, 'School Calendar#', 'school/particulars.jsp', 8, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (114, 100, 'News letter#', 'school/particulars.jsp', 9, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (115, 100, 'Photo', 'school/particulars.jsp', 10, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (116, 108, 'Vision,Mission and philosophy', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (117, 108, 'Objectives', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (118, 101, 'Why choose XHIS?', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (119, 101, 'Connecting with XHIS', 'school/particulars.jsp', 2, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (120, 101, 'Applying to XHIS', 'school/particulars.jsp', 3, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (121, 101, 'Frequent parent questions', 'school/particulars.jsp', 4, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (122, 101, 'Download center', 'school/particulars.jsp', 5, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (123, 118, 'Adimission details', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (124, 119, 'On-campus visits', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (125, 121, 'Fees', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (126, 121, 'Grade placement', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (127, 121, 'Learning support', 'school/particulars.jsp', 3, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (128, 122, 'Individual application forms', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (129, 102, 'The IB Programmes', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (130, 102, 'Primary Years Programme (Nursery-Grade6)', 'school/particulars.jsp', 2, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (131, 102, 'Middle Years Programme (Grades7-11)', 'school/particulars.jsp', 3, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (132, 102, 'AP/DP (Grades12 and 13) (DP coming soon)', 'school/particulars.jsp', 4, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (133, 102, 'University Counseling', 'school/particulars.jsp', 5, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (134, 102, 'Learning Support and School Counseling', 'school/particulars.jsp', 6, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (135, 102, 'School Libraries', 'school/particulars.jsp', 7, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (136, 102, 'Assessment', 'school/particulars.jsp', 8, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (137, 130, 'IB Learner Profile', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (138, 130, 'Transdisciplinary Themes', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (139, 130, 'Programme of Inquiry', 'school/particulars.jsp', 3, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (140, 130, 'Mathematics', 'school/particulars.jsp', 4, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (141, 130, 'Language', 'school/particulars.jsp', 5, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (142, 130, 'English as an Additional Language', 'school/particulars.jsp', 6, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (143, 130, 'Science', 'school/particulars.jsp', 7, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (144, 130, 'Social studies', 'school/particulars.jsp', 8, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (145, 130, 'Personal,Social and physical Education', 'school/particulars.jsp', 9, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (146, 130, 'Visual Arts.', 'school/particulars.jsp', 10, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (147, 130, 'Music', 'school/particulars.jsp', 11, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (148, 130, 'Chinese', 'school/particulars.jsp', 12, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (149, 130, 'Grade 6 Exhibition', 'school/particulars.jsp', 13, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (150, 130, 'Materials & supplies', 'school/particulars.jsp', 14, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (151, 131, 'MYP Curriculum Framework', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (152, 131, 'MYP Diploma Requirements', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (153, 131, 'Humanities', 'school/particulars.jsp', 3, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (154, 131, 'Languages', 'school/particulars.jsp', 4, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (156, 131, 'Mathematics', 'school/particulars.jsp', 5, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (157, 131, 'Physical Education', 'school/particulars.jsp', 6, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (158, 131, 'Sciences', 'school/particulars.jsp', 6, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (159, 131, 'Design', 'school/particulars.jsp', 7, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (160, 131, 'The Arts', 'school/particulars.jsp', 8, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (161, 131, 'Community & Service', 'school/particulars.jsp', 9, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (162, 131, 'Personal Project', 'school/particulars.jsp', 10, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (163, 131, 'Personal and social Education', 'school/particulars.jsp', 11, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (164, 132, 'IGCSE(coming soon 2014)', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (165, 132, 'CAS', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (166, 132, 'Extended Essay(under construction)', 'school/particulars.jsp', 3, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (167, 132, 'Theory of knowledge(under construction)', 'school/particulars.jsp', 4, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (168, 132, 'Languages A:Literature(under construction)', 'school/particulars.jsp', 5, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (169, 132, 'Languages A:Language & Literature', 'school/particulars.jsp', 6, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (170, 132, 'Languages B(under construction)', 'school/particulars.jsp', 7, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (171, 132, 'Individuals and societies(under construction)', 'school/particulars.jsp', 8, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (172, 132, 'Experimental sciences(under construction)', 'school/particulars.jsp', 9, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (173, 132, 'Mathematics(under construction)', 'school/particulars.jsp', 10, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (174, 132, 'The Arts(under construction)', 'school/particulars.jsp', 11, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (175, 132, 'TB Diploma Results(under construction)', 'school/particulars.jsp', 12, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (176, 134, 'School Counseling', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (177, 134, 'Individualized Personal and Social Education', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (178, 103, 'Celebrating Diversity', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (179, 103, 'Field Trips and Visits', 'school/particulars.jsp', 2, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (180, 103, 'Extended Curriculum Activities', 'school/particulars.jsp', 3, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (181, 103, 'School Bus Service', 'school/particulars.jsp', 4, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (182, 103, 'Sports at XHIS', 'school/particulars.jsp', 5, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (183, 103, 'Events #', 'school/particulars.jsp', 6, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (184, 178, 'Celebrating Diversity', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (186, 180, 'Suzuki Violin', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (187, 180, 'Model United Nations', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (188, 183, 'Photo Gallery', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (189, 104, 'PTA', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (190, 104, 'Photo Gallery', 'school/particulars.jsp', 2, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (191, 189, 'PTA Executive Committee Members', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (192, 189, 'Volunteer with The PTA!', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (193, 105, 'Job Opportunities', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (248, 0, '关于我们', 'chineseschool/particulars.jsp', 1, 0, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (249, 0, '招生?', 'chineseschool/particulars.jsp', 2, 1, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (250, 0, '学习在XHIS', 'chineseschool/particulars.jsp', 3, 1, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (251, 0, '生活在XHIS', 'chineseschool/particulars.jsp', 4, 1, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (252, 0, '联系我们', 'chineseschool/particulars.jsp', 5, 0, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (253, 0, '在XHIS工作', 'chineseschool/particulars.jsp', 6, 1, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (254, 248, '学校负责人', 'chineseschool/particulars.jsp', 1, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (255, 248, 'XHIS今天', 'chineseschool/particulars.jsp', 2, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (256, 248, '使命', 'chineseschool/particulars.jsp', 3, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (257, 248, '联系信息和目录', 'chineseschool/particulars.jsp', 4, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (258, 248, '设备', 'chineseschool/particulars.jsp', 5, 0, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (259, 248, '虚拟校园漫游', 'chineseschool/particulars.jsp', 6, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (260, 248, '地图与路线', 'chineseschool/particulars.jsp', 7, 0, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (261, 248, '校历', 'chineseschool/particulars.jsp', 8, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (262, 248, '新闻信', 'chineseschool/particulars.jsp', 9, 0, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (263, 248, '照片', 'chineseschool/particulars.jsp', 10, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (264, 256, '愿景，使命和理念', 'chineseschool/particulars.jsp', 1, 0, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (265, 256, '目标', 'chineseschool/particulars.jsp', 2, 0, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (266, 249, '为什么选择XHIS？', 'chineseschool/particulars.jsp', 1, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (267, 249, '连接与XHIS?', 'chineseschool/particulars.jsp', 2, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (268, 249, '申请XHIS?', 'chineseschool/particulars.jsp', 3, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (269, 249, '频繁的父母的问题?', 'chineseschool/particulars.jsp', 4, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (270, 249, '下载中心?', 'chineseschool/particulars.jsp', 5, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (271, 270, '个人申请表格', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (272, 269, '费用?', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (273, 269, '年级安排?', 'chineseschool/particulars.jsp', 2, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (274, 269, '学习支援?', 'chineseschool/particulars.jsp', 3, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (275, 266, 'Adimission细节?', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (276, 267, '校园参观?', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (277, 250, '国际文凭课程', 'chineseschool/particulars.jsp', 1, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (278, 250, '小学项目（苗圃 - Grade6 ）', 'chineseschool/particulars.jsp', 2, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (279, 250, '中学项目（ Grades7 - 11 ）', 'chineseschool/particulars.jsp', 3, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (280, 250, 'AP / DP （ Grades12和13） （ DP即将推出）', 'chineseschool/particulars.jsp', 4, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (281, 250, '大学咨询', 'chineseschool/particulars.jsp', 5, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (282, 250, '学习支援和学校辅导', 'chineseschool/particulars.jsp', 6, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (283, 250, '学校图书馆', 'chineseschool/particulars.jsp', 7, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (284, 250, '评定', 'chineseschool/particulars.jsp', 8, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (285, 282, '学校辅导', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (286, 282, '个性化的个人及社会教育', 'chineseschool/particulars.jsp', 2, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (287, 280, 'IGCSE （即将推出2014年）', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (288, 280, 'CAS号', 'chineseschool/particulars.jsp', 2, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (289, 280, '扩展征文（在建）', 'chineseschool/particulars.jsp', 3, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (290, 280, '理论知识（在建）', 'chineseschool/particulars.jsp', 4, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (291, 280, '语言答：文学（在建）', 'chineseschool/particulars.jsp', 5, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (292, 280, '语言答：语言与文学（在建）', 'chineseschool/particulars.jsp', 6, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (293, 280, '语言B（在建）', 'chineseschool/particulars.jsp', 7, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (294, 280, '个人和社会（在建）', 'chineseschool/particulars.jsp', 8, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (295, 280, '实验科学（在建）', 'chineseschool/particulars.jsp', 9, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (296, 280, '数学（在建）', 'chineseschool/particulars.jsp', 10, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (297, 280, '艺术（在建）', 'chineseschool/particulars.jsp', 11, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (298, 280, '结核病文凭结果（在建）', 'chineseschool/particulars.jsp', 12, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (299, 278, '国际文凭学习者培养', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (300, 278, '学科主题', 'chineseschool/particulars.jsp', 2, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (301, 278, '调查计划', 'chineseschool/particulars.jsp', 3, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (302, 278, '数学', 'chineseschool/particulars.jsp', 4, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (303, 278, '语言', 'chineseschool/particulars.jsp', 5, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (304, 278, '英语作为附加语言', 'chineseschool/particulars.jsp', 6, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (305, 278, '科学', 'chineseschool/particulars.jsp', 7, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (306, 278, '社会研究', 'chineseschool/particulars.jsp', 8, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (307, 278, '个人，社会和物理教育', 'chineseschool/particulars.jsp', 9, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (308, 278, '视觉艺术。', 'chineseschool/particulars.jsp', 10, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (309, 278, '音乐', 'chineseschool/particulars.jsp', 11, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (310, 278, '中国的', 'chineseschool/particulars.jsp', 12, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (311, 278, '六年级展', 'chineseschool/particulars.jsp', 13, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (312, 278, '材料与用品', 'chineseschool/particulars.jsp', 14, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (313, 279, 'MYP课程架构', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (314, 279, 'MYP文凭要求', 'chineseschool/particulars.jsp', 2, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (315, 279, '人文', 'chineseschool/particulars.jsp', 3, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (316, 279, '语言', 'chineseschool/particulars.jsp', 4, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (317, 279, '数学', 'chineseschool/particulars.jsp', 5, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (318, 279, '体育', 'chineseschool/particulars.jsp', 6, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (319, 279, '科学', 'chineseschool/particulars.jsp', 7, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (320, 279, '设计', 'chineseschool/particulars.jsp', 8, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (321, 279, '艺术', 'chineseschool/particulars.jsp', 9, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (322, 279, '社区与服务', 'chineseschool/particulars.jsp', 10, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (323, 279, '个人项目', 'chineseschool/particulars.jsp', 12, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (324, 279, '个人和社会教育', 'chineseschool/particulars.jsp', 12, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (325, 251, '庆祝多样性', 'chineseschool/particulars.jsp', 1, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (326, 325, '庆祝多样性', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (327, 251, '实地考察和参观', 'chineseschool/particulars.jsp', 2, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (328, 251, '扩展的课程活动', 'chineseschool/particulars.jsp', 3, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (329, 328, '铃木小提琴', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (330, 328, '模拟联合国', 'chineseschool/particulars.jsp', 2, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (331, 251, '校车服务', 'chineseschool/particulars.jsp', 4, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (332, 251, '体育在XHIS', 'chineseschool/particulars.jsp', 5, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (333, 251, '活动', 'chineseschool/particulars.jsp', 6, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (334, 333, '照相馆', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (335, 252, 'PTA', 'chineseschool/particulars.jsp', 1, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (336, 335, 'PTA执行委员会委员', 'chineseschool/particulars.jsp', 1, 0, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (337, 335, '与家教会志愿者！', 'chineseschool/particulars.jsp', 2, 0, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (338, 252, '照相馆', 'chineseschool/particulars.jsp', 2, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (339, 253, '工作机会', 'chineseschool/particulars.jsp', 1, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (356, 0, 'aa', 'school/particulars.jsp', 11, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (357, 266, 'fff', 'chineseschool/particulars.jsp', 15, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (358, 0, 'fffgg', 'school/particulars.jsp', 10, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (359, 358, 'ffff', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (360, 359, 'fffff', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (361, 359, 'dddd', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (362, 0, '测试', 'school/particulars.jsp', 8, 1, 0, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (363, 362, '测试1', 'school/particulars.jsp', 1, 1, 1, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (364, 363, '测试2', 'school/particulars.jsp', 1, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (365, 0, '我的测试', 'chineseschool/particulars.jsp', 1, 1, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (366, 365, '二级我的测试', 'chineseschool/particulars.jsp', 1, 1, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (367, 366, '三级我的测试', 'chineseschool/particulars.jsp', 1, 1000, 2, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (371, 106, 'test11', 'school/particulars.jsp', 99, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (372, 106, 'test22', 'school/particulars.jsp', 2, 1000, 2, 0);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (373, 0, '通知', 'chineseschool/particulars.jsp', 6, 0, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (374, 373, '过期通知', 'chineseschool/particulars.jsp', 1, 0, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (375, 0, '招聘信息', 'chineseschool/particulars.jsp', 2, 0, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (376, 0, '新闻', 'chineseschool/particulars.jsp', 3, 0, 0, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (377, 376, '校领导来所考察', 'chineseschool/particulars.jsp', 1, 0, 1, 1);
INSERT INTO cms_show_menu (menu_id, parent_id, menu_name, menu_url, sort, isdel, sign, languages) VALUES (378, 376, '习大大指导工作', 'chineseschool/particulars.jsp', 2, 0, 1, 1);
DROP TABLE cms_showtime;
CREATE TABLE cms_showtime (id int(10) NOT NULL AUTO_INCREMENT, show_time int(8) DEFAULT '3000', PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cms_showtime (id, show_time) VALUES (1, 2);
DROP TABLE hunt_apply;
CREATE TABLE hunt_apply (apply_id int NOT NULL AUTO_INCREMENT COMMENT 'ID', article_id int COMMENT '产品ID', user_id int COMMENT '会员ID', value varchar(200) COMMENT '备注', isdel int COMMENT '是否删除', apply_date varchar(20) COMMENT '申请时间', PRIMARY KEY (apply_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE hunt_comment;
CREATE TABLE hunt_comment (comment_id int NOT NULL AUTO_INCREMENT, comment_content varchar(1000) COMMENT '评论内容', user_id int COMMENT '会员ID', comment_date varchar(20) COMMENT '评论时间', isdel int COMMENT '是否删除', PRIMARY KEY (comment_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE hunt_users;
CREATE TABLE hunt_users (user_id int NOT NULL AUTO_INCREMENT, user_name varchar(20) COMMENT '账号', password varchar(50) COMMENT '密码', user_phone varchar(20) COMMENT '电话', user_sex varchar(10) COMMENT '性别', user_card varchar(20) COMMENT '身份证', user_address varchar(200) COMMENT '地址', user_pic varchar(200) COMMENT '图像', user_email varchar(50) COMMENT '邮箱', value varchar(200) COMMENT '备注', isdel int COMMENT '是否删除', PRIMARY KEY (user_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
