<?php
        /**
        * 显示实例
        **/
        include_once("./smarty/libs/Smarty.class.php");
        $smarty = new Smarty();
        $smarty->template_dir = "./templages";//设置模板目录
        $smarty->compile_dir = "./templages_c"; //设置编译目录
        $smarty->left_delimiter = "{";
        $smarty->right_delimiter = "}";
        $smarty->assign("name", "BHY"); //
        $smarty->display('index.html');
?>