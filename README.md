# article
1.概述：
搭配mysql，开发一个简易文章发布网站，实现前端的检索，查看；后端的发布，删除，修改等。

2.文件结构及说明：
article(总目录)
	admin---------------------------------后端管理文件
		article.add.handle.php------------文章添加的处理程序
		article.add.php-------------------文章添加的前端页面
		article.del.handle.php------------文章删除的前端页面
		article.manage.php----------------文章管理的后端页面
		article.modify.handle.php---------文章修改的处理程序
		article.modify.php----------------文章修改的前端页面
	about.php-----------------------------关于我们
	article.list.php----------------------文章列表
	article.search.php--------------------文件搜索的处理程序
	article.show.php----------------------文章详情页
	config.php----------------------------总配置文件，数据库……
	connect.php---------------------------连接数据库
	contact.php---------------------------联系我们
	default.css---------------------------css
	info.sql------------------------------info数据库，可导入

3.其他：
数据库：info，均为utf-8
2张表：
article，6字段
id int(11) AUTO_INCREMENT
title char(100)
author char(50)
description varchar(255)
content text
dateline int(11)
introduce，2字段，
about varchar(255)，NULL
contact varchar(255),NULL

测试环境
PHP5.6
MySQL5.7
