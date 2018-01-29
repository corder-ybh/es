<?php
/* Smarty version 3.1.30, created on 2018-01-29 10:33:42
  from "/var/www/html/es/templages/index.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a6e880682b1c5_89927905',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '149b32a2abcfe267c12663e3f9c13e8ac47247de' => 
    array (
      0 => '/var/www/html/es/templages/index.html',
      1 => 1517193110,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:./header.html' => 1,
    'file:./foot.html' => 1,
  ),
),false)) {
function content_5a6e880682b1c5_89927905 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php $_smarty_tpl->_subTemplateRender("file:./header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

大家好，我叫<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
, 欢迎大家阅读我的smarty学习材料。
<?php $_smarty_tpl->_subTemplateRender("file:./foot.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
