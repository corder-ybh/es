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
    var totalSec = totalHour * 60 * 60;// 3*60*60;
    //加一秒以时用户看到的时间是从整数开始而不是00开始
    totalSec ++;
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
        liArr[7].innerHTML = sec % 10;
    },1000)
}

//轮播图的效果
function banner() {
    
}function dev() {
    //没啥子卵用，就是测试下develop和feature冲突时的情况
    //    liArr[7].innerHTML = sec % 10;
}

//轮播图的效果
/**
 *  获取必须知道的变量
 *  步骤1：不考虑过度效果 直接切换
 *     定时器中 index++
 *         判断是否越界
 *         修改轮播图中ul的位置
 *  步骤2：下方的索引li标签 修改 外观
 *         由于是使用.current标示当前的索引值
 *         清空所有li的class
 *         为当前的那个li添加current
 *  步骤3：切换用动画效果
 *         使用css3中的transition
 *         .style.transition='all.3s'
 *         在获取的时候进行添加
 *  步骤4：当切换到最后一张时，瞬间切到第一张
 *         关闭过渡，瞬间切换 -- 以上代码进行备份
 *  步骤5：对代码进行重构，添加进入 过渡结束知识点
 *         由于我们在修改ul的位置时，会使用过渡，
 *         当注册了过渡结束事件之后，每次过渡完毕，都会调用该事件
 *             将判断index是否越界以及修改索引的代码全部迁移到过渡结束事件中
 *
 *             定时器逻辑
 *                 index++;
 *                 修改ul的位置 ->开始过渡
 *             过渡结束逻辑
 *                 判读index是否有效
 *                     进行修正
 *                 修改索引和li标签的显示
 *  步骤6：使用touch时间，实现手指波动ul滑动效果
 *         touchstart
 *             记录开始值
 *             关闭定时器
 *             关闭过渡效果
 *         touchmove
 *             计算移动值
 *             修改ul的位置，在原始值的基础上进行修改，没有过渡效果的
 *         touchend
 *
 *  需要了解的信息：1、单个元素宽度
 *                 2、轮播图的ul(很长的ul)
 *                 3、索引的ul的li(li数组)
 *  定时器逻辑：1、index++
 *             2、修改ul位置
 *             3、使用过渡来实现动画效果
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
    // 默认我们得ul已经往左边移动了一倍的宽度，最左边的图片是用来做无限轮播的不希望用户看到，所以index=1
    var index = 1;
    //抽取定时器过渡的代码，提高代码可读性和降低维护的难度
    var startTransition = function () {
        moveUl.style.transition = 'all.3s';
    }

    //3、开启定时器
    var timeId = setInterval(function(){
        //累加
        index++;
        //只要进入定时器，那么将过渡开启
        //moveUl.style.transition = 'all.3s';
        startTransition();
        //修改ul的位置
        moveUl.style.transform = 'translateX('+index*width*-1+'px)';

    },1000);

    //过渡结束事件 用来修正index的值，并修改索引
    moveUl.addEventListener('webkitTransitionEnd',function () {
        console.log('过渡结束'+index);
        //修正index的值
        if (index > 8 ) {
            index = 1;
            //关闭过渡
            moveUl.style.transition = '';
            //瞬间修改一下ul的位置
            moveUl.style.transform = 'translateX('+index*width*-1+'px)';
        }else if (index < 1) {
            index = 8;
            //关闭过渡
            moveUl.style.transition = '';
            moveUl.style.transform = 'translateX('+index*width*-1+'px)';
        }
        //修改li标签的class
        for (var i = 0; i < indexLiArr.length; i++) {
            indexLiArr[i].className = '';
        }
        indexLiArr[index-1].className = 'current';
    });

    //注册三个touch事件
    //定义变量 记录开始的x
    var startX = 0;
    //定义变量 记录移动的值
    var moveX = 0;
    //记录distanceX
    var distanceX = 0;

    /**
     * 触摸开始:
     *  1、关闭定时器
     *  2、关闭过渡效果
     *  3、记录开始值
     */
    moveUl.addEventListener('touchstart',function (event) {
        //1、关闭定时器
        clearInterval(timeId);
        //2、关闭过渡效果
        moveUl.style.transition = '';
        //3、记录开始值
        startX = event.touches[0].clientX;

    });

    /**
     * 触摸中
     *  1、计算移动的值
     *  2、移动ul
     */
    moveUl.addEventListener('touchmove',function (event) {
        //1、计算移动的值
        moveX = event.touches[0].clientX - startX;
        //2、移动ul
        //默认的移动值是index*-1*width
        moveUl.style.transform = 'translateX('+(moveX+index*-1*width)+'px)';
    });

    /**
     * 触摸结束事件
     *  1、记录结束值
     *  2、开启计时器
     *  3、手指松开的时候 判断 移动的距离 是否吸附
     *     由于不需要考虑正负，只需要考虑距离，Math.abs()
     *         吸附回的值是 index*-1*width
     *     如果移动的距离较大
     *         需要判断正负
     *         index++
     *         index--
     *         index*-1*width
     */
    moveUl.addEventListener('touchend',function (event) {
        //定义最大的偏移值
        var maxDistance = width/3;
        //判断是否超过
        if (Math.abs(moveX)>maxDistance) {
            //超过了，需要开启过渡进行跳转
            if (moveX>0) {
                index--;
            } else {
                index++;
            }
            //此处大小交给过渡结束事件来处理
            console.log('超过：'+moveX+',index:'+index);
            //moveUl.style.transition = 'all.3s';
            startTransition();
            moveUl.style.transform = 'translateX('+(index*-1*width)+'px)';
        } else {
            //没有超过最大偏移量，开启过渡吸附回去即可
            console.log('未超过：'+moveX+',index:'+index);
            //moveUl.style.transition = 'all.3s';
            startTransition();
            moveUl.style.transform = 'translateX('+(index*-1*width)+'px)';
        }
        //3、开启定时器
        timeId = setInterval(function(){
            //累加
            index++;
            //只要进入定时器，那么将过渡开启
            //moveUl.style.transition = 'all.3s';
            startTransition();
            //修改ul的位置
            moveUl.style.transform = 'translateX('+index*width*-1+'px)';

        },1000);
    })
}