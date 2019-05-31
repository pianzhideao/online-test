<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>JWroom考试厅</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script> 
	$(function(){
					$('#myCarousel').carousel({interval:3000});
				})
	</script> 
</head>
<body>
	<div class="wholepage">
		<div class="wholepage_two">
			<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>   
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/225.png" alt="First slide">
					</div>
					<div class="item">
						<img src="images/222.gif" alt="Second slide">
					</div>
					<div class="item">
						<img src="images/223.gif" alt="Third slide">
					</div>
					<div class="item">
						<img src="images/224.gif" alt="Fouth slide">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<div class="logo">
				<div class="logo_left"><span class="art-font">JWroom</span><span class="art-font-t">考试系统</span></div>
				<div class="logo_menu">
					<ul>
						<a href=""><li style="background: rgba(255,255,255,0.4);border:1px solid white;border-radius: 5px;">首页</li></a>
						<a href="function.html"><li>功能</li></a>
						<a href="aboutus.html"><li>关于我们</li></a>
					</ul>
				</div>
				<div class="logo_right">
					<a href="login.php"><input type="button" name="" value="登录" id="dlzc"/></a>
					<a href="register.php"><input type="button" name="" value="注册" id="dlzc"></a>
				</div>
			</div>
            <div id="box1">
                <div id="leftbox">
                	<img src="images/7.png">
                	<div class="phone">
                		<!-- <div class="phonetop">
                			<span><p>jwroom</p></span>
                			<span>考试系统</span>
                		</div> -->
                	</div>
                	<p>不止能做好，还能做更好。</p>
                	<p id="word">在线考试系统，自动批改试卷，完整分析系统，为考生助力。</p>
                </div>
            	<div id="rightbox">
            		<div>
            			<img src="images/1.png">
            			<p>成员培训考试</p>
            			<p>考后直接出分析，方便快捷</p>
            		</div>
            		<div>
            			<img src="images/2.png">
            			<p>知识竞赛</p>
            			<p>海量题库选择，方便快捷</p>
            		</div>
            		<div>
            			<img src="images/33333.png" style="margin:30px 60px">
            			<p>试题分析</p>
            			<p>知识点全面，解析精准详细</p>
            		</div>
            		<div>
            			<img src="images/考试(3).png" style="width:100px;height:120px;margin-left:80px">
            			<p>模考练习</p>
            			<p>随时随地模考，省时省力</p>
            		</div>
            	</div>
            </div>
            <div class="box2">
            	<div class="bottomleft">
            		<span class="art1">jwroom</span>
            		<span class="art2">考试系统</span>
            		<a href="#" style="margin-left:180px">关于我们</a>
            		<a href="#" style="margin-left:180px">加入我们</a>
            		<span class="art3" style="margin-left:180px">电话：180-852-1233</span>
            		<span class="art4" style="margin-left:180px">QQ:152013515</span>
            		<span class="art5" style="margin-left:180px">地址：吉林省吉林市北华大学北校区经纬实验室</span>
            	</div>
            	<div class="bottomright">
            		<p>为梦想助力</p>
            		<a href="login.php"><input type="button" name="login" value="登录"></a>
					<a href="register.php"><input type="button" name="register" value="注册"></a>
					<a href="admin/index.php"><input type="button" name="login" value="管理员登录"></a>
            	</div>
            	<div class="bottom">
            		<p>Copyright © 2017 吉林北华经纬工作室 京ICP备14020947</p>
            	</div>
            </div>
            <script type="text/javascript" src="js/animate.js"></script>
		</div>
	</div>
</body>
</html>