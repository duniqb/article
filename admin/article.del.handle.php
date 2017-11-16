<?php
    //文章删除处理程序
    require_once ('../connect.php');
    $id = $_GET['id'];
    $deletesql = "delete from article where id=$id";
    if(mysqli_query($con,$deletesql)){
        echo "<script>alert('删除文章成功');</script>";
    }else{
        echo "<script>alert('删除文章失败');</script>";
    }