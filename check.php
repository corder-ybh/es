<?php

header('Content-type:text');
define("TOKEN", "adminuad");


$wechatObj = new wechatCallbackapiTest();
if (isset($_GET['echostr'])) {
    $wechatObj->valid();
}else{
    $wechatObj->responseMsg();
}

class wechatCallbackapiTest
{
    public function valid()
    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){
            header('content-type:text');
            echo $echoStr;
            exit;
        }
    }

    private function checkSignature()
    {
        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce = $_GET["nonce"];

        $token = TOKEN;
        $tmpArr = array($token, $timestamp, $nonce);
        sort($tmpArr, SORT_STRING);
        $tmpStr = implode( $tmpArr );
        $tmpStr = sha1( $tmpStr );

        error_log($tmpStr, 3, './log');

        if( $tmpStr == $signature ){
            return true;
        }else{
            return false;
        }
    }

    public function responseMsg()
    {
        //$postStr = $GLOBALS["HTTP_RAW_POST_DATA"];
        $postStr = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : file_get_contents("php://input");

        if (!empty($postStr)){
            $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);

            $fromUsername = $postObj->FromUserName;
            $toUsername = $postObj->ToUserName;
            $keyword = trim($postObj->Content); //trim删除首尾空白
            $time = time();
            $getMsgType = trim($postObj->MsgType);
            $textTpl = "<xml>
                        <ToUserName><![CDATA[%s]]></ToUserName>
                        <FromUserName><![CDATA[%s]]></FromUserName>
                        <CreateTime>%s</CreateTime>
                        <MsgType><![CDATA[%s]]></MsgType>
                        <Content><![CDATA[%s]]></Content>
                        <FuncFlag>0</FuncFlag>
                        </xml>";
            //如果是文本消息
            if ($getMsgType == "text") {
                if (false) {
                    //此处将keyword查询数据库，若查询失败，则返回
                } else{
                    //关键字回复
                    if($keyword == "?" || $keyword == "？")
                    {
                        $msgType = "text";
                        $contentStr = "欢迎您的关注，请回复序号进行操作：\n\n1、优惠券介绍\n2、天天优选优惠券介绍\n回复?调出此菜单。";
                        $resultStr = sprintf($textTpl, $fromUsername, $toUsername, $time, $msgType, $contentStr);
                        error_log($resultStr, 3, './log');
                        echo $resultStr;
                    } else {
                        error_log($keyword, 3, './log');
                    }
                }


            }
        }else{

            echo "";
            exit;
        }
    }
}
?>