<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<meta charset="EUC-KR">
<title>Sports Wear</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- <link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">-->

<!-- 부가적인 테마 -->
<link
	href="<%=request.getContextPath()%>/resources/css/shop-homepage.css"
	rel="stylesheet">
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">-->

<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>-->

<style>
.new_title {
	position: absolute;
	left: 500px;
	top: 80px;
}

.new_title:after {
	content: "";
	display: block;
	width: 60px;
	border-bottom: 1px solid #bcbcbc;
	margin: 20px auto;
}

.new_image {
	position: absolute;
	left: 100px;
	top: 180px;
}

.best_title {
	position: absolute;
	left: 500px;
	top: 350px;
}

.best_title:after {
	content: "";
	display: block;
	width: 60px;
	border-bottom: 1px solid #bcbcbc;
	margin: 20px auto;
}

.best_image {
	position: absolute;
	left: 100px;
	top: 450px;
}
</style>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">Web Project</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav navbar-right ">
					<li class="nav-item"><a class="nav-link"
						href="ListviewTop.jsp">Top</a></li>
					<li class="nav-item"><a class="nav-link"
						href="ListviewBottom.jsp">Bottoms</a></li>
					<li class="nav-item"><a class="nav-link"
						href="ListviewShoes.jsp">Shoes</a></li>
				</ul>
				<ul class="navbar-nav navbar-right">
					<li><a href="Login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login </a></li>
					<li><a href="Join.jsp"><span
							class="glyphicon glyphicon-user"></span> Sign Up </a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">

			<div class="col-lg-9">
				<div class="main_new">
					<h3 class="new_title">New</h3>
					<div class="new_image">
						<aside id="new_aside">
							<a href="Detailview.jsp"><img src="images/main1.jpg" /></a> <a
								href="Detailview.jsp"><img src="images/main2.jpg" /></a> <a
								href="Detailview.jsp"><img src="images/main3.jpg" /></a> <a
								href="Detailview.jsp"><img src="images/main3.jpg" /></a><a
								href="Detailview.jsp"><img src="images/main3.jpg" /></a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-9">
				<div class="main_best">
					<h3 class="best_title">Best</h3>
					<div class="best_image">
						<aside id="best_aside">
							<a href="Detailview.jsp"><img src="images/main1.jpg" /></a> <a
								href="Detailview.jsp"><img src="images/main2.jpg" /></a> <a
								href="Detailview.jsp"><img src="images/main3.jpg" /></a><a
								href="Detailview.jsp"><img src="images/main3.jpg" /></a><a
								href="Detailview.jsp"><img src="images/main3.jpg" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-9">
		<div></div>
	</div>

	<!--  부트스트랩 js 사용 -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="/resource/js/bootstrap.js"></script>
</body>
</html>