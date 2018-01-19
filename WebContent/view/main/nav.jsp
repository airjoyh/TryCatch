<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<script type="text/javascript" src="${initParam.rootPath }/js/jquery-3.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

<title>Navbar</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- bootstrap3 for trycatch -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom jQuery -->
<script type="text/javascript" src="${initParam.rootPath }/js/trycatch.js"></script>

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
</head>
<body>
	<!--***********************************************************
	*                                                             *
	*                          navbar                             *
	*                                                             *
	************************************************************-->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="#">기업</a></li>
				<li><a href="#">콘테스트</a></li>
				<li><a href="${initParam.rootPath }/review/control.do">후기</a></li>
				<li><a href="#">Q&amp;A</a></li>
			</ul>
			<form class="navbar-form navbar-left" action="/action_page.php">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search"
						name="search">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a data-toggle="modal" data-target="#registerModal"> <span
						class="glyphicon glyphicon-user">Sign Up</span>
				</a></li>
				<li id='loginout'><a data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in">로그인</span>
				</a></li>
				<li><a href=""> <span class="glyphicon glyphicon-briefcase"></span>
						기업회원
				</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>