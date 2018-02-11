//加载完毕事件，在该事件中写的js代码去获取dom元素，就一定不会出现找不到的问题
window.onload = function () {
    //顶部通栏滚动的效果
    headerScroll();

    //倒计时的效果
    cutDownTime();

    //轮播图的效果
    banner();
}

//顶部通栏的滚动的效果
/**
 *  获取导航栏的高度
 *  在onsrcoll事件中 去修改颜色
 *  透明度在0-1
 *  滚动的距离/导航栏 0-1的浮点数
 *  滚动的距离 /导航栏>1 如果透明度>1 变为1
 *
 *  通过js 修改顶部通栏的透明度即可
 *    为了保证子元素能够正常显示，使用rgba()， hsla()--用的不多
 */
function headerScroll() {
    //1、获取到一些必须要知道的参数
    /**
     *  导航栏的高度
     *  顶部的通栏（为了在onscroll时间中 使用 避免一直获取造成的性能浪费）
     */
    //元素距离顶部的高度
    //console.log('offsetTop:'+document.querySelector('.jd_nav').offsetTop);
    //元素自身的高度
    //console.log('offsetHeight:'+document.querySelector('.jd_nav').offsetHeight);
    //希望获取的是从顶部到导航栏底部的距离
        // 获取导航栏
    var navDom = document.querySelector('.jd_nav');
    //获取从顶部到导航栏底部的距离
    var maxDistance = navDom.offsetTop + navDom.offsetHeight;
    //获取顶部的通栏
    var headerDom = document.querySelector('.jd_header');
    //零、为了保证默认是透明的，直接设置rgba的a为0
    //使用js修改的样式 会变为行内式
    headerDom.style.backgroundColor = 'rgba(201,21,35,0)';

    //2.注册onscroll事件
    window.onscroll = function () {

        //console.log('123');
        //一、获取滚动的距离 body是通过document点出来的
        var scrollDistance = window.document.body.scrollTop;
        //console.log(scrollDistance);
        //二、计算一个0-1的百分数
        var percent = scrollDistance / maxDistance;
        //console.log(percent);
        //如果超过1，重置为1
        if (percent > 1) {
            percent = 1
        }
        //三、设置顶部通栏的透明度
        headerDom.style.backgroundColor = 'rgba(201,21,35,'+percent+')';
    }
}

//倒计时的效果
/**
 *  定义一个倒计时的总时间
 *  获取想要修改的li标签
 *
 *  开启定时器
 *      判断是否 时间已经没有了
 *      递减时间
 *      修改对应标签的显示
 */
function cutDownTime() {
    //定义总时间，写时间时建议如下写法
    var totalHour = 3;
    //转化为秒
    //实际开发中，应该是从后台取得的，现在所以网站都是动态的
    var totalSec = 5;// 3*60*60;

    //获取想要修改的所有li标签
    //querySelectorAll querySelector 这两个方法可以传入css，css3中的选择器
    //如果想要自己封装一个类似于jq的东西，可以在内部调用这个方法
    var liArr = document.querySelectorAll('.main_content:nth-child(1) .content_top li');
    //获取第一个盒子
    var main_content = document.querySelector('.main_content');
    //console.log(liArr);

    //开启定时器
    var timeId = setInterval(function () {
        //判断是否小于9
        if (totalSec <= 0) {
            //干掉定时器
            clearInterval(timeId);
            //倒计时结束，设置第一个盒子不可见
            main_content.style.display = 'none';
            //console.log('已结束');
            return;
        }

        //递减
        totalSec--;
        //当前的秒对应到多少小时多少分
        /**
         * 3671
         * 1小时
         * 
         */
        var hour = Math.floor(totalSec / 3600);
        var minute = Math.floor(totalSec % 3600 / 60);
        var sec = totalSec % 60;
        //修改dom元素显示
        //小时
        liArr[0].innerHTML = Math.floor(hour / 10); //十位数字，且要取整
        liArr[1].innerHTML = hour % 10;     //个位

        //分钟
        liArr[3].innerHTML = Math.floor(minute / 10);  //十位数字，且要取整
        liArr[4].innerHTML = minute % 10;              //个位

        //秒
        liArr[6].innerHTML = Math.floor(sec / 10);      //
        liArr[7].innerHTML = sec
    },1000);
}

//轮播图的效果
/**
 *  获取必须知道的变量
 *  步骤1：不考虑过度效果 直接切换
 *     定时器中 index++
 *         判断是否越界
 *         修改轮播图中ul的位置
 */
function banner() {
    //1、获取变量
    //屏幕的宽度
    var width = document.body.offsetWidth;
    //console.log(width);
    //2、获取轮播图的ul
    var moveUl = document.querySelector('.banner_images');
    // 索引的li标签
    var indexLiArr = document.querySelectorAll('.banner_index li');
    // 定义index 记录当前的索引值
    var index = 0;
    //3、开启定时器
    var timeId = setInterval(function(){
        //累加
        index++;
        //判断并重置
        if (index > 9) {
            index = 0
        }
        //修改ul的位置
        // -> x正方向是往右
        moveUl.style.transform = 'translateX('+index * width * -1+'px)';
    },2000);
}