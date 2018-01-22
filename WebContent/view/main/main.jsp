<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>


<title>TryCatch</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap3 for trycatch -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- main.js 연결 -->
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

<!-- Custom jQuery -->
<script type="text/javascript" src="${initParam.rootPath }/js/trycatch.js"></script>

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">

<style type="text/css">
#modalpadding {
	padding-top: 30px;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 30px;
}
</style>
</head>
<body>
<%@include file="nav.jsp" %>

	<!--***********************************************************
	*                                                             *
	*                        myCarousel                           *
	*                                                             *
	************************************************************-->

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">

			<div class="item active">
				<img src="${initParam.rootPath }/image/monitor/monitor_1.jpg" alt="Los Angeles" style="width: 100%;">
				<div class="carousel-caption">
					<h3>Los Angeles</h3>
					<p>LA is always so much fun!</p>
				</div>
			</div>

			<div class="item">
				<img src="${initParam.rootPath }/image/monitor/monitor_2.jpg" alt="Chicago" style="width: 100%;">
				<div class="carousel-caption">
					<h3>Chicago</h3>
					<p>Thank you, Chicago!</p>
				</div>
			</div>

			<div class="item">
				<img src="${initParam.rootPath }/image/monitor/monitor_3.jpg" alt="New York" style="width: 100%;">
				<div class="carousel-caption">
					<h3>New York</h3>
					<p>We love the Big Apple!</p>
				</div>
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!--***********************************************************
	*                                                             *
	*                        page body                            *
	*                                                             *
	************************************************************-->
	<div class="container">
		<div class="col-sm-12">
			<div class="col-sm-4">
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.
			</div>
			<div class="col-sm-4">
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.
			</div>
			<div class="col-sm-4">
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    
			    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.    뭘넣어야할지모르겠다.
			</div>
		</div>
	</div>

	<!--***********************************************************
	*                                                             *
	*                             footer                          *
	*                                                             *
	************************************************************-->
    <%@include file="footer.jsp" %> 

</body>
</html>