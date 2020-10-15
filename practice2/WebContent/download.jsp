<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<title></title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,intal-scale=1.0">
		<title></title>
		<link href="code/css/bootstrap.min.css" rel="stylesheet">
		<link href="code/css/error.css" rel="stylesheet">
		<link href="code/css/download.css" rel="stylesheet">
		<script language="Javascript" src="code/js/error.js"></script>
		<script src="code/js/jquery.min.js"></script>
		<script src="code/js/bootstrap.min.js"></script>
		
	</head>
	<body>
		<video preload autoplay loop muted>  
    <source src="img/lux.webm" type="video/mp4">
</video>
		<nav class="navbar navbar-inverse navbar-fixed-top">
	 	<div class="navbar-header">
	 		<button type="button" class="navbar-toggle" >
	 			<span class="icon-bar"></span>
	 			<span class="icon-bar"></span>
	 			<span class="icon-bar"></span>
	 		</button>
	 		<div class="navbar-brand brand-img" href="#new_file.html">
	 			<img src="img/logo.png" width="100" class="img-responsive" />
	 		</div>
	 	</div>
	 	<div class="collapse navbar-collapse">
	 		<ul class="nav navbar-nav ">
	 			<li><a href="main.jsp">主页</a></li>
	 			<li><a href="laowanjia.html"><span class="glyphicon glyphicon-search"></span>联系</a></li>
	 			
	 			
	 		</ul>
	 		
	 	</div>
	 		
	 </nav>
	 <div class="container">
	 	<c:forEach items="${downloadList} }" var="download">
	 		<ul>
	 			<li>
	 				<p>${download.name}</p>
	 				<div class="pic-txt">
	 					<img class="img-area" src="${download.image }">
	 					<p class="txt-area">
	 						<span>${download.description}</span>
	 						<span class="tit-sub">
	 							<i class="space">时间：${download.time }</i>
	 							<i class="space">大小：${download.sizeStr }</i>
	 						</span>
	 					</p>
	 				</div>
	 				<a class="dl-btn" href="download.do?id=${download.id }" title="点击下载">下载</a>
	 			</li>
	 		</ul>
	 	</c:forEach>
	 	
	 </div>
	 	</div>
	 </div>
	 <footer class="container-fluid text-center">
				<a href="#myPage" title="To Top">
					<span class="glyphicon glyphicon-chevron-up"></span>
				</a>
				<div class="row">
					<div class="col-sm-5">
						<img src="img/tengxun.jpg" width="150"/>
						<img src="img/quantou.jpg" width="150"/>
					</div>
					<div class="col-sm-7" style="text-align: left;">
						<p><a href="#">腾讯互动娱乐</a> | <a href="#">服务条款</a> | <a href="#">隐私政策</a> | <a href="#">腾讯游戏招聘</a> | <a href="#">腾讯游戏客服</a> | <a href="#">游戏地图</a> | <a href="#">成长守护平台</a> | <a href="#">商务合作</a> | <a href="#">网站导航</a></p>
						<p><a href="#">腾讯公司版权所有</a></p>
						<p>COPYRIGHT © 1998 - 2018 TENCENT. ALL RIGHTS RESERVED.</p>
						<p>COPYRIGHT © 2012 Riot Games,Inc. ALL RIGHTS RESERVED.</p>
						<p>本网络游戏适合18+岁的用户使用；为了您的健康，请合理控制游戏时间。</p>
						<p><a href="#">粤网文[2017]6138-1456号</a> | <a href="#">新出网证（粤）字010号</a></p>
						<p>批准文号：新出审字[2011]310号 |文网进字[2011] 004号 | 出版物号：ISBN 978-7-89989-145-2|全国文化市场统一举报电话：12318</p>
					</div>
				</div>
			</footer>
	 <script>
	 	$("#tabNav a").click(function(e){
	 		e.preventDefault()
	 		$(this).tab("show");
	 	});
	 </script>
	</body>
	
</html>