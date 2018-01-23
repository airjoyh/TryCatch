<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <title>기업후기</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--C태그를 사용하기 위한 라이브러리 --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
  <title>Board List</title>
  <script type="text/javascript">
  	$(document).ready(function(){
  		$('.initial').hide();
  		$('.initial').fadeln(6000);
  		$('.tdTtl').mouseenter(function(){
  			
  		});
  	});
  	/* 검색창 드롭다운 메뉴 */
  	$('.taco').click(function(e){
  		var txt = $(e.target).text();
  	    $('.taco-input').val(txt);
  	});
  	
  	
  /* 	function fnGoBoardCreate() {
		$('#frmList').attr({action : /tcb/board/boardCreate.jsp}).submit();
	}
  	
  	function fnGoBoardDetail(listseq) {
  		$('#frmSeq').val(listseq);
		$('#frmList').attr({action : /tcb/board/boardDetail.jsp}).submit();
	}
  	$(function () {
  		
  		$("#list").click(function(){
  		location.href= '/tcb/board/boardDetail.jsp';  			
  		});
	}); */
  	
  	
  </script>
  
<!-- Custom jQuery -->

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">

</head>
<body style="background-color: #f4f4f4;">
	<!--***********************************************************
	*                                                             *
	*                          navbar                             *
	*                                                             *
	************************************************************-->
	<nav class="navbar navbar-inverse navbar-fixed-top" style="padding-right: 2em;padding-left: 2em;">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">TryCatch</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav" >
					<li><a href="#" style="color: #ffffff">기업</a></li>
					<li><a href="#" style="color: #ffffff">콘테스트</a></li>
					<li><a href="${initParam.rootPath }/review/control.do" style="color: #ffffff">후기</a></li>
					<li><a href="#" style="color: #ffffff">Q&amp;A</a></li>
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
							class="glyphicon glyphicon-user" style="color: #ffffff">Sign Up</span>
					</a></li>
					<li id='loginout'><a data-toggle="modal"
						data-target="#loginModal"><span
							class="glyphicon glyphicon-log-in" style="color: #ffffff">로그인</span> </a></li>
					<li><a href=""> <span
							class="glyphicon glyphicon-briefcase" style="color: #ffffff">기업회원</span>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--***********************************************************
	*                                                             *
	*                          기업베너                                                                 *
	*                                                             *
	************************************************************-->
	<div class="container-fluid">
		<div class="row" style="padding-top: 10em; padding-bottom: 5em;
		                        padding-left: 12em; padding-right: 3em; background-image: url('${initParam.rootPath }/image/building/building_5.jpg');">
			<h1 style="color: white;font-weight: 700;">엔코아 아카데미</h1>
			<h4 style="color: white;">기업소개 블라블라</h4>                        
		</div>
	</div>
	<!--***********************************************************
	*                                                             *
	*                           평점                                                                     *
	*                                                             *
	************************************************************-->
	<div class="container" style="background-color: #ffffff; margin-top: 2em">
		<!-- 탭공간  -->
		<ul class="nav nav-tabs nav-justified" style="font-weight: bold;font-size: 1.2em;">
			<li><a href="#" class="action">기업소개</a></li>
			<li><a href="#">후기</a></li>
		</ul>
		<!-- 평점란 -->
		<div class="row" style="padding-top: 5em; padding-bottom: 2em;
		                        padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">총평점</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar progress-bar-warning" role="progressbar"
							aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.8 / 5</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">복지 및 급여</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar" aria-valuenow="90"
							aria-valuemin="0" aria-valuemax="100" style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">3.8 / 5</div>
		</div>
 
		<div class="row" style="padding-top: 1em; padding-bottom: 2em;
		                        padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">승진 기회 및 가능성</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar"
							aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.4 / 5</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">업무와 삶의 균형</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar" aria-valuenow="90"
							aria-valuemin="0" aria-valuemax="100" style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.3 / 5</div>
		</div>
 
		<div class="row" style="padding-top: 1em; padding-bottom: 2em;
		                        padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">사내문화</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar"
							aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.4 / 5</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">경영진</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar" aria-valuenow="90"
							aria-valuemin="0" aria-valuemax="100" style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.4 / 5</div>
		</div>
		</div>
 		<hr>



	<!--***********************************************************
	*                                                             *
	*                           후기게시판-상현                                                    *
	*                                                             *
	************************************************************-->
	<div class="container" style="background-color: #ffffff;">
		<div class="row"
			style="padding-top: 3em; padding-left: 4em; padding-right: 4em; padding-bottom: 2em;margin-bottom: 1em;">
			<h3>후기게시판</h3>
			<hr>
		</div>
		<div class="row"
			style="padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th style="width: 10%;">글번호</th>
							<th style="width: 53%;">제목</th>
							<th style="width: 10%;">작성자</th>
							<th style="width: 10%;">작성일</th>
							<th style="width: 10%;">조회수</th>
							<th style="width: 7%;">댓글</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>뭔가 잘못됐어</td>
							<td>Anna</td>
							<td>2018.01.21</td>
							<td>44</td>
							<td><span class="badge">2</span></td>
						</tr>
						<tr >
							<td>2</td>
							<td>할게너무많아</td>
							<td>Debbie</td>
							<td>2018.01.21</td>
							<td>33</td>
							<td><span class="badge">0</span></td>
						</tr>
						<tr>
							<td>3</td>
							<td>미쳐돌아버린다 리얼</td>
							<td>John</td>
							<td>2018.01.21</td>
							<td>33</td>
							<td><span class="badge">0</span></td>
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

	<!--***********************************************************
	*                                                             *
	*                             footer                          *
	*                                                             *
	************************************************************-->
	<footer class="footer text-center" style="margin-top: 2em;">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h4 class="text-uppercase mb-4">About TryCatch</h4>
					<p class="lead mb-0" style="font-size: 1em;">
						편견없는 채용을 위한 커뮤니티를 만들겠습니다.<br>
						대표이사: 조영환<br>
						주소: 서울시 서초구 서초동 엔코아빌딩 2층 증강현실클래스<br>
						대표전화: 010-2762-7989<br>
						Email: airjoyh@naver.com
					</p>
				</div>
			</div>
		</div>
	</footer>
	<div class="copyright text-center">
		<div class="container">
			<div class="col-md-12">Copyright &copy; TryCatch 2018</div>
		</div>
	</div>
		
</body>
</html>