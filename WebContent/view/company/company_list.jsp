<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<script type="text/javascript" src="${initParam.rootPath }/js/jquery-3.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

<title>TryCatch_companyInfo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- bootstrap3 for trycatch -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src=""></script>
<!-- Custom jQuery -->
<script type="text/javascript" src="${initParam.rootPath }/js/trycatch.js"></script>

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">

<!-- Custom styles -->
<%-- <link href="${initParam.rootPath }/css/com_companyInfo.css" rel="stylesheet"> --%>
<link href="../../css/com_companyInfo.css" rel="stylesheet">


</head>
<body>

		<!--***********************************************************
		*                                                             *
		*                            nav                              *
		*                                                             *
		************************************************************-->
		<div>
			<jsp:include page="../main/nav.jsp" />
		</div>
	
	<section>
	<!--***********************************************************
	*                                                             *
	*                           후기게시판-상현                                                    *
	*                                                             *
	************************************************************-->
	<div class="container" style="background-color: #ffffff;">
		<div class="row"
			style="padding-top: 3em; padding-left: 4em; padding-right: 4em; padding-bottom: 2em;margin-bottom: 1em;">
			<h3>기업후기게시판</h3>
			<hr>
		</div>
		<div class="row"
			style="padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th style="width: 15%;">기업명</th>
							<th style="width: 45%;">기업규모</th>
							<th style="width: 10%;">매출액</th>
							<th style="width: 20%;">산업군</th>
							<th style="width: 10%;">후기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>페이스북코리아</td>
							<td>대기업</td>
							<td>연매출액 40억???</td>
							<td>IT/웹/통신</td>
							<td><span class="badge">22</span></td>
						</tr>
						<tr>
							<td>현대케피코(주)</td>
							<td>중기업</td>
							<td>연매출액 110억???</td>
							<td>제조/화학</td>
							<td><span class="badge">20</span></td>
						</tr>
						<tr>
							<td>현대하이스코</td>
							<td>대기업</td>
							<td>연매출액 240억???</td>
							<td>IT/웹/통신</td>
							<td><span class="badge">5</span></td>
						</tr>
					</tbody>
				</table>
			<hr>
			</div>
		</div>
		<div class="row"
			style="padding-bottom: 2em; padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-5">
				<ul class="pagination">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
			<form class="bs-example bs-example-form" role="form">
					<div class="col-sm-5" style="margin-top: 1.5em">
						<div class="input-group">
							<input type="text" class="form-control taco-input">
							<div class="input-group-btn">
								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									검색조건 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right taco">
									<li><a href="#">제목</a></li>
									<li><a href="#">작성자</a></li>
									<li><a href="#">제목+작성자</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-4 -->
			</form>
			<!--<div class="col-sm-4" style="margin-top: 1.5em">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search"
						name="search">
					<span class="input-group-addon">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
						
					</span>
				</div>  
			</div> -->
			<div class="col-sm-2" style="margin-top: 1.5em">
				<a class="btn btn-info pull-right"
					href="control.do?action=inputForm">글쓰기</a>
			</div>
		</div>

	</div>
	
	</section>

</body>
</html>