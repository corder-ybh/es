<?php
/* Smarty version 3.1.30, created on 2018-01-29 11:13:37
  from "/var/www/html/es/templages/example2.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a6e9161447645_26246940',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '31dc16a6ffa08a18e19569d9910eba6f0ff6f3df' => 
    array (
      0 => '/var/www/html/es/templages/example2.html',
      1 => 1517195520,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a6e9161447645_26246940 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_capitalize')) require_once '/var/www/html/es/smarty/libs/plugins/modifier.capitalize.php';
if (!is_callable('smarty_modifier_date_format')) require_once '/var/www/html/es/smarty/libs/plugins/modifier.date_format.php';
if (!is_callable('smarty_modifier_replace')) require_once '/var/www/html/es/smarty/libs/plugins/modifier.replace.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>smarty示例2</title>
</head>
<body>
    1.第一句首字母要大写：<?php echo smarty_modifier_capitalize($_smarty_tpl->tpl_vars['str1']->value);?>
<br>
    2.第二句模板变量 + bhy：<?php echo ($_smarty_tpl->tpl_vars['str2']->value).("BHY");?>
<br>
    3.第三句输出当前日期：<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['str3']->value,"%Y年 %m月 %d日");?>
<br>
    4.第四句php程序中不处理，他显示默认值： <?php echo (($tmp = @$_smarty_tpl->tpl_vars['str4']->value)===null||$tmp==='' ? "没有值" : $tmp);?>
<br>
    5.第五句缩进8个空白字符，并使用“*”来取代这8个空白字符：<br>
    <?php echo preg_replace('!^!m',str_repeat("*",8),$_smarty_tpl->tpl_vars['str5']->value);?>
<br>
    6.第六句把BHY@163.com全部变为小写：<?php echo mb_strtolower($_smarty_tpl->tpl_vars['str6']->value, 'UTF-8');?>
<br>
    7.第七句把变量中的teacherli替换成 bhyang：<?php echo smarty_modifier_replace($_smarty_tpl->tpl_vars['str7']->value,"teacherli","bhyang");?>
<br>
    8.第八句为组合使用变量修改器：<?php echo mb_strtolower(smarty_modifier_date_format((smarty_modifier_capitalize($_smarty_tpl->tpl_vars['str8']->value)).("这是新加的时间："),"%Y年 %m月 %d日"), 'UTF-8');?>

</body>
</html><?php }
}
