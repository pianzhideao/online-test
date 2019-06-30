-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 �?06 �?24 �?07:37
-- 服务器版本: 5.5.53
-- PHP 版本: 5.6.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `online_test`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '管理员账号',
  `userpwd` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `userpwd`) VALUES
(2, 'slina', '08042'),
(4, 'ayaco', '123456'),
(5, 'lcx', '0118');

-- --------------------------------------------------------

--
-- 表的结构 `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reallyname` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '真实姓名',
  `report` int(50) NOT NULL COMMENT '成绩',
  `cs` int(255) NOT NULL COMMENT '次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=249 ;

--
-- 转存表中的数据 `report`
--

INSERT INTO `report` (`id`, `reallyname`, `report`, `cs`) VALUES
(248, '卢春香', 40, 338),
(247, '卢春香', 75, 337),
(246, '卢春香', 75, 337),
(245, '史丽佳', 68, 336),
(244, '林倩', 65, 335),
(243, '史丽佳', 65, 334);

-- --------------------------------------------------------

--
-- 表的结构 `shoucang`
--

CREATE TABLE IF NOT EXISTS `shoucang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kt_cs` int(11) NOT NULL,
  `save` int(11) NOT NULL,
  `kt_id` int(11) NOT NULL,
  `kt_user` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `shoucang`
--

INSERT INTO `shoucang` (`id`, `kt_cs`, `save`, `kt_id`, `kt_user`) VALUES
(1, 334, 1, 205, '29'),
(2, 334, 1, 212, '29'),
(3, 334, 1, 238, '29'),
(4, 336, 1, 240, '29'),
(5, 336, 1, 173, '29'),
(6, 337, 1, 210, '22');

-- --------------------------------------------------------

--
-- 表的结构 `tom`
--

