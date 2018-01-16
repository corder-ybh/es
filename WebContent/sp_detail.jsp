
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8" />
		<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
		<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
		<META HTTP-EQUIV="Expires" CONTENT="0">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0,minimum-scale=1.0, maximum-scale=1.0" />
		<meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no" />
		<meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 568px)" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-touch-fullscreen" content="yes" />
		<meta name="full-screen" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black" />
		<meta name="format-detection" content="telephone=no" />
		<meta name="format-detection" content="address=no" />

		<meta name="screen-orientation" content="portrait">
		<meta name="full-screen" content="yes">
		<meta name="browsermode" content="application">
		<meta name="x5-orientation" content="portrait">
		<meta name="x5-fullscreen" content="true">
		<meta name="x5-page-mode" content="app">

		<link href="css/style_v3_2.css" rel="stylesheet" type="text/css" />
		<link href="css/nbnew.css" rel="stylesheet" type="text/css" />
		<link href="css/ajax_skin3.css" rel="stylesheet" type="text/css" />
		<link href="css/iconfont.css" rel="stylesheet" type="text/css" />
		<style>
			.goodsdetail img {
				margin-top: 0px;
			}
		</style>
		<title>天天优选优惠券</title>
		<!--设置字体适应性-->
		<script>
			var deviceWidth = document.documentElement.clientWidth;
			if(deviceWidth > 750) deviceWidth = 750;
			document.documentElement.style.fontSize = deviceWidth / 7.5 + "px";
			document.documentElement.style.width = "100%";
		</script>
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.11.38.min.js"></script>
		<script type="text/javascript" src="js/clipboard.min.js"></script>
		<script type="text/javascript" src="js/jquery.qrcode.min.js"></script>
		<script type="text/javascript" src="js/layer/layer.js"></script>
		<script src="js/jq.nb.plus2.js"></script>
		<link rel="stylesheet" type="text/css" href="css/nb_plus2.css" />
		<script src="js/jweixin-1.1.0.js"></script>
		<script type="text/javascript">
			// 检查浏览器版本,如果是ie5/6/7 那么提示过老  
			if(navigator.appName == 'Microsoft Internet Explorer') {
				if(navigator.userAgent.indexOf("MSIE 5.0") > 0 || navigator.userAgent.indexOf("MSIE 6.0") > 0 || navigator.userAgent.indexOf("MSIE 7.0") > 0) {
					alert('您使用的 IE 浏览器版本过低, 推荐使用 Chrome 浏览器或 IE8 及以上版本浏览器.');
				}
			}
			// 系统关键信息
			window.sysinfo = {
				'uniacid': '1',
				'acid': '1',

				'cookie': {
					'pre': 'f874_'
				}
			};
			// jssdk config 对象 是干什么的？
			jssdkconfig = null || {};
			// 是否启用调试
			jssdkconfig.debug = false;
			jssdkconfig.jsApiList = [
				'checkJsApi',
				'onMenuShareTimeline',
				'onMenuShareAppMessage',
				'onMenuShareQQ',
				'onMenuShareWeibo',
				'hideMenuItems',
				'showMenuItems',
				'hideAllNonBaseMenuItem',
				'showAllNonBaseMenuItem',
				'translateVoice',
				'startRecord',
				'stopRecord',
				'onRecordEnd',
				'playVoice',
				'pauseVoice',
				'stopVoice',
				'uploadVoice',
				'downloadVoice',
				'chooseImage',
				'previewImage',
				'uploadImage',
				'downloadImage',
				'getNetworkType',
				'openLocation',
				'getLocation',
				'hideOptionMenu',
				'showOptionMenu',
				'closeWindow',
				'scanQRCode',
				'chooseWXPay',
				'openProductSpecificView',
				'addCard',
				'chooseCard',
				'openCard',
				'openAddress'
			];
		</script>
		<link href="css/sharepic.css" rel="stylesheet" type="text/css" />
		<link href="css/y_other.css" type="text/css">
		
	</head>

	<body>
		<link href="css/sharepic.css" rel="stylesheet" type="text/css" />
		<link href="css/y_other.css" type="text/css">
		<div class="main" id="mainall" style="max-width:640px">
			<!--加载中-->
			<div class="loadingbar2" style="display:none">
				<div class='loading3'><img src='images/loading2.gif' style="width: 45px;height: 45px;"><br>加载中，请稍后<br></div>
			</div>

			<div class="loadingbar3" style="display:none">
				<div class='loading3'><img src='images/loading2.gif' style="width: 45px;height: 45px;"><br>加载中，请稍后<br></div>
			</div>
			<style>
				.yh_title {
					background-color: rgba(1, 2, 0, 0.7);
					color: #fff;
					font-size: 12px;
					position: fixed;
					top: 0px;
					width: 100%;
					max-width: 640px;
					height: 50px;
					line-height: 50px;
					z-index: 999999;
				}
				
				.yh_title_btn {
					margin-left: 20px;
					padding: 5px 5px 6px 5px;
					text-align: center;
					border-radius: 5px;
					width: 100px;
					height: 30px;
					line-height: 30px;
					background-color: #FF8800;
				}
				
				.yh_title_close {
					font-size: 10px;
					float: right;
					margin-top: 15px;
					margin-right: 15px;
					padding: 5px 5px 5px 5px;
					text-align: center;
					border-radius: 100px;
					width: 10px;
					height: 10px;
					line-height: 10px;
					color: #62b900;
					background-color: rgba(255, 255, 255, 1);
				}
				
				.nb-sharecanvas {
					z-index: 99999;
					/*元素堆叠顺序*/
					position: fixed;
					/*生成绝对定位的元素，相对于浏览器窗口进行定位。元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。*/
					top: 0;
					left: 0;
					bottom: 0;
					right: 0;
					background: rgba(0, 0, 0, 0.9);
					/*在RGB的基础上加进了一个通道Alpha a透明度 0-1*/
					width: 100%;
					height: 100%;
					display: flex;
					/*Flexible Box的缩写，意为"弹性布局"，用来为盒状模型提供最大的灵活性。设为Flex布局以后，子元素的float、clear和vertical-align属性将失效。*/
					justify-content: center;
					/*项目位于容器的中心。*/
					flex-direction: column;
					/*主轴与块轴方向作为默认的书写模式。即纵向从上往下排列（顶对齐）。*/
					align-items: center;
					/**/
				}
			</style>
			<!--立即领券弹窗，点击显示二维码 -->
			<div class="yh_title"><span class="yh_title_btn" onclick="wxsite();">立即领券</span><span style="margin-left:20px;">本站更多全网最新精选优惠券，先领券，再淘宝，巨省钱！</span><span class="yh_title_close" onclick="yh_title();">×</span>
			</div>

			<script>
				window.setTimeout(yh_title, 5000);

				function yh_title() {
					$('.yh_title').fadeOut(200);
				}
			</script>

			<!--返回按钮-->
			<div class="nbleft" style="display:none;position:fixed;top:15px;z-index:99999;width:100%;max-width:320px;margin:0 auto;left:0px;right:0px;">
				<a href="javascript:void(0);" onclick="javascript:history.back(-1);"> <!--点击以后不做任何操作，但是在onclick中进行响应，反正就是响应-->
					<img src="images/return.png" style="width:35px;float:left;margin-left:15px;">
				</a>
			</div>
			<!--返回主页按钮-->
			<div class="nbright" style="display:none;position:fixed;top:25px;z-index:99999;width:100%;max-width:320px;margin:0 auto;left:0px;right:0px;">
				<a href="./index.php?i=1&c=entry&do=index&m=bsht_tbk">
					<img src="images/rehome.png" style="width:35px;float:right;margin-right:15px;">
				</a>
			</div>

			<!--超级搜索按钮，点击跳转到超级搜索-->
			<div class="nbright" style="display:none;position:fixed;top:75px;z-index:99999;width:100%;max-width:320px;margin:0 auto;left:0px;right:0px;">
				<a href="javascript:void(0);" data-info="http://yuyin8.com/app/index.php?
