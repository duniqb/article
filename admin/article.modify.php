<?php
    //文章修改界面
    require_once ('../connect.php');
    //读取旧信息
    $id = $_GET['id'];
    $query = mysqli_query($con,"select * from article where id=$id");
    $data = mysqli_fetch_assoc($query);
?>
<!DOCTYPE html>
<html>
<head>
    <title>修改文章</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        body{
            padding-top: 85px;
        }
        .position{
            position: absolute;
            left: 30px;
            top: 20px;
        }
        .float_left{
            float: left;
        }
        .side_left{
            height: 500px;
            width: 15%;
            background: lightgrey;
        }
        .side_left a{
            font-size: 20px;
            display: block;
            text-align: center;
            margin-top: 30px;
        }
        .side_right{
            text-align: center;
            width: 80%;
            background: white;
        }
        .side_right .text_input{
            margin-top: 20px;
        }
        .text_input span{
            font-size: 20px;
            display: block;
        }
        .text_input input{
            padding-left: 5px;
            padding-top: 2px;
            height: 25px;
            width: 80%;
        }
        .text_input textarea{
            height: 400px;
            width: 80%;
            padding-left: 5px;
            padding-top: 3px;
        }
        .form_submit{
            margin-top: 30px;
            margin-bottom: 30px;
            width: 300px;
            height: 40px;
        }
    </style>
</head>
<body>
<h1 class="position">后台管理系统</h1>
<div class="side_left float_left">
    <a href="" class="side_nav">发布文章</a>
    <a href="" class="side_nav">管理文章</a>

</div>
<div class="side_right float_left">
    <h1>发布文章</h1>
    <form id="form1" name="form1" method="post" action="article.modify.handle.php">
        <div class="text_input">
            <span>标题</span>
            <input type="text" name="title" value="<?php echo $data['title'] ?>">
        </div>
        <div class="text_input">
            <span>作者</span>
            <input type="text" name="author" value="<?php echo $data['author'] ?>">
        </div>
        <div class="text_input">
            <span>简介</span>
            <input type="text" name="description" value="<?php echo $data['description'] ?>">
        </div>
        <div class="text_input">
            <span>内容</span>
            <textarea name="content"><?php echo $data['content'] ?></textarea>
        </div>
        <!--隐藏域，提交文章id -->
        <input type="hidden" name="id" value="<?php echo $data['id'] ?>"/>
        <input class="form_submit" type="submit" name="" value="提交">
    </form>
</div>
</body>
</html>