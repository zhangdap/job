<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>404页面</title>
<link href="other/404.css" rel="stylesheet" type="text/css" />
<script src="assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var h = $(window).height();
		$('body').height(h);
		$('.mianBox').height(h);
		centerWindow(".tipInfo");
	});

	function centerWindow(a) {
		center(a);
		$(window).bind('scroll resize', function() {
			center(a);
		});
	}

	function center(a) {
		var wWidth = $(window).width();
		var wHeight = $(window).height();
		var boxWidth = $(a).width();
		var boxHeight = $(a).height();
		var scrollTop = $(window).scrollTop();
		var scrollLeft = $(window).scrollLeft();
		var top = scrollTop + (wHeight - boxHeight) / 2;
		var left = scrollLeft + (wWidth - boxWidth) / 2;
		$(a).css({
			"top" : top,
			"left" : left
		});
	}
</script>
</head>
<body>
	<div class="mianBox">
		<img src="images/yun0.png" alt="" class="yun yun0" /> <img
			src="images/yun1.png" alt="" class="yun yun1" /> <img
			src="images/yun2.png" alt="" class="yun yun2" /> <img
			src="images/bird.png" alt="" class="bird" /> <img
			src="images/san.png" alt="" class="san" />
		<div class="tipInfo">
			<div class="in">
				<div class="textThis">
					<h2>请先登录</h2>
					<p>页面自动 <a id="href"
							href="/JobRecruitment/jobTypeList.action?jspName=index">跳转到首页</a><span>等待<b id="wait">5</b>秒</span>
					</p>
					<script type="text/javascript">
						(function() {
							var wait = document.getElementById('wait'), href = document
									.getElementById('href').href;
							var interval = setInterval(function() {
								var time = --wait.innerHTML;
								if (time <= 0) {
									location.href = href;
									clearInterval(interval);
								}
								;
							}, 1000);
						})();
					</script>
				</div>
			</div>
		</div>
	</div>
</body>
</html>