CREATE TABLE IF NOT EXISTS `tom` (
  `id` int(11) NOT NULL,
  `sz` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tom`
--

INSERT INTO `tom` (`id`, `sz`) VALUES
(1, 338);

-- --------------------------------------------------------

--
-- 表的结构 `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ks_lx` varchar(255) NOT NULL COMMENT '考试类型',
  `kt_lx` varchar(255) NOT NULL COMMENT '考题类型',
  `fs` int(255) NOT NULL COMMENT '考题成绩',
  `ks_nr` varchar(255) NOT NULL COMMENT '考试内容',
  `kq_da` varchar(255) NOT NULL COMMENT '考生答案',
  `zq_da` varchar(255) NOT NULL COMMENT '正确答案',
  `kt_jx` varchar(888) NOT NULL COMMENT '考题解析',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=268 ;

--
-- 转存表中的数据 `topic`
--

INSERT INTO `topic` (`id`, `ks_lx`, `kt_lx`, `fs`, `ks_nr`, `kq_da`, `zq_da`, `kt_jx`) VALUES
(145, 'HTML1', '判断题', 5, 'target="_blank"是将链接的网页在新的浏览器窗口中打开', '对*错', '对', '标签在默认情况下，链接的网页是在当前浏览器窗口中打开，<a href="目标网址" target="_blank">当标明此语句就可以在新的浏览器窗口中打开。'),
(146, 'HTML1', '判断题', 5, '&ltlabel for="控件id名称"&gt标签的 for 属性中的值应当与相关控件的 id 属性值一定要相同', '对*错', '对', '当用户单击选中该label标签时，浏览器就会自动将焦点转到和标签相关的表单控件上（就自动选中和该label标签相关连的表单控件上）'),
(147, 'HTML1', '判断题', 5, '&lta&gt标签不可以链接Email地址', '对*错', '错', '&lta&gt标签是可以链接Email地址，使用mailto能让访问者便捷向网站管理者发送电子邮件。'),
(148, 'HTML1', '判断题', 5, '&ltlabel for="male"&gt男&lt/label&gt\n&ltinput type="radio" name="gender" id="female" &gt\n判断以上语句是否正确', '对*错', '错', '标签的 for 属性中的值应当与相关控件的 id 属性值一定要相同'),
(149, 'HTML1', '判断题', 5, '可以使用&ltimg&gt标签来插入图片', '对*错', '对', '在网页的制作中为使网页炫丽美观，肯定是缺少不了图片，可以使用&ltimg&gt标签来插入图片，图像可以是GIF，PNG，JPEG格式的图像文件。'),
(150, 'HTML1', '判断题', 5, 'src是标识图像的位置的元素', '对*错', '对', '正确，在为网页中插入图片时src是标识图像的位置的元素'),
(151, 'HTML1', '判断题', 5, 'action 不属于表单标签', '对*错', '错', 'action ：浏览者输入的数据被传送到的地方,比如一个PHP页面(save.php)，属于表单标签。'),
(152, 'HTML1', '判断题', 5, '&lttextarea&gt&lt/textarea&gt控制多行文本输入', '对*错', '对', '当用户需要在表单中输入大段文字时，需要用到文本输入域。在&lttextarea&gt&lt/textarea&gt标签之间可以输入默认值大小。'),
(153, 'HTML1', '判断题', 5, '&ltselect&gt标签中设置multiple="multiple"可以实现多选功能', '对*错', '对', '正确。在&ltselect&gt标签中设置multiple="multiple"属性，就可以实现多选功能。'),
(154, 'HTML2', '判断题', 5, '#stress是ID选择器', '对*错', '对', ''),
(155, 'HTML2', '判断题', 5, '.经纬是类选择器', '对*错', '错', ''),
(156, 'HTML2', '判断题', 5, '&gt;作用于元素的所有后代', '对*错', '错', ''),
(157, 'HTML2', '判断题', 5, 'h1,span{color:red;}相当于h1{color:red;}span{color:red;}', '对*错', '对', ''),
(158, 'HTML2', '判断题', 5, 'CSS全称为“层叠样式表 (Cascading Style Sheets)”', '对*错', '对', ''),
(159, 'HTML2', '判断题', 5, 'CSS样式由选择符和声明组成', '对*错', '对', ''),
(160, 'HTML2', '判断题', 5, '属性和值之间用“；”分隔', '对*错', '错', ''),
(161, 'HTML2', '判断题', 5, 'CSS样式文件以“.css”为扩展名', '对*错', '对', ''),
(162, 'HTML2', '判断题', 5, '外部式CSS样式文件名可以写成“经纬.css”', '对*错', '错', ''),
(163, 'HTML2', '判断题', 5, 'text-align:center表示字体居中显示', '对*错', '对', ''),
(164, 'HTML2', '判断题', 5, 'font-size:12px表示字体宽高为12cm', '对*错', '错', 'fon-size：12px表示字体为12像素'),
(165, 'HTML2', '判断题', 5, 'rgb(0,0,0)表示白色', '对*错', '错', 'rgb(0,0,0)表示黑色，rgb(255,255,255)表示白色'),
(166, 'HTML2', '判断题', 5, '#FFFFFF表示白色', '对*错', '对', ''),
(167, 'HTML1', '单选题', 5, '下列哪个是为文本框设置默认值()         ', 'A、text*B、name*C、value*D、password', 'C、value', ''),
(168, 'HTML2', '判断题', 5, 'font-weight的bold属性比bolder属性设置的字体细', '对*错', '对', ''),
(169, 'HTML2', '判断题', 5, '设置字体颜色的属性为font-color', '对*错', '错', '字体颜色设置属性为color'),
(170, 'HTML2', '判断题', 5, 'css样式的继承是子元素继承父元素', '对*错', '对', ''),
(171, 'HTML2', '判断题', 5, 'id的权重比class的权重低', '对*错', '错', 'id的权重比class的权重高，排序为内联样式&gtID&gt类&gt元素（伪元素）'),
(172, 'HTML2', '判断题', 5, '内联样式的权重最低', '对*错', '错', '权重排序为内联样式&gtID&gt类&gt元素（伪元素）'),
(173, 'HTML2', '判断题', 5, '文字行间距的设置方式是letter-spacing：50', '对*错', '错', ''),
(174, 'HTML3', '判断题', 5, 'padding是外填充', '对*错', '错', 'margin是外填充，padding是内填充。'),
(175, 'HTML3', '判断题', 5, 'margin 属性接受任何长度单位', '对*错', '对', 'margin 属性接受任何长度单位，可以是像素、英寸、毫米或 em。'),
(176, 'HTML3', '判断题', 5, 'border-color是对边框颜色样式的设置', '对*错', '对', 'border-color是对颜色的设置，border-style是对边框样式的设置'),
(177, 'HTML3', '判断题', 5, 'margin:10px 15px 20px 25px;代表上边距为10px，下边距是15px，左边距是20px，右边距是25px', '对*错', '错', 'margin后的四个参数值顺序是上右下左。'),
(178, 'HTML3', '判断题', 5, '用position:fixed;定义后，无论鼠标如何滑动，元素位置固定不动', '对*错', '对', 'fixed：表示固定定位，与absolute定位类型类似，但它的相对移动的坐标是视图（屏幕内的网页窗口）本身。由于视图本身是固定的，它不会随浏览器窗口的滚动条滚动而变化'),
(179, 'HTML1', '单选题', 5, '下列哪些表示多行输入域的行数()          ', 'A、cols*B、text*C、rows*D、textarea', 'C、rows', 'cols ：多行输入域的列数 rows ：多行输入域的行数。\n      在&lttextarea&gt&lt/textarea&gt标签之间可以输入默认值。\n      text:文本输入域'),
(180, 'HTML3', '判断题', 5, 'margin-left:-30px;是错误定义', '对*错', '错', '该定义是正确的，定义之后，元素相对于当前位置向左移动'),
(181, 'HTML3', '判断题', 5, '可以给&ltspan&gt定义宽高', '对*错', '错', '&ltspan&gt是内联元素，对内联元素设置宽高是无效的'),
(182, 'HTML3', '判断题', 5, '盒模型的宽度即为样式表里定义的宽度', '对*错', '错', '元素实际宽度（盒子的宽度）=左边界+左边框+左填充+内容宽度+右填充+右边框+右边界。'),
(183, 'HTML1', '单选题', 5, '下列哪个选项可以控制默认选项()          ', 'A、value*B、radio*C、name*D、checked', 'D、checked', 'chected可以控制默认选项\n      radio控制单选框 \n      value提交数据到服务器的值（后台程序PHP使用）\n      name为控件命名，以备后台程序 ASP、PHP 使用'),
(185, 'HTML3', '判断题', 5, 'css布局模型包括流动模型和镶嵌模型两种', '对*错', '错', 'css布局模型有三种，分别是1、流动模型（Flow）2、浮动模型 (Float) 3、层模型（Layer）'),
(186, 'HTML1', '单选题', 5, '下列哪个选项可以控制下拉列表框()          ', 'A、multiple*B、value*C、password*D、text', 'A、multiple', '在&ltselect&gt标签中设置multiple="multiple"属性，就可以实现多选功能\n      value是为文本输入框设置默认值\n      text是文本输入域'),
(187, 'HTML3', '判断题', 5, '需要给块状元素设置宽度，否则相当于没有定义改元素', '对*错', '错', '在默认状态下，块状元素的宽度都为100%。'),
(188, 'HTML3', '判断题', 5, 'padding，border，margin的缩写方法不一样', '对*错', '错', ''),
(189, 'HTML1', '单选题', 5, '将type值设置为下列哪个时，按钮有提交作用()     ', 'A.text*B.submit*C.reset*D.label', 'B.submit', 'text是文本输入框   submit按钮有提交作用\n      reset控制重置按钮  lable是标题标签不是type值类型的'),
(190, 'HTML3', '判断题', 5, '黑色的颜色值为#fff', '对*错', '错', ''),
(191, 'HTML3', '判断题', 5, '元素分为行内元素和块状元素', '对*错', '对', ''),
(192, 'HTML3', '判断题', 5, '定宽高和不定宽高的块状元素用同样的方法水平居中', '对*错', '错', '方法不相同，定宽高块状元素的用margin：auto。不定宽高则有很多种方法。\n'),
(193, 'HTML3', '判断题', 5, '这种说法对吗？通过给父元素设置 float，然后给父元素设置 position:relative 和 left:50%，子元素设置 position:relative 和 left: -50% 来实现水平居中', '对*错', '对', ''),
(194, 'HTML3', '判断题', 5, '单行文本垂直居中可以用line-height属性', '对*错', '对', ''),
(195, 'HTML3', '判断题', 5, 'html: &ltp&gtThis is the first p&lt/p&gt  css:.test{height:30px;line-height:30px;}请问这样可以实现段落文本的垂直居中吗？', '对*错', '对', ''),
(196, 'HTML3', '判断题', 5, '单位em的大小是个固定值', '对*错', '错', 'em的大小跟设置的font-size有关系\n'),
(197, 'HTML1', '单选题', 5, '下列哪个可以描述重置按钮()          ', 'A.value*B.reset*C.password*D.input', 'B.reset', '当type值设置为reset时，按钮才有重置作用\n      value：按钮上显示的文字\n      password：控制用户输入框为密码输入框\n      input控制用户输入'),
(198, 'HTML3', '判断题', 5, 'rgb(255,255,255) 与 #fff不是同一个颜色', '对*错', '错', '是同一个颜色，白色'),
(199, 'HTML3', '判断题', 5, '（1）position : absolute （2） float : left 或 float:right   只要html代码中出现以上两句之一，元素的display显示类型就会自动变为以 display:inline-block（块状元素）的方式显示（）', '对*错', '对', ''),
(200, 'HTML1', '单选题', 5, '下列哪个可以设置输入框为文本输入框()         ', 'A.name*B.value*C.text*D.password', 'C.text', '当type="text"时，输入框为文本输入框;\n       当type="password"时, 输入框为密码输入框。\n       name：为文本框命名，以备后台程序ASP 、PHP使用。\n       value：为文本输入框设置默认值。(一般起到提示作用)'),
(202, 'HTML1', '单选题', 5, '下列哪个可以用来设置复选框()          ', 'A.value*B.radio*C.name*D.checkbox', 'D.checkbox', '解析：当 type="radio" 时，控件为单选框\r\n      当 type="checkbox" 时，控件为复选框\r\n      value：提交数据到服务器的值（后台程序PHP使用）\r\n      name：为控件命名，以备后台程序 ASP、PHP 使用         '),
(203, 'HTML1', '单选题', 5, '以下哪个可以控制密码输入()          ', 'A.password*B.value*C.reset*D.text', 'A.password', '解析：value是为文本输入框设置默认值\r\n      text是文本输入域\r\n      password控制用户输入框为密码输入框\r\n      reset控制重置按钮         '),
(205, 'HTML2', '单选题', 5, '要想把p标签内的文字变为红色，以下哪行代码是正确的?()          ', 'A.p{background-color:red;}*B.p{font:red;}*C.p{color:red;}*D.p{collor:red;}', 'C.p{color:red;}', '略         '),
(206, 'HTML2', '单选题', 5, '以下哪个不是伪类选择符?()        ', 'A.:before*B.:after*C.:hover*D.:mobble', 'D.:mobble', '略          '),
(207, 'HTML2', '单选题', 5, '这行CSS代码：.food&gt;li{border:1px solid red;}是什么意思?()          ', 'A.会使class名为food下的子元素li加入红色虚线边框*B.会使class名为food下的子元素li加入红色实线边框*C.会使class名为food下的子元素li内的文字变为红色*D.以上都不是 ', 'B.会使class名为food下的子元素li加入红色实线边框', '略          '),
(208, 'HTML2', '单选题', 5, '&lt;p&gt;送分了，送分了&lt;/p&gt;如何使这行代码字体变粗          ', 'A.p{font-weight:bold;}*B.p{font-size:20px;}*C.p{font-weight:lighter;}*D.p{text-align:center;}', 'A.p{font-weight:bold;}', '解析：\r\n    B使字体变为20px大；\r\n    C使字体变细；\r\n    D使p内字体居中；          '),
(209, 'HTML1', '简答题', 5, '请描述你知道的表单标签极其相应的使用形式或作用', '', '&ltform&gt*action*method', '1.&ltform&gt ：&ltform&gt标签是成对出现的，以&ltform&gt开始，以&lt/form&gt结束。\r\n2.action ：浏览者输入的数据被传送到的地方,比如一个PHP页面(save.php)。\r\n3.method ： 数据传送的方式（get/post）。'),
(210, 'HTML2', '单选题', 5, '三种CSS样式代码优先级为?()          ', 'A.内联式>嵌入式>外部式*B.内嵌式>嵌入式>外联式*C.内联式>外部式>嵌入式*D.内嵌式>外联式>嵌入式', 'A.内联式>嵌入式>外部式', '略          '),
(211, 'HTML1', '简答题', 5, '请简述需要在网页中插入图片时可能用到的属性', '', 'src：标识图像的位置*alt：指定图像的描述性文本，当图像不可见时（下载不成功时），可看到该属性指定的文本*title：提供在图像可见时对图像的描述(鼠标滑过图片时显示的文本)*图像可以是GIF，PNG，JPEG格式的图像文件', '1、src：标识图像的位置；\r\n2、alt：指定图像的描述性文本，当图像不可见时（下载不成功时），可看到该属性指定的文本；\r\n3、title：提供在图像可见时对图像的描述(鼠标滑过图片时显示的文本)；\r\n4、图像可以是GIF，PNG，JPEG格式的图像文件。'),
(212, 'HTML2', '单选题', 5, '&lt;style type="text/css"&gt;\r\nspan{\r\ncolor:red;\r\n}\r\n&lt;/style&gt;\r\n以上代码属于哪种CSS样式？（）          ', 'A.内联式*B.内嵌式*C.嵌入式*D.外部式', 'C.嵌入式', '略          '),
(213, 'HTML2', '单选题', 5, '继承一般是（）          ', 'A.父元素应用子元素的样式*B.子元素应用父元素的样式*C.同级元素的相互应用*D.以上都可以', 'B.子元素应用父元素的样式', '解析：继承就是子标签继承了上级标签（父标签）的CSS样式的属性          '),
(214, 'HTML2', '单选题', 5, '设置字体用到的标签是（）          ', 'A.font-weight*B.text-align*C.font-size*D.font-family', 'D.font-family', '解析：设置字体样式用font-family          '),
(215, 'HTML2', '单选题', 5, '下列哪个css属性可以改变样式表的字体颜色（）          ', 'A.text-color:*B.fgcolor*C.text-color=*D.color:', 'D.color:', '解析：设置字体颜色直接用color：          '),
(216, 'HTML1', '多选题', 5, '下列哪些必须放在&ltform&gt&lt/form&gt标签之间用户的信息才能提交到服务器上()        ', 'A、按钮*B、单选框*C、label标签*D、文本域', 'A、按钮B、单选框D、文本域', '所有表单控件（文本框、文本域、按钮、单选框、复选框等）都必须放在 &ltform&gt&lt/form&gt 标签之间（否则用户输入的信息提交不到服务器上）&ltlabel&gt&lt/label&gt是一对独立标签，不属于表单控件.         '),
(217, 'HTML2', '单选题', 5, '下列哪个选项的 CSS 语法是正确的？（）', 'A.body:color=black*B.{body:color=black(body}*C.body {color: black;}*D.{body;color:black}', 'C.body {color: black;}', '解析：标签放在大括号外面，属性包含在大括号内          '),
(218, 'HTML1', '多选题', 5, '下列哪些和下拉列表框有关() ', 'A、select*B、label*C、option*D、checked', 'A、selectC、option', '下拉列表框是由&ltselect&gt和&ltoption&gt一起合作完成      '),
(219, 'HTML2', '单选题', 5, '哪个 CSS 属性可控制字体的尺寸？（）          ', 'A.font-size*B.text-style*C.font-style*D.text-size', 'A.font-size', '解析：表示字体的尺寸属性为font-size，单位为px          '),
(220, 'HTML2', '简答题', 5, '类选择器和ID选择器的区别？', '', '应用于*任何元素*选择器*使用一次*使用多次*一个元素*同时设置*多个样式', '相同点：可以应用于任何元素\r\n不同点：\r\n1、ID选择器只能在文档中使用一次。与类选择器不同，在一个HTML文档中，ID选择器只能使用一次，而且仅一次。而类选择器可以使用多次。\r\n2、可以使用类选择器词列表方法为一个元素同时设置多个样式。我们可以为一个元素同时设多个样式，但只可以用类选择器的方法实现，ID选择器是不可以的（不能使用 ID 词列表）。'),
(222, 'HTML1', '多选题', 5, '以下哪些是表单标签()        ', 'A.form*B.action*C.menthod*D.src', 'A.formC.menthodD.src', '1.&ltform&gt ：&ltform&gt标签是成对出现,以&ltform&gt开始，以&lt/form&gt结束。\r\n2.action ：浏览者输入的数据被传送到的地方,比如一个PHP页面(save.php)。\r\n3.method ： 数据传送的方式（get/post）。\r\n４.src：是标识图像的位置的元素。         '),
(223, 'HTML2', '单选题', 5, '控制字体下划线的语句是()          ', 'A.text-decoration:line*B.text-decoration:underline*C.text-decoration=line*D.text-decoration=underline', 'B.text-decoration:underline', '解析：给字体加下划线的语句是text-decoration：underline         '),
(224, 'HTML2', '简答题', 5, '什么是选择器？', '', '选择器*css*样式*声明*由两部分组成*选择器*{*样式*;}*', '每一条css样式声明（定义）由两部分组成，形式如下：\n   选择器{\n      样式;\n        }\n   在{}之前的部分就是“选择器”，“选择器”指明了{}中的“样式”的作用对象，也就是“样式”作用于网页中的哪些元素。比如“body”就是选择器。'),
(225, 'HTML2', '单选题', 5, '以下css样式中权重最重的是()          ', 'A.内联样式*B.ID选择器*C.class类选择器*D.类型选择器和伪元素选择器', 'A.内联样式', '解析：权重大小排序为：内联样式&gtID&gt类&gt元素（伪元素）          '),
(226, 'HTML1', '多选题', 5, '以下哪些可以控制多行文本输入的大小()          ', 'A.cols*B.label*C.rows*D.value', 'A.colsC.rows', 'cols ：多行输入域的列数。rows ：多行输入域的行数。lable标题标签。value，为文本输入框设置默认值。(一般起到提示作用          '),
(228, 'HTML1', '多选题', 5, '以下哪些是插入图片时用到的属性()          ', 'A.src*B.atl*C.value*D.title', 'A.srcC.valueD.title', 'src：标识图像的位置；\r\nalt：指定图像的描述性文本，当图像不可见时（下载不成功时），可看到该属性指定的文本；\r\ntitle：提供在图像可见时对图像的描述(鼠标滑过图片时显示的文本)；\r\nvalue：提交数据到服务器的值；          '),
(229, 'HTML2', '简答题', 5, 'CSS代码外联，内联，嵌入式的优先级(从大到小排序)', '', '内联&gt嵌入式&gt外联', '内联&gt嵌入式&gt外联'),
(230, 'HTML3', '单选题', 5, '如果想要将内联元素转为块状元素需要下列哪段代码？()          ', 'A.display:block;*B.display:bolck;*C.display:inline;*D.display:inlien;', 'A.display:block;', '略          '),
(231, 'HTML3', '单选题', 5, '如果我想定义一个宽度为1、颜色为红色的实线边框，下列哪个定义是正确的？()          ', 'A.border:1px solid red;*B.border:1px dotted red;*C.border:1px dashed red;*D.border:1px dashed blue;', 'A.border:1px solid red;', '解析：B是红色点线边框、C是红色虚线边框、D是蓝色虚线边框！          '),
(232, 'HTML2', '简答题', 5, '元素（伪元素），类，ID和内联样式的权重排序（从大到小排序）', '', '内联样式&gtID&gt类&gt元素（伪元素）', '内联样式&gtID&gt类&gt元素（伪元素）'),
(233, 'HTML3', '单选题', 5, '&ltinput&gt是什么元素？()', 'A.块状元素*B.内联元素*C.内联块状元素', 'C.内联块状元素', '解析：&ltinput&gt是内联块状元素，当一个元素被设置position:absolute;或float:left;或float:right;时会自动变为内联块状元素\r\n         '),
(234, 'HTML3', '单选题', 5, '下列选项哪个是内联元素的特点？()          ', 'A.可以定义宽高*B.和其他元素不在同一行*C.元素的宽度就是它包含的文字或图片的宽度，不可改变*D.不可以设置左右边距.', 'C.元素的宽度就是它包含的文字或图片的宽度，不可改变', '解析：内联元素和其他元素都在一行上；元素的高度、宽度及顶部和底部边距不可设置；元素的宽度就是它包含的文字或图片的宽度，不可改变。          '),
(235, 'HTML2', '多选题', 5, '以下哪些css语句可以表示颜色属性？          ', 'A.rgba（0,0,0,0.2)*B.rgb（0，0,0)*C.color:black*D.color=black', 'A.rgba（0,0,0,0.2)B.rgb（0，0,0)C.color:black', '颜色可用rgb,rgba或者颜色的英文单词表示，注意属性和标签不能用等号          '),
(236, 'HTML3', '单选题', 5, '一个名为boxx2的div想要相对于另一个名为boxx1的div设置绝对定位该如何设置？()          ', 'A..boxx1{position:relative;}.boxx2{position:relative;}*B..boxx1{position:absolute;}.boxx2{position:absolute;}*C..boxx1{position:relative;}.boxx2{position:absolute;}*D..boxx1{position:absolute;}.boxx2{position:relative;}', 'C..boxx1{position:relative;}.boxx2{position:absolute;}', '解析：boxx2想要相对于boxx1的div设置绝对定位，说明boxx1为父元素，只要给boxx1设置相对定位，给boxx2设置绝对定位，boxx2的绝对定位就是相对于boxx1定位的。          '),
(237, 'HTML3', '单选题', 5, '如果想让ul列表横向排列怎么设置？          ', 'A.ul{float:left;}*B.ul li{float:left;}*C.ul{float:right;}*D.ul li{float:right;}', 'B.ul li{float:left;}', '解析：float:left为向左浮动，对ul设置向左浮动或向右浮动是让整个列表向左向右浮动，所以应该对每个li设置向左或向右浮动，如果设置向右浮动则相对最后一个li进行浮动，整个列表顺序是颠倒的，所以应该设置向左浮动。          '),
(238, 'HTML2', '多选题', 5, 'text-align的属性值有()         ', 'A.center*B.left*C.right*D.middle', 'A.centerB.leftC.right', 'text-align没有middle属性         '),
(239, 'HTML3', '单选题', 5, '哪个 HTML 属性可用来定义内联样式？          ', 'A.font*B.class*C.styles*D.style', 'D.style', '解析：class用于给元素命名，C是错误拼写          '),
(240, 'HTML2', '多选题', 5, '设置中文和英文间隔的属性是哪两个()         ', 'A.letter-spacing*B.data-spacing*C.spacing*D.word-spacing', 'A.letter-spacingD.word-spacing', '中文间隔是letter-spacing，英文间隔是word-spacing          '),
(242, 'HTML3', '单选题', 5, '关于margin：10px 5px 20px 15px;哪个顺序是正确的（）          ', 'A.左,右,上,下*B.上,下,左,右*C.上,右,下,左*D.右,下,左,上', 'C.上,右,下,左', '解析：四个值的顺序为上、右、下、左。          '),
(243, 'HTML3', '单选题', 5, 'margin：auto；的作用是（）         ', 'A：水平居中所有元素*B：只水平居中文本和图片*C.水平居中定宽块状元素*D.没有什么用处的代码', 'C.水平居中定宽块状元素', '略          '),
(244, 'HTML2', '多选题', 5, '以下哪些语句表示对字体的粗体进行设置()         ', 'A.font-weight：bold*B.font-weight：light*C.font-weight：bolder*D.font-wei：lighter', 'A.font-weight：boldC.font-weight：bolder', 'font-weight的bold和bolder是粗体属性，而light和lighter是字体变细的属性          '),
(245, 'HTML3', '单选题', 5, 'a标签是什么元素（）          ', 'A：块状元素*B：行内元素*C：不定宽块状元素*D：定宽块状元素\r\n', 'B：行内元素', '略          '),
(246, 'HTML3', '简答题', 5, '层模型的三种定位形式是什么？', '', '绝对定位(position: absolute)*相对定位(position: relative)*固定定位(position: fixed)', '（1）绝对定位(position: absolute)  （2）相对定位(position: relative)  （3）固定定位(position: fixed)'),
(247, 'HTML3', '简答题', 5, '盒子的实际宽度怎么计算？', '', '一个元素实际宽度（盒子的宽度）*左边界*左边框*左填充*内容宽度*右填充*右边框*右边界', '一个元素实际宽度（盒子的宽度）=左边界+左边框+左填充+内容宽度+右填充+右边框+右边界。'),
(248, 'HTML3', '单选题', 5, 'margin：10px 20px 30px；的意思是（）          ', 'A：左 右 20 上10 下30*B：上10 下20 左右30*C：左10 右20 上下30*D：左10 上下20 右30', 'A：左 右 20 上10 下30', '解析：三个值的时候分别是上、 左右、 下。 当左右距离的值相等的时候，可以缩写成三个值。         '),
(249, 'HTML2', '多选题', 5, '下列对字体设置有误的是()          ', 'A.font-family:"宋体"*B.font-family:宋体*C.font-family=宋体*D.font-family（宋体)', 'B.font-family:宋体C.font-family=宋体D.font-family（宋体)', '注意对字体设置的格式为font-family："宋体"，记得加引号          '),
(251, 'HTML3', '简答题', 5, '设置颜色值的方法，最少两种，写出代码即可', '', 'color:red;*color:rgb(133,45,200);*color:rgb(20%,33%,25%);*color:#0f397a:', '英文命令颜色 例如 color：red；\r\nrgb颜色  color：rgb（133,45,200）；或 color：rgb（20%，33%，25%）；\r\n十六进制颜色 color：#0f397a；'),
(252, 'HTML1', '单选题', 5, '&lthtml&gt&lt/html&gt是什么标签？          ', 'A.网页标签*B.头部标签*C.内容标签*D.根标签 ', 'D.根标签 ', '略          '),
(253, 'HTML3', '多选题', 5, '下面那些是网页中常用的长度单位()          ', 'A：px*B：cm*C：em*D：%', 'A：pxC：emD：%', '除了cm都是网页上常用的长度单位         '),
(254, 'HTML1', '单选题', 5, '标题标签&lth1&gt，&lth2&gt……&lth6&gt使用时有什么不同的效果？          ', 'A.字体颜色不同*B.字体大小不同*C.字体背景不同*D.字体位置不同', 'B.字体大小不同', '          '),
(255, 'HTML1', '单选题', 5, '&lt!--XXX--!&gt的作用是什么？          ', 'A.注释代码*B.存放代码*C.标记代码*D.删除代码', 'A.注释代码', '          '),
(256, 'HTML3', '多选题', 5, '下面那些颜色值是正确的()         ', 'A：#678*B：#789*C：#efg*D：#d0f', 'A：#678B：#789D：#d0f', 'C的g超出了范围          '),
(258, 'HTML3', '多选题', 5, '下面表示红色的有()          ', 'A：color：#red;*B：color：#ff0000;*C：color：rgb（100%，0,0);*D：color：红色;', 'B：color：#ff0000;*C：color：rgb（100%，0,0);', 'A和D都是错误写法，color后面可以接类似#ff00ff或者red          '),
(260, 'HTML3', '多选题', 5, '下面哪些方法可以使不定宽块状元素的水平居中()          ', 'A：加入table标签*B：设置display：inline方法*C：设置position：relative*D：使用margin：auto；', 'A：加入table标签B：设置display：inline方法C：设置position：relative', 'D是设置定宽块状元素;          '),
(261, 'HTML1', '单选题', 5, '&ampnbsp的作用是什么？          ', 'A.输入空格*B.插入图片*C.插入翻译*D.删除文字', 'A.输入空格 ', '略          '),
(262, 'HTML3', '多选题', 5, '下面哪几个是position的可选值()          ', 'A:static*B：relative*C：absolute*D：fixed', 'A:staticB：relativeC：absoluteD：fixed', '略          '),
(265, 'HTML1', '多选题', 5, '下列哪些属性可以给div命名          ', 'A.style*B.ID*C.class*D.src', 'B.IDC.class', '略         '),
(266, 'HTML1', '多选题', 5, '行内元素不能有哪些属性（）          ', 'A.行高*B.字体颜色*C.背景颜色*D.宽高', 'A.行高D.宽高', 'B和C是所有元素都可以拥有的属性          '),
(267, 'HTML1', '多选题', 5, '我们可以为&ltp&gt标签设置哪些属性（）          ', 'A.字体大小*B.字体颜色*C.背景颜色*D.字体样式', 'A.字体大小B.字体颜色C.背景颜色D.字体样式', '略          ');

-- --------------------------------------------------------

--
-- 表的结构 `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kt_user` varchar(255) DEFAULT NULL,
  `kt_id` int(11) DEFAULT NULL,
  `kt_pd` varchar(255) DEFAULT NULL,
  `ks_da` varchar(255) DEFAULT NULL,
  `kt_cs` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `transfer`
--

INSERT INTO `transfer` (`id`, `kt_user`, `kt_id`, `kt_pd`, `ks_da`, `kt_cs`) VALUES
(1, '22', 205, 'yes', 'C.p{color:red;}', 337),
(2, '22', 210, 'no', 'B.内嵌式>嵌入式>外联式', 337),
(3, '22', 217, 'yes', 'C.body {color: black;}', 337),
(4, '22', 219, 'yes', 'A.font-size', 337),
(5, '22', 225, 'yes', 'A.内联样式', 337),
(6, '22', 238, 'yes', 'A.centerB.leftC.right', 337),
(7, '22', 240, 'yes', 'A.letter-spacingD.word-spacing', 337),
(8, '22', 244, 'yes', 'A.font-weight：boldC.font-weight：bolder', 337),
(9, '22', 155, 'yes', '错', 337),
(10, '22', 156, 'yes', '错', 337),
(11, '22', 160, 'yes', '错', 337),
(12, '22', 165, 'yes', '错', 337),
(13, '22', 166, 'yes', '对', 337),
(14, '22', 224, '', '', 337),
(15, '22', 230, 'yes', 'A.display:block;', 338),
(16, '22', 231, 'yes', 'A.border:1px solid red;', 338),
(17, '22', 237, 'yes', 'B.ul li{float:left;}', 338),
(18, '22', 243, 'no', 'A：水平居中所有元素', 338),
(19, '22', 245, 'no', 'C：不定宽块状元素', 338),
(20, '22', 258, 'no', 'B：color：#ff0000;C：color：rgb（100%，0,0);', 338),
(21, '22', 260, 'no', 'A：加入table标签D：使用margin：auto；', 338),
(22, '22', 262, 'no', 'B：relativeC：absoluteD：fixed', 338),
(23, '22', 180, 'yes', '错', 338),
(24, '22', 182, 'yes', '错', 338),
(25, '22', 190, 'yes', '错', 338),
(26, '22', 193, 'yes', '对', 338),
(27, '22', 194, 'yes', '对', 338),
(28, '22', 247, '', '', 338);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `userpwd` char(32) NOT NULL,
  `userpwd1` varchar(32) NOT NULL COMMENT '密码2',
  `zsname` varchar(32) NOT NULL COMMENT '真实姓名',
  `sex` char(225) NOT NULL COMMENT '性别',
  `face` char(225) NOT NULL,
  `year` int(10) NOT NULL,
  `month` int(10) NOT NULL,
  `day` int(10) NOT NULL,
  `school` varchar(32) NOT NULL COMMENT '学校',
  `email` varchar(128) NOT NULL COMMENT '邮件',
  `qianming` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `userpwd`, `userpwd1`, `zsname`, `sex`, `face`, `year`, `month`, `day`, `school`, `email`, `qianming`) VALUES
(55, '29', 'd635eb38074c360f7f9b198bdf2c8e8c', 'd635eb38074c360f7f9b198bdf2c8e8c', '史丽佳', '女', 'face/1.jpg', 1998, 2, 2, '北华', '2843278143@qq.com', ''),
(56, '19', '4b5e1700516fc0f55888dcdf8ef937c7', '4b5e1700516fc0f55888dcdf8ef937c7', '林倩', '女', 'face/2.jpg', 1999, 1, 11, '北华大学', '2564897211@qq.com', '你好'),
(57, '22', '5493e875d35eba5d171253e01bad3767', '5493e875d35eba5d171253e01bad3767', '卢春香', '女', 'face/3.jpg', 1997, 1, 18, '北华大学', '6836892687@qq.com', '我从来没有过个性签名');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
