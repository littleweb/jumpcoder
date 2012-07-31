#jumpCoder - 前端便捷输入

基于Google输入法的(xhtml+CSS)代码快捷输入扩展；

##优点：
1. 不依赖任何编辑器，有输入源的地方就可以使用，只依赖于Google输入法；
2. 命令简洁易懂，支持参数传入，输出计算结果；如：iuiwh,550+400 返回width:550px;height:400px;
3. 支持自定义命令，输出个性的内容；

###命令的基本语法：

iui函数名,参数1+参数2;

(i)(ui)(函数名)[,参数1+参数2](;) //注：括号内的选项都是必输项；

###小提示：

此命令行是Google输入的i扩展应用；

比如：iuiwh,550+400

i是输入法扩展的命令前缀，ui是自定义的命令前缀，wh是ui下的函数名称，550+400是参数，参数之间用+连接，参数与函数之间用,连接；


##语法列表：

###一、背景设置：

1、背景的基本项
命令行：iuibg;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibg.png)

2、背景色：
命令行：iuibgc；
![](http://xiaoweb.org/demo/jumpcoder/images/iuibgc.png)

3、背景的显示方式设置：
命令行：iuibgf;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibgf.png)

4、背景图片：
命令行：iuibgi;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibgi.png)

5、背景定位，支持参数计算：
命令行：iuibgp,数字+数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibgp.png)

6、背景铺展方式：
命令行：iuibgr;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibgr.png)


###二、边框设置
1、1px边框-实体线：
命令行：iuibrs;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibrs.png)

2、1px边框-虚线：
命令行：iuibrd;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibrd.png)

3、1px边框-密虚线：
命令行：iuibrdo;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibrdo.png)

4、边框-无边框：
命令行：iuibrn;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibrn.png)

###三、文本设置
1、颜色设置：
命令行：iuico;
![](http://xiaoweb.org/demo/jumpcoder/images/iuico.png)

2、行高设置--支持参数传入，返回两种结果{*px,*em}
命令行：iuil,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuil.png)

3、文本对齐；
命令行：iuita;
![](http://xiaoweb.org/demo/jumpcoder/images/iuita.png)

4、文字装饰效果：
命令行：iuitd;
![](http://xiaoweb.org/demo/jumpcoder/images/iuitd.png)

5、换行控制：
命令行：iuiws;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiws.png)

6、字符间距--支持参数传入；
命令行：iuiwp,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiwp.png)

7、缩进设置--支持参数传入，返回两种结果{*px,*em}
命令行：iuit,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuit.png)

###四、字体设置
1、字号和字宽设置--支持参数传入，可以设置font-size和font-weight，100是分隔点，100以下是font-size，100以上为font-weight:
命令行;iuifw,数字；
![](http://xiaoweb.org/demo/jumpcoder/images/iuifw.png)

2、字体设置，提供了几种常用的默认字体:
命令行：iuiff;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiff.png)

3、字体样式设置:
命令行：iuifs;
![](http://xiaoweb.org/demo/jumpcoder/images/iuifs.png)

###五、盒模型相关属性设置
1、宽度设置--支持参数传入：
命令行：iuiw,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiw.png)

2、高度设置--支持参数传入：
命令行：iuih,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuih.png)

3、宽、高设置--支持参数传入：
命令行：iuiwh,数字+数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiwh.png)

4、margin设置--支持参数传入：
命令行：iuim,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuim.png)

5、padding设置--支持参数传入：
命令行：iuip,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuip.png)

###六、定位显示设置
1、overflow设置：
命令行：iuiov;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiov.png)

2、显示属性设置：
命令行：iuid;
![](http://xiaoweb.org/demo/jumpcoder/images/iuid.png)

3、float浮动：
命令行：iuifl;
![](http://xiaoweb.org/demo/jumpcoder/images/iuifl.png)

4、清除浮动：
命令行：iuicr;
![](http://xiaoweb.org/demo/jumpcoder/images/iuicr.png)

5、垂直对齐设置：
命令行：iuiva;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiva.png)

6、鼠标指针设置--提供了常用指针的输出选项：
命令行：iuicu;
![](http://xiaoweb.org/demo/jumpcoder/images/iuicu.png)

7、绝对定位--支持参数传入，返回各种方向的定位结果：
命令行：iuibs,数字+数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibs.png)

8、相对定位--支持参数传入，返回各种方向的定位结果：
命令行：iuirel,数字+数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuirel.png)

9、层序定位--支持参数传入：
命令行：iuiz,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiz.png)

###七、特殊样式设置
1、透明度兼容性设置--支持参数传入：
命令行：iuial,数字;
![](http://xiaoweb.org/demo/jumpcoder/images/iuial.png)

2、兼容性容器清除浮动写法：
命令行：iuiclear;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiclear.png)

3、png背景图兼容性写法：
命令行：iuipng;
![](http://xiaoweb.org/demo/jumpcoder/images/iuipng.png)

4、样式重设数据块：
命令行：iuireset;
![](http://xiaoweb.org/demo/jumpcoder/images/iuireset.png)

###八、html页面制作初始化数据块模板：
1、标准xhtml页面模板：
命令行：iuinew;
![](http://xiaoweb.org/demo/jumpcoder/images/iuinew.png)

2、style样式标签块：
命令行：iuicss;
![](http://xiaoweb.org/demo/jumpcoder/images/iuicss.png)

3、link标签：
命令行：iuicssrc;
![](http://xiaoweb.org/demo/jumpcoder/images/iuicssrc.png)

4、js内联写法：
命令行：iuijs;
![](http://xiaoweb.org/demo/jumpcoder/images/iuijs.png)

5、js外链标签：
命令行：iuijsrc;
![](http://xiaoweb.org/demo/jumpcoder/images/iuijsrc.png)

###九、一些简单的html标签的输出：
1、a标签：
命令行：iuia;
![](http://xiaoweb.org/demo/jumpcoder/images/iuia.png)

2、br标签：
命令行：iuibr;
![](http://xiaoweb.org/demo/jumpcoder/images/iuibr.png)

3、div标签：
命令行：iuidiv;
![](http://xiaoweb.org/demo/jumpcoder/images/iuidiv.png)

4、dl列表：
命令行：iuidl;
![](http://xiaoweb.org/demo/jumpcoder/images/iuidl.png)

5、em标签：
命令行：iuiem;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiem.png)

6、h标题标签：
命令行：iuiht;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiht.png)、

7、hr标签：
命令行：iuihr;
![](http://xiaoweb.org/demo/jumpcoder/images/iuihr.png)

8、iframe标签：
命令行：iuiifr;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiifr.png)

9、img标签：
命令行：iuiimg;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiimg.png)

10、input标签：
命令行：iuiinput;
![](http://xiaoweb.org/demo/jumpcoder/images/iuiinput.png)