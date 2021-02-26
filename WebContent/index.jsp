<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
		<title>招新网站</title>
		<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="./js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<link href="./css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		 <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="./js/move-top.js"></script>
		<script type="text/javascript" src="./js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<!----start-top-nav-script---->
		<script>
			window.onload=function(){

        function $(id){return document.getElementById(id);}
       	  $("scroll").onclick=function(){
       	  	$("mask").style.display="block";
            $("box-mask").style.display="block";
       	  }
       	  $("close_all").onclick=function(){
       	  	$("mask").style.display="none";
            $("box-mask").style.display="none";
       	  }



			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});}
		</script>
		<!----//End-top-nav-script---->
	</head>
	<body>
		<!----- start-header---->
		<div id="mask"></div>
		<div id="box-mask">
        <span id="close_all">×</span>
        <div class="write"><img src="images/tiao.png"><p>填写报名信息</p><img src="images/tiao.png"></div>
         <form action="register.do" method="post" onSubmit="return pan()">
        <div id="content">
            <div id="con1"><p>姓名：</p><input name="username" type="text" id="in1" onchange="javascript:if(!/^[\u4e00-\u9fa5]+$/gi.test(this.value)){alert('姓名含有非汉字字符');this.value='';}"></div>
            <div id="con3"><p>QQ：</p><input name="qq" type="text"   onKeyUp="inp(this)" id="in2"></div>
            <div id="con2"><p>专业班级：</p><input name="profession" type="text" id="in3"></div>
            <div id="con4"><p>联系方式：</p><input name="phone" type="text" onKeyUp="inp(this)" id="in4"></div>
            <div id="con5"><p>报名方向:</p><select name="direction">
                <option>一组：平台构架及数据分析</option>
                <option>二组：数据挖掘与数据分析
                </option>
                <option>三组：可视化组</option>
            </select></div>
            <input type="hidden" name="team" value="2">
            <button type="submit" id="btn">提交</button>
        </div>
        </form>
	</div>

			<div id="home" class="header">
					<div class="top-header">
						<div class="container">
						<div class="logo">
							<a href="#" class="logo-link">BIGDATA</a>
						</div>
						<!----start-top-nav---->
						 <nav class="top-nav">
							<ul class="top-nav">
								<li class="active"><a href="#home" class="scroll">科研首页 </a></li>
								<li class="page-scroll"><a href="#work" class="scroll">招新页面</a></li>
								<li class="page-scroll"><a href="#team" class="scroll">导师资料</a></li>
								<li class="download"><a href="userInfo.jsp">资料下载</a></li>
								<li class="contatct-active" class="page-scroll" id="scroll"><a href="#contact" class="scroll" id="scroll">报名加入</a></li>
							</ul>
							<a href="#" id="pull"><img src="./images/nav-icon.png" title="menu" /></a>
						</nav>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!----- //End-header---->
			<!----banner---->
			<div class="banner text-center">
				<div class="container">
					<div class="banner-info">
						<h1><span>医学数据挖掘与大数据</span>分析科研团队</h1>
						<p>Medical Data Mining and Big Data Analysis Research Team .</p>
						<label class="page-scroll"><a class="big-btn scroll" href="#work1"><span> </span></a></label>
					</div>
				</div>
			</div>
			<!--//banner---->
			<!---work-->
			<div id="work" class="work">
				<div id="work1" class="container">
					<div class="head-one text-center">
						<h2>了解我们</h2>
						<span> </span>
						<p>路的尽头，仍然是路，只要你愿意走，当一个人，看清自己人生的航行路线，是多么迂回多么曲折，要依靠自己的良心作为领航员，只有去追求完美，才会珍惜有限年华;才会更加热爱生活，才会深深地眷恋这个世界。</p>
					</div>
					<!---works-->
					<!---images-hover-effects-->
					<script src="./js/jquery.hoverGrid.js"></script>
					<link rel="stylesheet" type="text/css" href="./css/jquery.hoverGrid.css">
					<script type="text/javascript">
					    $(document).ready(function() {
					      $('#whatever').hoverGrid();
					    });
					</script>
					<!---images-hover-effects-->
					<div class="works">
							<div id="whatever">
								<div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/big.jpg" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>数据采集组</h2>

								            <p>学习Hadoop架构，Python数据采集</p>
								        </div>
								    </div>  
							    </div>  
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/bg2.png" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>数据挖掘与分析组
												</h2>
								            <p>主学最常用的R语言和操作性极强的pathon语言</p>
								        </div>
								    </div>  
							    </div>    
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/aa1.jpg" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>
												可视化展示组</h2>

								            <p>学习HTML5前台开发或JavaWeb后端开发</p>
								        </div>
								    </div>  
							    </div>    
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/bg3.JPG" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>数据获取与处理</h2>
								            <p>Python数据采集即用Python语言编程出一种能够获取网页内容的程序，也就是网络爬虫，
												深入之后可以用来做web后端、数据挖掘与分析等。</p>


								        </div>
								    </div>  
							    </div>    
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/big-data7.jpg" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>数据可视化</h2>
								            <p>本组主要先学习python，学会掌握基本的编程技术，再进行R语言的精确学习，进行数据挖掘和分析，可视化。
												掌握了解大数据挖掘和分析能力。</p>
								        </div>
								    </div>  
							    </div>    
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/bg6.JPG" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>web 前端开发</h2>
								            <p>本组主要学习网站的设计与制作，为二组分析出来的数据结果提供一个可视化展示平台。组内分为UI设计、前端开发及主要学习HTML5、CSS、JS、Ajax等知识
												</p>
								        </div>
								    </div>  
							    </div>    
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/aa2.jpg" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>平台架构</h2>
								            <p>Hadoop是一个开源框架，充分利用集群的威力高速运算和存储，其中HDFS为海量的数据提供了存储，
												Hadoop集群中可以存储和处理上亿的数据.

											</p>
								        </div>
								    </div>  
							    </div>    
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/bg1.jpg" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>数据分析与挖掘</h2>
								            <p>
												R是集统计分析、绘图和数据挖掘于一身的多功能软件。其功能包括数据存储和数据处理；
												完整连贯的统计分析工具;可操纵数据的
												输入和输出。


											</p>
								        </div>
								    </div>  
							    </div>    
							    <div class="col-md-4 work-grid">
								    <div class="item">
								        <img  src="./images/big-data6.png" title="name" />
								        <div class="caption" style="display: none;">
								            <h2>web 后端开发</h2>
								            <p>后台主要涉及JavaWeb编程，需要学习java语言、SSH框架、MySQL数据库等知识。
												</p>
								        </div>
								    </div>  
							    </div>  
							    <div class="clearfix"> </div>               
							</div>
					</div>
					 <div class="clearfix"> </div>   
					</div>
				</div>
					<!---//works-->
					<!---team-->
					<div id="team" class="team">
						<div class="container">
							<div class="head-one text-center team-head">
								<h2><a href="Bigdata指导老师成就.html" target="_blank">教师团队</a></h2>
								<span> </span>
								<p>我们的团队中有四位优秀的指导老师，分别在数据挖掘、大数据分析、数据图像处理和人工智能等多方面有深入研究，可以对学生进行各个方向的引导与帮助。</p>
							</div>	
							<!----team-members---->
							<div class="team-members">
								<div class="col-md-3">
									<div class="team-member text-center">
										<img class="t-pic" src="./images/t1.jpg" title="name" />
										<h3>指导老师：赵志升</h3>
										<span>研究方向：数据挖掘与大数据分析</span>
										<ul class="t-social unstyled-list list-inline">
											
											<div class="clearfix"> </div>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="team-member text-center">
										<img class="t-pic" src="./images/t2.jpg" title="name" />
										<h3>指导老师：李静</h3>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;研究方向：大数据分析，人工智能&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
										<ul class="t-social unstyled-list list-inline">
											
											<div class="clearfix"> </div>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="team-member text-center">
										<img class="t-pic" src="./images/teacher.png" title="name" />
										<h3>指导老师：梁俊花</h3>
										<span>研究方向：数据图像处理，人工智能</span>
										<ul class="t-social unstyled-list list-inline">
											
											<div class="clearfix"> </div>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="team-member text-center">
										<img class="t-pic" src="./images/t4.jpg" title="name" />
										<h3>指导老师：刘洋</h3>
										<span>研究方向：数据图像处理，人工智能</span>
										<ul class="t-social unstyled-list list-inline">
											
											<div class="clearfix"> </div>
										</ul>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<!----//team-members---->
						</div>
					</div>
					<!---//team-->
					<!---Contact-->
					<div class="feature">
						<div class="container">
							<div class="feature_top">
								<div class="col-md-6 feature_left">
									<span></span>
								</div>
								<div class="col-md-6 feature_right">
								<ul class="service_grid feature_lst">
				   	   			  <i class="f1" style="position: relative;"><a href="team/bigdata-1.html" ></a></i>
				   	   			  <li class="desc1">
				   	   				<h4><a href="team/bigdata-3.html"><img src="images/go.jpg" width="30px" height="30px"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="team/bigdata-1.html">一组</a></h4>
				   	   				<p><a href="team/bigdata-1.html">平台架构以及数据采集组</a></p>
				   	   			  </li>
				   	   			 <div class="clearfix"> </div>
				   	   		    </ul>
				   	   		    <ul class="service_grid feature_lst">
				   	   			  <i class="f1"> </i>
				   	   			  <li class="desc1">
				   	   				<h4><a href="team/bigdata-3.html"><img src="images/go.jpg" width="30px" height="30px"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="team/bigdata-2.html">二组</a></h4>
				   	   				<p><a href="team/bigdata-2.html">数据挖掘与数据分析组</a></p>
				   	   			  </li>
				   	   			 <div class="clearfix"> </div>
				   	   		    </ul>
				   	   		     <ul class="service_grid feature_lst">
				   	   			  <i class="f1"> </i>
				   	   			  <li class="desc1">
				   	   				<h4><a href="team/bigdata3.html"><img src="images/go.jpg" width="30px" height="30px"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="team/bigdata-3.html">三组</a></h4>
				   	   				<p><a href="team/bigdata-3.html">大数据可视化展示组</a></p>
				   	   				
				   	   			  </li>
				   	   			 <div class="clearfix"> </div>
				   	   		    </ul>
				   	   		    
								</div>
							</div>
						</div>
					</div>
					
					<!---//Contact--->
					<!---footer-->
					<div class="footer">
						<div class="container">
							
								<p><span>版权所有© </span>2017-2018 河北北方学院大数据科研室 		地址:张家口河北北方学院东校区中厅503 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮编:075000
									电话:15731337889 邮箱:1109248830@qq.com </p>
							<div class="saoma"><img src="images/join_03.png" style="width: 80px;height:80px;"><p class="sao">扫码加入我们</p></div>
							<!--<div class="footer-right">
								<p> <a href="#"></a></p>
								<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
									<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
							</div><-->
							<div class="clearfix"></div>
						</div>
					</div>
					<!---//footer--->
				</div>
			</div>
			
	</body>
</html>

