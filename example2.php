<?php
/**
 * Created by PhpStorm.
 * User: bhyang
 * Date: 2018/1/29
 * Time: 10:57
 */
include_once ("./smarty/libs/Smarty.class.php");
$smarty = new Smarty();
$smarty->template_dir = "./templages";
$smarty->compile_dir = "./templages_c";

$smarty->left_delimiter = "{";
$smarty->right_delimiter = "}";

$smarty->assign("str1","my name is bhy");
$smarty->assign("str2","我的名字是");
$smarty->assign("str3","公元");
$smarty->assign("str4","如果php处理了呢？");//若php不处理str4
$smarty->assign("str5","前面8个*");
$smarty->assign("str6","BHY@163.COM");
$smarty->assign("str7","this is teacherli");
$smarty->assign("str8", "hERE IS COMBINING:");
$smarty->display("example2.html");