c=entry&i=1&m=bsht_tbkquan&itemid=539068630509&sid=2090302685&itemfee=1080.00&itempic=http://img.alicdn.com/tfscom/i2/2090302685/TB1PJQEX_vI8KJjSspjXXcgjXXa_!!0-item_pic.jpg&do=so&nb_shopid=&keyword=MEACHEAL%E7%B1%B3%E8%8C%9C%E5%B0%94+%E8%97%8F%E8%93%9D%E7%BE%8A%E9%A9%BC%E6%AF%9B%E5%A4%A7%E8%A1%A3&shopid=0&shownbso=1" class="nb-so">
					<img class="btndh" src="images/reso.png" style="width:35px;float:right;margin-right:15px;">
				</a>
			</div>

			<!--此段脚本用于显示是否使用超级搜索搜索对应商品名的弹窗-->
			<script>
				$(function() {
					var nbtoplrt = setInterval(function() {
						var nbtoplrw = $('.goodsopenview').width();
						$('.nbleft').css('max-width', nbtoplrw / 8 * 1);
						$('.nbright').css('max-width', nbtoplrw / 8 * 1);
						$('.nbleft').css('right', nbtoplrw / 8 * 7);
						$('.nbright').css('left', nbtoplrw / 8 * 7);
					}, 100);
					$('.nbleft').fadeIn(500);
					$('.nbright').fadeIn(600);
					var nbtoplrw2 = $('.goodsopenview').width();
					$('.allpreContainer').css('height', nbtoplrw2);
				});
			</script>

			<script>
				//tip2
				$(function() {
					$(document).delegate(".nb-so", "click", function() {
						var thisdatainfo = $('.nb-so').attr('data-info');
						//alert(thisdatainfo);

						layer.open({
							title: '确认操作',
							content: '是否使用 <b>超级搜索</b> 查询本商品更多优惠？',
							btn: ['确认', '取消'],
							yes: function(index) {
								window.location.href = thisdatainfo;
								layer.close(index);
							}
						});
					});
				});
				//tip2
			</script>

			<div class="goodsopenview">
				<div class="swiper-container">
					<ul class="swiper-wrapper">
						<li class="swiper-slide">
							<a href="javascript:;">
								<!--此处显示商品图片，点击图片则会显示商品图片-->
								<div class="allpreContainer anim_fade_image">

									<img class="preloadbg toppic " src="http://img.alicdn.com/bao/uploaded/i4/752340715/TB2VlDnaFXXXXbgXpXXXXXXXXXX_!!752340715.jpg" style="width:100%;height:100%" data-id="539068630509" id="http://img.alicdn.com/tfscom/i2/2090302685/TB1PJQEX_vI8KJjSspjXXcgjXXa_!!0-item_pic.jpg" onclick="openWXimgnb(this);">

							</a>
						</li>
					</ul>
					<div class="swiper-pagination"></div>
					</div>
					<!--此处显示商品名前的淘宝图标-->
					<div class="goodsname"><img src="images/taobao.png" style="width:16px;height:16px;padding-right:5px">清仓秋冬休闲裤纯色针织宽松光版男女款大码卫裤收口毛圈加大长裤</div>

					<div class="goodsprice">
						<!--此处显示现价-->
						<span class="trueprice">¥80</span>
						<!--此处显示原价，使用删除线-->
						<span style="font-size:12px;color:#555555;text-decoration:line-through;padding-right:10px">原价 ¥100</span>
						<!--此处显示优惠券-->
						<span class="baseprice"><em class="detailfanzi">优惠券</em><em class="detailfanmoney">¥20</em></span> </div>
					<!--此处为收藏按钮-->
					<a class="goodscollection addfav" data-id="539068630509" href="javascript:;" id="isfav">收藏</a>
				</div>
				<style>
					.progress {
						margin-top: 5px;
						padding: 10px;
					}
					
					.progress .progress-count {
						display: inline-block;
						vertical-align: top;
					}
					
					.progress .progress-count .progress-count-main {
						position: relative;
						width: 100px;
						height: 22px;
						background: url('images/nbyhq_progress.png') no-repeat center;
						background-size: 100% 100%;
						border-radius: 0px;
						overflow: hidden;
					}
					
					.progress .progress-count .progress-count-main .progress-count-pace {
						position: absolute;
						top: 0;
						left: 0;
						height: 22px;
						background-color: #C0BEBE;
						-moz-animation: nbyhq 1.5s ease-out;
						-webkit-animation: nbyhq 1.5s ease-out;
					}
					
					@-moz-keyframes nbyhq {
						0% {
							width: 0px;
						}
						100% {
							width: %;
						}
					}
					
					@-webkit-keyframes nbyhq {
						0% {
							width: 0px;
						}
						100% {
							width: %;
						}
					}
					
					.progress .progress-count .progress-count-main .progress-count-text {
						position: absolute;
						top: 0;
						left: 0;
						width: 100px;
						height: 22px;
						line-height: 22px;
						font-size: 11px;
						color: #fff;
						text-align: center;
						font-weight: 400;
						float: left;
						padding-left: 0px;
					}
					
					.progress .count-price {
						display: inline-block;
						vertical-align: top;
						float: right;
						margin-top: 1px;
						margin-bottom: 1px;
					}
					
					.progress .count-num {
						display: inline-block;
						vertical-align: top;
						float: right;
						margin-top: 1px;
						margin-bottom: 1px;
						padding-right: 10px;
					}
					
					.progress .count-num .count-num-bgm span {
						display: inline-block;
						height: 15px;
						font-size: 11px;
						line-height: 15px;
						background: #fff;
						margin: 1px;
						padding: 2px 5px 2px 5px;
						color: #1DC708;
					}
					
					.progress .count-num .count-num-bgm s {
						font-size: 11px;
						color: #FFF;
						text-decoration: none;
						font-family: "Microsoft YaHei"!important;
						font-weight: 400;
						padding: 4px;
					}
					
					.progress .count-num .count-num-bgm {
						margin-top: 0px;
						margin-bottom: 0px;
						height: 21px;
						background: url('images/nbyhq_num.png') no-repeat center;
						background-size: 100% 100%;
					}
					
					.progress .count-price .count-price-bgm span {
						display: inline-block;
						height: 15px;
						font-size: 11px;
						line-height: 15px;
						background: #fff;
						margin: 1px;
						padding: 2px 5px 2px 5px;
						color: #FE814B;
					}
					
					.progress .count-price .count-price-bgm s {
						font-size: 11px;
						color: #FFF;
						text-decoration: none;
						font-family: "Microsoft YaHei"!important;
						font-weight: 400;
						padding: 4px;
					}
					
					.progress .count-price .count-price-bgm {
						margin-top: 0px;
						margin-bottom: 0px;
						height: 21px;
						background: url('images/nbyhq_price.png') no-repeat center;
						background-size: 100% 100%;
					}
				</style>
				
				<div class="goodsshow" style="display:block;margin-bottom: 0px;" id="quaninfo">
					<div class="progress">
						<div class="progress-count">
							<div class="progress-count-main">
								<!--
                                	作者：offline
                                	时间：2018-01-16
                                	描述：此处的width可以表示剩余量
                                -->
								<div class="progress-count-pace" id="qplus_lq" style="width: 30%;"></div>
								<!--此处显示剩余xx张优惠券动态，灰色背景，红色表示还有多少量，此处需要处理-->
								<div class="progress-count-text">此券剩余
									<span id="qplus_ylbili">
										10%
									</span>
								</div>
							</div>
						</div>
						<div class="count-price">
							<!--应该有蓝色背景的-->
							<div class="count-price-bgm"><span>20元</span><s>优惠券</s></div>
						</div>
						<div class="count-num">
							<!--橘红色背景-->
							<div class="count-num-bgm"><span>剩余</span><s id="qplus_yl">30</s><s>张</s></div>
						</div>

					</div>
				</div>

				<div class="goodsshow" style="display:block" id="tabtxtthis">
					<!--点击查看商品详情链接，暂时不支持-->
					<!--a class="seemore" href="javascript:;" id="nbmore" data-id="539068630509" nbok='0'>
						<span id="tabtxt" class="jump">商品图文详情（点击查看）</span>
					</a-->
					<div class="goodsdetail">
						<!--此处再次显示一次商品名称-->
						<p style="padding-bottom:10px">
							清仓秋冬休闲裤纯色针织宽松光版男女款大码卫裤收口毛圈加大长裤
						<div id="product-details" class="">
							<div class="am-panel-bd am-padding-0" style="border-top: 0">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1" style="padding-top:0px;margin-left:-10px;padding-left:10px;padding-right:10px;display:none">
									<div class="am-padding-top-sm" style="width:100%;overflow:auto;"></div>
								</div>
							</div>
						</div>

					</div>
				</div>

				<style>
				.nbmenu {
						position: fixed;
						width: 100%;
						max-width: 640px;
						height: 50px;
						line-height: 50px;
						display: -webkit-box;
						z-index: 10000;
						background: #FAFAFA;
						color: #ffffff;
						font-size: 12px;
						margin: auto;
						left: 0;
						right: 0;
						bottom: 0;
					}
					
					.nbnav {
						position: absolute;
						z-index: 10001;
						width: 20%;
						float: left;
					}
					
					.nbnav2 {
						position: absolute;
						z-index: 10001;
						width: 30%;
						float: left;
					}
					
					.nb-btn1 {
						bottom: 0;
						left: 0;
						color: #666;
						text-align: center
					}
					
					.nb-btn2 {
						bottom: 0;
						left: 18%;
						color: #666;
						text-align: center
					}
					
					.nb-btn3 {
						bottom: 0;
						left: 40%;
						background: #FB874E;
						text-align: center
					}
					
					.nb-btn3 a {
						color: #ffffff;
					}
					
					.nb-btn4 {
						bottom: 0;
						left: 70%;
						background: #f54d23;
						text-align: center;
					}
					
					.nb-btn4 a {
						color: #ffffff;
					}
				}
				</style>
				<!--底部菜单-->
				<div class="nbmenu">

					<div class="nbnav nb-btn1">
						<!--跳转首页，i标签的使用-->
						<a href="./index.php?i=1&c=entry&shopid=0&do=index&m=bsht_tbk">&nbsp;|首页|</a>
					</div>
					<script type="text/javascript" src="js/NbShare.js"></script>
					<!--此处原为转发、客服，需要检查-->
					<div class="nbnav nb-btn2" onclick="share()">&nbsp;|随便逛逛|</div>
					<div class="nbnav2 nb-btn3">
						<!--浏览器打开功能，对应js脚本为openjump();-->
						<a style="color:white" href="javascript:" onclick="openjump();">浏览器打开</a>
					</div>
					<div class="nbnav2 nb-btn4">
						<!--此处点击购买会弹出弹窗-->
						<a href="javascript:;"  class="goodsget" style="color: #ffffff;font-size: 12px;font-weight:normal;letter-spacing: 0px;">点击领券</a>
					</div>
				</div>
				<input id="isnbjumpurl" data-id="" style="display:none" value="./index.php?i=1&c=entry&isnb=1&jumpurl=&do=jump&m=bsht_tbk">
				<!--底部菜单-->

			</div>

			

			<div class="nb-sharecanvas" style="display:none">

				<div class="nb-canvas">

					<i class="am-icon-close" style="display:none"></i>
					<canvas id="sharecanvas" style="background-color:white;display:none; width:80%" class="am-text-center am-center"></canvas>

					<img src="" class="imgData" />
					<div class="nb-canvas-explain am-text-sm nb-text-white am-margin-top-sm am-padding-xs">
						<span class="image_loading" style="display:none;color:#fff;font-size:13px;line-height:15px;padding-top:10px;padding-bottom:10px;text-align:center"><i></i>图文合成中，请耐心稍等片刻</span>
						<span class="image_show" style="color:#fff;font-size:13px;text-align:center">  说明：长按上方图片发给朋友或保存图片。</span>
					</div>

				</div>

			</div>

			<script>
				//此处显示联系客服微信二维码
				var wxcode = "<div style='width:100%;'><div id='gzcode' style='padding-top:20px;'><img src='http://youtaoquan.xin/res/img/wx.jpg' width='100%' height='100%' id='nosp'></div><div style='float:left;width:100%;height:20px;line-height:20px;font-size:16px;text-align:center;padding-bottom:10px;padding-top:10px'>联系客服 长按扫码</div></div>";

				function wxkf() {

					layer.open({
						title: false,
						type: 1,
						closeBtn: 2,
						shadeClose: true,
						content: wxcode,
						shade: [0.8, '#000']
					});

					$('.layer-anim').css('position', 'fixed');
					$('.layer-anim').css('top', '20%');
					$('.layer-anim').css('left', '0');
					$('.layer-anim').css('right', '0');
					$('.layer-anim').css('width', '100%');
					$('.layer-anim').css('max-width', '250px');
					$('.layer-anim').css('margin', 'auto');
					$('.layer-anim').css('border-radius', '10px');

				}
			</script>

			<script>
				//立即领券,二维码
				var wxsitecode = "<div style='width:100%;'><div id='gzcode' style='padding-top:20px;'><img src='http://youtaoquan.xin/res/img/wx.jpg' width='100%' height='100%' id='nosp'></div><div style='float:left;width:100%;height:20px;line-height:20px;font-size:16px;text-align:center;padding-bottom:10px;padding-top:10px'>关注我们 长按扫码</div></div>";

				function wxsite() {

					layer.open({
						title: false,
						type: 1,
						closeBtn: 2,
						shadeClose: true,
						content: wxsitecode,
						shade: [0.8, '#000']
					});

					$('.layer-anim').css('position', 'fixed');
					$('.layer-anim').css('top', '20%');
					$('.layer-anim').css('left', '0');
					$('.layer-anim').css('right', '0');
					$('.layer-anim').css('width', '100%');
					$('.layer-anim').css('max-width', '250px');
					$('.layer-anim').css('margin', 'auto');
					$('.layer-anim').css('border-radius', '10px');

				}
			</script>

			<!--点击购买后的处理-->
			<script>
				var wxshare = "<div id='allsharepic' class='sharepicw100' onclick='javascript:layer.closeAll();' style='padding:10px'><div class='sharepicw100 sharepictitle' style='text-align:center;'>@ 优惠券优选</div><div class='sharepicw100'><img id='startpic' src='http://img.alicdn.com/bao/uploaded/i4/752340715/TB2VlDnaFXXXXbgXpXXXXXXXXXX_!!752340715.jpg' class='sharepicw100' style='max-width:94%'></div><div class='sharepicw35 sharepicfl qrcodediv' id='qrcodediv' style='text-align:center;margin:0 auto;'></div><div class='sharepicw60 sharepicfl sharepicpd6'><span class='sharepicw100 sharepicspan1' style='max-width:95%'><b>清仓秋冬休闲裤纯色针织宽松光版男女款大码卫裤收口毛圈加大长裤</b></span><span class='sharepicw100 sharepicspan2' style='text-decoration:line-through;color:#666'><small>原价：1080.00</small></span><span class='sharepicw100 sharepicspan2'><b>券后价：980</b></span></div></div><div class='sharepicw100 sharepicfl sharepicdivbot' style='text-align:center;padding-bottom:20px'>长按扫码，先领券再购物！</div>";

				function sharepic() {

					layer.open({
						title: false,
						type: 1,
						closeBtn: 2,
						shadeClose: true,
						content: wxshare,
						shade: [0.8, '#000']
					});

					//
					var postssurl = "./index.php?i=1&c=entry&url=http%253A%252F%252Fyuyin8.com%252Fapp%252Findex.php%253Fi%253D1%2526c%253Dentry%2526do%253Dshow_api%2526m%253Dbsht_tbk%2526iid%253D539068630509%2526actid%253D%2526yj%253D83.3%2526tit%253DTUVBQ0hFQUznsbPojJzlsJQg6JeP6JOd576K6am85q_bb5aSn6KGj%2526wenan%253D%2526pic%253Dhttp%25253A%25252F%25252Fimg.alicdn.com%25252Ftfscom%25252Fi2%25252F2090302685%25252FTB1PJQEX_vI8KJjSspjXXcgjXXa_%252521%2525210-item_pic.jpg%2526fee1%253D1080.00%2526fee2%253D980%2526qfee%253D100%2526fl%253D83%2526shopfl%253D%2526isdx%253D%2526maijia_id%253D2090302685%2526shopid%253D0%2526isnb%253D1%2526isnice%253D2%2526stype%253D5%2526shopyuji%253D0%2526hdk%253D1%2526actid%253D%2526vid%253D%2526q_yl%253D%2526q_zl%253D%2526qcid%253D&shopid=0&itempic=http%253A%252F%252Fimg.alicdn.com%252Ftfscom%252Fi2%252F2090302685%252FTB1PJQEX_vI8KJjSspjXXcgjXXa_%2521%25210-item_pic.jpg&do=abc_getsurl&m=bsht_tbk";
					$.post(postssurl, function(dat) {
						dat = eval('(' + dat + ')');
						if(dat.status == 1) {

							jQuery('#qrcodediv').qrcode({
								render: "canvas", //也可以替换为table
								width: 80,
								height: 80,
								text: dat.surl,
								correctLevel: 1,
								typeNumber: -1,
							});
						}
					});
					//

					$('.layer-anim').css('position', 'fixed');
					$('.layer-anim').css('top', '5%');
					$('.layer-anim').css('left', '0');
					$('.layer-anim').css('right', '0');
					$('.layer-anim').css('width', '100%');
					$('.layer-anim').css('max-width', '90%');
					$('.layer-anim').css('margin', 'auto');
					$('.layer-anim').css('border-radius', '5px');

					var nblayermw = $('.goodsopenview').width();
					$('.layui-layer-shade').css('width', nblayermw);
					$('.layui-layer-shade').css('margin', '0 auto');
					$('.layui-layer-shade').css('left', '0px');
					$('.layui-layer-shade').css('right', '0px');
					$('.layui-layer').css('width', nblayermw * 0.8);
					$('.layui-layer').css('top', '5.18%');

				}
			</script>

			
			<script>
				function nopic() {
					var nopicid = $('.toppic').attr('data-id');
					$.ajax({
						url: "https://api.m.taobao.com/h5/mtop.taobao.detail.getdetail/6.0/?&api=mtop.taobao.detail.getdetail&v=6.0&ttid=2013%40taobao_h5_1.0.0&type=jsonp&dataType=jsonp&data=%7B%22itemNumId%22%3A%22" + nopicid + "%22%7D",
						dataType: 'jsonp',
						jsonp: 'callback',
						success: function(result) {
							var add_image = "http:" + result.data.item.images[1];
							var item_image = add_image + '_400x400.jpg';
							$('.toppic').attr('src', item_image);
							$('.toppic').attr('id', item_image);
						}
					})
				}
			</script>

			<script>
				$(function() {

					$(document).delegate(".new-coupon,.goodsget", "click", function() {
						var $this = $(this);
						var tklurl = $('#isnbjumpurl').attr('data-id');
						if(!yhjid) {
							var yhjid = $this.data("id");
						}
						var nbpic = $this.data("bk");
						var apitkl = $('#readtkl').html();
						var apiurl = $('#readurl').html();

						var postlogo = 'aHR0cDovL2ltZy5hbGljZG4uY29tL3Rmc2NvbS9pMi8yMDkwMzAyNjg1L1RCMVBKUUVYX3ZJOEtKalNzcGpYWGNnalhYYV8hITAtaXRlbV9waWMuanBn';
						var posttextend = 'TUVBQ0hFQUznsbPojJzlsJQg6JeP6JOd576K6am85q_bb5aSn6KGj';
						var posttextwenan = '';
						var postsharelink = 'aHR0cDovL3l1eWluOC5jb20vYXBwL2luZGV4LnBocD9pPTEmYz1lbnRyeSZkbz1zaG93X2FwaSZtPWJzaHRfdGJrJmlpZD01MzkwNjg2MzA1MDkmYWN0aWQ9JnlqPTgzLjMmdGl0PVRVVkJRMGhGUVV6bnNiUG9qSnpsc0pRZzZKZVA2Sk9kNTc2SzZhbTg1cV9iYjVhU242S0dqJndlbmFuPSZwaWM9aHR0cDovL2ltZy5hbGljZG4uY29tL3Rmc2NvbS9pMi8yMDkwMzAyNjg1L1RCMVBKUUVYX3ZJOEtKalNzcGpYWGNnalhYYV8hITAtaXRlbV9waWMuanBnJmZlZTE9MTA4MC4wMCZmZWUyPTk4MCZxZmVlPTEwMCZmbD04MyZzaG9wZmw9JmlzZHg9Jm1haWppYV9pZD0yMDkwMzAyNjg1JnNob3BpZD0wJmlzbmI9MSZpc25pY2U9MiZzdHlwZT01JnNob3B5dWppPTAmaGRrPTEmYWN0aWQ9JnZpZD0mcV95bD0mcV96bD0mcWNpZD0_c';
						var postitemfee = '1080.00';
						var postitemfee2 = '980';
						var postactid = "";
						var isapishow = "1";

						$.ajax({
							type: "post",

							url: "./index.php?i=1&c=entry&op=api&iid=539068630509&yuji=83&shopyuji=0&shopid=0&spadmin=0&do=yhj_tkl_nb_ajax&m=bsht_tbk",
							dataType: "json",
							data: {
								id: yhjid,
								apitkl: apitkl,
								yhjurl: apiurl,
								logo: postlogo,
								textend: posttextend,
								textwenan: posttextwenan,
								sharelink: postsharelink,
								itemfee: postitemfee,
								itemfee2: postitemfee2,
								actid: postactid,
								isapishow: isapishow
							},
							success: function(data) {
								//selection();
								if(data.code == 1000) {
									popTao(nbpic, "口令", "手慢了，优惠券已领被空！");
								} else {
									if(data.tkl == 'error') {
										//openjump();
									}

									popTao(nbpic, "口令", "复制框内整段文字，打开【手机APP】即可【领取优惠券】并购买" + data.tkl);

									//nb_plus
									$(".taotip2").html("<span id='copybtn' style='background:#f54d23;color: white;padding:5px 10px;border-radius: 1000px;display:none'>\u4e00\u952e\u590d\u5236</span><div class='share_content' id='" + yhjid + "' style='display:none;position:fixed;top:-1000px'></div>").show();
									$("#copybtn").on("click", function() {
										var a = $(".share").attr("data-taowords");
										a = a.replace(/\<\/?(br|p){1}\s*\/?\s*\>/gim, "");
										a = a.replace(/&nbsp;/gim, "");
										console.log(a);
										$(".share_content").html(a);
										$(".share_content").show();
										$("#ckcopy").hide()
									});
									$("#copybtn").show();
									var clipboard = new Clipboard("#copybtn", {
										text: function() {
											return $(".share_content").html()
										}
									});
									clipboard.on("success", function(a) {
										$('.taokaocopy').html("<img src='images/copyok.png'  style='width:80%;max-width:650px'>");
										a.trigger.innerHTML = "复制成功";
										a.trigger.style.backgroundColor = "#9ED29E";
										$('#copybtn').hide();
										a.trigger.style.borderColor = "#9ED29E";
										$(".share_content").hide();
										console.info("Action:", a.action);
										console.info("Text:", a.text);
										console.info("Trigger:", a.trigger);
										a.clearSelection()
									});
									clipboard.on("error", function(a) {
										a.trigger.innerHTML = "复制失败";
										setTimeout(function() {
											a.trigger.innerHTML = "请重试或手工复制"
										}, 1000);
										setTimeout(function() {
											a.trigger.innerHTML = "一键复制";
											a.trigger.style.backgroundColor = "#f54d23";
										}, 2500);
										a.trigger.style.backgroundColor = "#666";
										a.trigger.style.borderColor = "#9ED29E";
										$(".share_content").hide();
										console.info("Action:", a.action);
										console.info("Text:", a.text);
										console.info("Trigger:", a.trigger);
										a.clearSelection();
										if(camera == 0) {

											var clipboard = new Clipboard('#copy_key_ios_nb', {
												target: function(e) {
													return document.querySelector('#copy_key_ios_nb');
												}
											});

											clipboard.on('success', function(e) {
												e.clearSelection();
											});

											$('#copy_key_ios_nb').click();
											var key = document.getElementById('copy_key_ios_nb');
											var selection = window.getSelection();
											selection.addRange(key);
										}

									});
									//nb_plus

								}

							}
						});

					});

					document.addEventListener("selectionchange", function(e) {
						if(window.getSelection().anchorNode.parentNode.id == 'copy_key_ios_nb' || window.getSelection().anchorNode.id == 'copy_key_ios_nb') {
							var key = document.getElementById('copy_key_ios_nb');
							window.getSelection().selectAllChildren(key);
						}
					}, false)

				});
			</script>

			<script>
				function regain() {
					var taokouling_value = document.getElementById("copy_key_android_nb").value;
					document.getElementById('copy_key_android_nb').value = taokouling_value;
					$('#copy_key_android_nb').focus();
					$('#copy_key_android_nb').select();
				}
			</script>

			

			<script>
				$(".nb-camera").click(function() {

					$('.loadingbar3').show();

					var cainfo = window.localStorage.getItem("i1_539068630509__0");
					if(cainfo) {
						var ckinfo = IsExist(cainfo);
						if(ckinfo == 1) {
							$('.imgData').attr('src', cainfo);
						}
					}

					if($('.imgData').attr('src') == "" && !cainfo && ckinfo != 1) {

						var postsurl = "./index.php?i=1&c=entry&url=http%253A%252F%252Fyuyin8.com%252Fapp%252Findex.php%253Fi%253D1%2526c%253Dentry%2526do%253Dshow_api%2526m%253Dbsht_tbk%2526iid%253D539068630509%2526actid%253D%2526yj%253D83.3%2526tit%253DTUVBQ0hFQUznsbPojJzlsJQg6JeP6JOd576K6am85q_bb5aSn6KGj%2526wenan%253D%2526pic%253Dhttp%25253A%25252F%25252Fimg.alicdn.com%25252Ftfscom%25252Fi2%25252F2090302685%25252FTB1PJQEX_vI8KJjSspjXXcgjXXa_%252521%2525210-item_pic.jpg%2526fee1%253D1080.00%2526fee2%253D980%2526qfee%253D100%2526fl%253D83%2526shopfl%253D%2526isdx%253D%2526maijia_id%253D2090302685%2526shopid%253D0%2526isnb%253D1%2526isnice%253D2%2526stype%253D5%2526shopyuji%253D0%2526hdk%253D1%2526actid%253D%2526vid%253D%2526q_yl%253D%2526q_zl%253D%2526qcid%253D&title=MEACHEAL%E7%B1%B3%E8%8C%9C%E5%B0%94+%E8%97%8F%E8%93%9D%E7%BE%8A%E9%A9%BC%E6%AF%9B%E5%A4%A7%E8%A1%A3&itemfee=1080.00&itemfee2=980&itemid=539068630509&actid=&istm=&shopid=0&itempic=http%253A%252F%252Fimg.alicdn.com%252Ftfscom%252Fi2%252F2090302685%252FTB1PJQEX_vI8KJjSspjXXcgjXXa_%2521%25210-item_pic.jpg&do=abc__hbpic&m=bsht_tbk";

						$.ajax({
							url: postsurl,
							dataType: 'json',
							jsonp: 'callback',
							success: function(dat) {

								if(dat.status == 1) {

									window.localStorage.setItem("i1_539068630509__0", dat.picurl);

									var picdiv = "<div id='allsharepic' class='sharepicw100' style='padding:10px'><div class='sharepicw100'><img id='startpic' src='" + dat.picurl + "' class='sharepicw100' style='max-width:94%'></div></div>";

									$(".imgData").attr("src", dat.picurl);

									$('.loadingbar3').hide();

									layer.open({
										title: false,
										type: 1,
										closeBtn: 2,
										shadeClose: true,
										content: picdiv,
										shade: [0.8, '#000'],
										success: function(index) {}
									});

									$('.layer-anim').css('position', 'fixed');
									$('.layer-anim').css('top', '5%');
									$('.layer-anim').css('left', '0');
									$('.layer-anim').css('right', '0');
									$('.layer-anim').css('width', '100%');
									$('.layer-anim').css('max-width', '90%');
									$('.layer-anim').css('margin', 'auto');
									$('.layer-anim').css('border-radius', '5px');

									var nblayermw = $('.goodsopenview').width();
									$('.layui-layer-shade').css('width', nblayermw);
									$('.layui-layer-shade').css('margin', '0 auto');
									$('.layui-layer-shade').css('left', '0px');
									$('.layui-layer-shade').css('right', '0px');
									$('.layui-layer').css('width', nblayermw * 0.8);
									$('.layui-layer').css('top', '5.18%');

								} else {
									$('.loadingbar3').hide();
									layer.msg('二维码图片生成失败！');
									window.localStorage.removeItem("i1_539068630509__0");
								}
							}
						});

					} else {

						$('.imgData').attr('src', cainfo);
						var pichbsrc = $('.imgData').attr('src');
						var picdiv = "<div id='allsharepic' class='sharepicw100' style='padding:10px'><div class='sharepicw100'><img id='startpic' src='" + pichbsrc + "' class='sharepicw100' style='max-width:94%'></div></div>";

						$('.loadingbar3').hide();
						layer.open({
							title: false,
							type: 1,
							closeBtn: 2,
							shadeClose: true,
							content: picdiv,
							shade: [0.8, '#000'],
							success: function(index) {

							}
						});

						$('.layer-anim').css('position', 'fixed');
						$('.layer-anim').css('top', '5%');
						$('.layer-anim').css('left', '0');
						$('.layer-anim').css('right', '0');
						$('.layer-anim').css('width', '100%');
						$('.layer-anim').css('max-width', '90%');
						$('.layer-anim').css('margin', 'auto');
						$('.layer-anim').css('border-radius', '5px');

						var nblayermw = $('.goodsopenview').width();
						$('.layui-layer-shade').css('width', nblayermw);
						$('.layui-layer-shade').css('margin', '0 auto');
						$('.layui-layer-shade').css('left', '0px');
						$('.layui-layer-shade').css('right', '0px');
						$('.layui-layer').css('width', nblayermw * 0.8);
						$('.layui-layer').css('top', '5.18%');

					}

				});

				$(".nb-canvas .am-icon-close").click(function() {
					$(".nb-sharecanvas").css("display", "none");
				});

				function canvasApp() {
					var postsurl = "./index.php?i=1&c=entry&url=http%253A%252F%252Fyuyin8.com%252Fapp%252Findex.php%253Fi%253D1%2526c%253Dentry%2526do%253Dshow_api%2526m%253Dbsht_tbk%2526iid%253D539068630509%2526actid%253D%2526yj%253D83.3%2526tit%253DTUVBQ0hFQUznsbPojJzlsJQg6JeP6JOd576K6am85q_bb5aSn6KGj%2526wenan%253D%2526pic%253Dhttp%25253A%25252F%25252Fimg.alicdn.com%25252Ftfscom%25252Fi2%25252F2090302685%25252FTB1PJQEX_vI8KJjSspjXXcgjXXa_%252521%2525210-item_pic.jpg%2526fee1%253D1080.00%2526fee2%253D980%2526qfee%253D100%2526fl%253D83%2526shopfl%253D%2526isdx%253D%2526maijia_id%253D2090302685%2526shopid%253D0%2526isnb%253D1%2526isnice%253D2%2526stype%253D5%2526shopyuji%253D0%2526hdk%253D1%2526actid%253D%2526vid%253D%2526q_yl%253D%2526q_zl%253D%2526qcid%253D&shopid=0&itempic=http%253A%252F%252Fimg.alicdn.com%252Ftfscom%252Fi2%252F2090302685%252FTB1PJQEX_vI8KJjSspjXXcgjXXa_%2521%25210-item_pic.jpg&do=abc_getsurl&m=bsht_tbk";
					//
					$.ajax({
						url: postsurl,
						dataType: 'json',
						jsonp: 'callback',
						success: function(dat) {
							if(dat.status == 1) {
								nburl = dat.reurl;
								nbpic = dat.repic;
							} else {
								sharepic();
								return false;
							}
							var canvas = document.getElementById('sharecanvas');
							var ctx = canvas.getContext("2d");
							ctx.fillStyle = "#fff";
							canvas.width = (document.documentElement.clientWidth * 0.9) * 2;
							canvas.height = canvas.width / 2 + 680;
							var imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
							for(var i = 0; i < imageData.data.length; i += 4) {
								if(imageData.data[i + 3] == 0) {
									imageData.data[i] = 255;
									imageData.data[i + 1] = 255;
									imageData.data[i + 2] = 255;
									imageData.data[i + 3] = 255;
								}
							}
							ctx.putImageData(imageData, 0, 0);
							var item_img = new Image()
							item_img.setAttribute('crossOrigin', 'anonymous');
							item_img.src = dat.repic;
							item_img.onerror = function() {
								sharepic();
								$('.image_loading').hide();
								$('.image_show').hide();
								$('.nb-sharecanvas').hide();
								return false;
							}
							item_img.onload = function() {
								ctx.drawImage(item_img, 0, 0, canvas.width, canvas.width);
								var code_img = new Image()
								code_img.setAttribute('crossOrigin', 'anonymous');
								code_img.src = dat.reurl;
								code_img.onerror = function() {
									sharepic();
									$('.image_loading').hide();
									$('.image_show').hide();
									$('.nb-sharecanvas').hide();
									return false;
								}
								code_img.onload = function() {
									ctx.drawImage(code_img, canvas.width - 220, canvas.width + 20, 200, 200);
									var str = "清仓秋冬休闲裤纯色针织宽松光版男女款大码卫裤收口毛圈加大长裤";
									ctx.fillStyle = '#605761';
									ctx.lineWidth = 1;
									ctx.textAlign = 'left';
									ctx.textBaseline = "top";
									ctx.font = '28px Helvetica';
									var lineWidth = 0;
									var canvasWidth = canvas.width - 60;
									var initHeight = canvas.width + 30;
									var lastSubStrIndex = 0;
									for(var i = 0; i <= str.length; i++) {
										lineWidth += ctx.measureText(str[i]).width;
										if(lineWidth > canvasWidth - 230) {
											ctx.fillText(str.substring(lastSubStrIndex, i), 20, initHeight);
											initHeight += 40;
											lineWidth = 0;
											lastSubStrIndex = i;
										}
										if(i == str.length - 1) {
											ctx.fillText(str.substring(lastSubStrIndex, i + 1), 20, initHeight);
										}
									}
									var price = "原价：1080.00";
									ctx.fillStyle = '#aba0ac';
									ctx.textAlign = 'left';
									ctx.font = '30px Helvetica';
									ctx.textBaseline = "top";
									ctx.fillText(price, 20, initHeight + 30);
									ctx.strokeStyle = '#aba0ac';
									ctx.lineWidth = 2;
									ctx.moveTo(20, initHeight + 46);
									ctx.lineTo(200, initHeight + 46);
									ctx.stroke();
									var end_price_title = "券后价:";
									ctx.fillStyle = '#aba0ac';
									ctx.textAlign = 'left';
									ctx.font = '30px Helvetica';
									ctx.textBaseline = "top";
									ctx.fillText(end_price_title, 20, initHeight + 80);
									var end_price = "980";
									ctx.fillStyle = '#fba137';
									ctx.textAlign = 'left';
									ctx.font = '42px Helvetica';
									ctx.textBaseline = "top";
									ctx.fillText(end_price, 120, initHeight + 72);
									ctx.setLineDash([10, 5]);
									ctx.lineWidth = 1;
									ctx.strokeStyle = '#aba0ac';
									ctx.beginPath();
									ctx.moveTo(10, canvas.height - 50);
									ctx.lineTo(canvas.width - 10, canvas.height - 50);
									ctx.stroke();
									ctx.fillStyle = 'white'
									ctx.lineWidth = 0;
									ctx.beginPath();
									ctx.moveTo((canvas.width - 308) / 2 - 10, canvas.height - 64);
									ctx.lineTo((canvas.width - 308) / 2 + 320, canvas.height - 64);
									ctx.lineTo((canvas.width - 308) / 2 + 320, canvas.height - 46);
									ctx.lineTo((canvas.width - 308) / 2 - 10, canvas.height - 46);
									ctx.lineTo((canvas.width - 308) / 2 - 10, canvas.height - 64);
									ctx.fill();
									var code_title = '长按二维码识别查看商品';
									ctx.fillStyle = '#aba0ac';
									ctx.font = '28px Helvetica';
									ctx.fillText(code_title, (canvas.width - 308) / 2, canvas.height - 64);
									var image = new Image();
									image.setAttribute('crossOrigin', 'anonymous');
									image.src = canvas.toDataURL("img/jpeg");
									$(".imgData").attr("background", "white");
									$(".imgData").attr("src", image.src);
									//$(".imgData").attr("id",image.src);
									$(".imgData").show();

									if($('.imgData').attr('src') != "") {
										$('.image_loading').hide();
										$('.image_show').show();
										$('.am-icon-close').show();
									}
								}
							}
							//
						}
					});
					//
				}
			</script>

			<script>
				function nbjumpone() {
					var a = isDevType();
					var ua = navigator.userAgent.toLowerCase();
					switch(a) {
						case 1:
							var nbjumpurl2 = $('#readurl').html();
							//$('.nb-btn3').html('<a href="http://yuyin8.com/addons/bsht_tbk/go.php?backurl='+nbjumpurl2+'&m=bsht_tbk" style="color:white" target="_blank">点击购买</a>');
							$('.nb-btn3').html('<a href="http://uniqlo.t16.ltd/jump?go=' + nbjumpurl2 + '" style="color:white" target="_blank">浏览器打开</a>');
							break;
						case 2:
							if((browserType() == 4 || is_weixnb()) && ipad != 1 && camera != 0) {
								//alert(browserType());
								var nbjumpurl2 = $('#readurl').html();
								//$('.nb-btn3').html('<a href="https://t.asczwa.com/taobao?backurl='+nbjumpurl2+'" style="color:white" >点击购买</a>');
								$('.nb-btn3').html('<a href="http://uniqlo.t16.ltd/jump?go=' + nbjumpurl2 + '" style="color:white" target="_blank">浏览器打开</a>');
							}
							break;
						default:
							break;
					}

					var nbjumpurl2 = $('#readurl').html();
					$('.nb-btn3').html('<a href="http://uniqlo.t16.ltd/jump?go=' + nbjumpurl2 + '" style="color:white" target="_blank">浏览器打开</a>');
				}
			</script>

			<script>
				$(function() {
					$(".addfav").click(function() {

						layer.msg('本功能仅限微信会员使用！');
						$('.addfav').html('收藏');

						var url = "./index.php?i=1&c=entry&itempic=http%3A%2F%2Fimg.alicdn.com%2Ftfscom%2Fi2%2F2090302685%2FTB1PJQEX_vI8KJjSspjXXcgjXXa_%21%210-item_pic.jpg&itemtitle=MEACHEAL%E7%B1%B3%E8%8C%9C%E5%B0%94+%E8%97%8F%E8%93%9D%E7%BE%8A%E9%A9%BC%E6%AF%9B%E5%A4%A7%E8%A1%A3&itemid=539068630509&act=fav&itemfee=1080.00&itemfee2=980&itemfee3=100&itemmsell=83204&type=2&actid=&type2url=aHR0cDovL3l1eWluOC5jb20vYXBwL2luZGV4LnBocD9pPTEmYz1lbnRyeSZkbz1zaG93X2FwaSZtPWJzaHRfdGJrJmlpZD01MzkwNjg2MzA1MDkmYWN0aWQ9JnlqPTgzLjMmdGl0PVRVVkJRMGhGUVV6bnNiUG9qSnpsc0pRZzZKZVA2Sk9kNTc2SzZhbTg1cV9iYjVhU242S0dqJndlbmFuPSZwaWM9aHR0cDovL2ltZy5hbGljZG4uY29tL3Rmc2NvbS9pMi8yMDkwMzAyNjg1L1RCMVBKUUVYX3ZJOEtKalNzcGpYWGNnalhYYV8hITAtaXRlbV9waWMuanBnJmZlZTE9MTA4MC4wMCZmZWUyPTk4MCZxZmVlPTEwMCZmbD04MyZzaG9wZmw9JmlzZHg9Jm1haWppYV9pZD0yMDkwMzAyNjg1JnNob3BpZD0wJmlzbmI9MSZpc25pY2U9MiZzdHlwZT01JnNob3B5dWppPTAmaGRrPTEmYWN0aWQ9JnZpZD0mcV95bD0mcV96bD0mcWNpZD0_c&do=fav_ajax&m=bsht_tbk";
						$.post(url, function(dat) {
							dat = eval('(' + dat + ')');

							if(dat.status == 1) {
								layer.msg('收藏成功！');
								$('.addfav').html('取消');
								$('.addfav').removeClass('goodscollection');
								$('.addfav').addClass('goodscollection2');
							}

							if(dat.status == 0) {
								layer.msg('已取消收藏！');
								$('.addfav').html('收藏');
								$('.addfav').removeClass('goodscollection2');
								$('.addfav').addClass('goodscollection');
							}

							if(dat.status == 500) {
								layer.msg('本功能仅限微信用户使用！');
								$('.addfav').html('收藏');
							}

						});
					});

				});
			</script>
			<script>
				//nbs核心

				var nativeShare = new NativeShare()

				function share() {
					var nbyhjid = "";
					var apitkl = $('#readtkl').html();
					var apiurl = $('#readurl').html();

					var postlogo = 'aHR0cDovL2ltZy5hbGljZG4uY29tL3Rmc2NvbS9pMi8yMDkwMzAyNjg1L1RCMVBKUUVYX3ZJOEtKalNzcGpYWGNnalhYYV8hITAtaXRlbV9waWMuanBn';
					var posttextend = 'TUVBQ0hFQUznsbPojJzlsJQg6JeP6JOd576K6am85q_bb5aSn6KGj';
					var posttextwenan = '';
					var postsharelink = 'aHR0cDovL3l1eWluOC5jb20vYXBwL2luZGV4LnBocD9pPTEmYz1lbnRyeSZkbz1zaG93X2FwaSZtPWJzaHRfdGJrJmlpZD01MzkwNjg2MzA1MDkmYWN0aWQ9JnlqPTgzLjMmdGl0PVRVVkJRMGhGUVV6bnNiUG9qSnpsc0pRZzZKZVA2Sk9kNTc2SzZhbTg1cV9iYjVhU242S0dqJndlbmFuPSZwaWM9aHR0cDovL2ltZy5hbGljZG4uY29tL3Rmc2NvbS9pMi8yMDkwMzAyNjg1L1RCMVBKUUVYX3ZJOEtKalNzcGpYWGNnalhYYV8hITAtaXRlbV9waWMuanBnJmZlZTE9MTA4MC4wMCZmZWUyPTk4MCZxZmVlPTEwMCZmbD04MyZzaG9wZmw9JmlzZHg9Jm1haWppYV9pZD0yMDkwMzAyNjg1JnNob3BpZD0wJmlzbmI9MSZpc25pY2U9MiZzdHlwZT01JnNob3B5dWppPTAmaGRrPTEmYWN0aWQ9JnZpZD0mcV95bD0mcV96bD0mcWNpZD0_c';
					var postitemfee = '1080.00';
					var postitemfee2 = '980';
					var postactid = "";
					var isapishow = "1";

					$.ajax({
						type: "post",

						url: "./index.php?i=1&c=entry&op=api&iid=539068630509&yuji=83&shopyuji=0&shopid=0&spadmin=0&do=yhj_tkl_nb2_ajax&m=bsht_tbk",
						dataType: "json",
						data: {
							id: nbyhjid,
							apitkl: apitkl,
							yhjurl: apiurl,
							logo: postlogo,
							textend: posttextend,
							textwenan: posttextwenan,
							sharelink: postsharelink,
							itemfee: postitemfee,
							itemfee2: postitemfee2,
							actid: postactid,
							isapishow: isapishow
						},
						success: function(data) {
							if(data.tkl != 'error') {
								var shareData = {
									title: "优惠券☛100元▍原价1080.00▍券后980▍MEACHEAL米茜尔 藏蓝羊驼毛大衣",
									desc: "MEACHEAL米茜尔 藏蓝羊驼毛大衣",
									link: data.nburl,
									icon: "http://img.alicdn.com/tfscom/i2/2090302685/TB1PJQEX_vI8KJjSspjXXcgjXXa_!!0-item_pic.jpg",
									success: function() {
										//alert('success');
									},
									fail: function() {
										//alert('fail');
									}
								}
								nativeShare.setShareData(shareData);
								nbs();
							}
						}

					});

				}

				function nbs(command) {
					try {
						nativeShare.call(command);
					} catch(err) {
						// 如果不支持，你可以在这里做降级处理
						//alert(err.message);
					}
				}

				function setTitle(title) {
					nativeShare.setShareData({
						title: title,
					})
				}
				//nbs核心
			</script>
			<script>
				;
			</script>
			<script type="text/javascript" src="http://yuyin8.com/app/index.php?i=1&c=utility&a=visit&do=showjs&m=bsht_tbk"></script>
	</body>

</html>