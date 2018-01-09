# article
1.概述：</br>
搭配mysql，开发一个简易文章发布网站，实现前端的检索，查看；后端的发布，删除，修改等。</br>

2.文件结构及说明：</br>
article(总目录)</br>
>admin---------------------------------后端管理文件</br>
>>article.add.handle.php------------文章添加的处理程序</br>
>>article.add.php-------------------文章添加的前端页面</br>
>>article.del.handle.php------------文章删除的前端页面</br>
>>article.manage.php----------------文章管理的后端页面</br>
>>article.modify.handle.php---------文章修改的处理程序</br>
>>article.modify.php----------------文章修改的前端页面</br>
>about.php-----------------------------关于我们</br>
article.search.php--------------------文件搜索的处理程序</br>
article.show.php----------------------文章详情页</br>
config.php----------------------------总配置文件，数据库……</br>
connect.php---------------------------连接数据库</br>
contact.php---------------------------联系我们</br>
default.css---------------------------css</br>
info.sql------------------------------info数据库，可导入</br>

3.其他：</br>
数据库：info，均为utf-8</br>
2张表：</br>
article，6字段</br>
id int(11) AUTO_INCREMENT</br>
title char(100)</br>
author char(50)</br>
description varchar(255)</br>
content text</br>
dateline int(11)</br>
introduce，2字段，</br>
about varchar(255)，NULL</br>
contact varchar(255),NULL</br>

测试环境</br>
PHP5.6</br>
MySQL5.7</br>
