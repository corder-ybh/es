
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
 *         关闭过渡，瞬间切换
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
    //添加切换效果
    moveUl.style.transition='all.3s';
    // 索引的li标签
    var indexLiArr = document.querySelectorAll('.banner_index li');
    // 定义index 记录当前的索引值
    // 默认我闷得ul已经往左边移动了一倍的宽度，最左边的图片是用来做无限轮播的不希望用户看到，所以index=1
    var index = 1;
    //3、开启定时器
    var timeId = setInterval(function(){
        //4重新添加会过渡效果
        moveUl.style.transition='all.3s';
        //累加
        index++;
        //判断并重置
        if (index >= 9) {
            //跳到用户认为的1
            index = 1;
            //关闭过渡，瞬间切换到第一张4
            moveUl.style.transition='';
        }
        //修改ul的位置
        // -> x正方向是往右
        moveUl.style.transform = 'translateX('+index * width * -1+'px)';

        //修改li标签的外观
        //清空
        for (var i = 0; i < indexLiArr.length; i++) {
            indexLiArr[i].className = '';
        }
        //为当前的li添加
        //li标签的索引是从0开始
        //index是从1开始
        indexLiArr[index-1].className = 'current';
    },1000);
}