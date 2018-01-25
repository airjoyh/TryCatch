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
  		
  		
  		$('#myTab a:last').tab('show'); 
  		
  	});
  	/* 검색창 드롭다운 메뉴 */
  	$('.taco').click(function(e){
  		var txt = $(e.target).text();
  	    $('.taco-input').val(txt);
  	});
  	
  	function loginCheck(){
  		
  		var loginState = '${loginState }';
  		alert("로그인 상태>>>"+loginState);
  		if(loginState!='login'){
  			alert('로그인하신 후에 이용 가능합니다.');
  		}else{
  			location.href='${initParam.rootPath }/review/control.do?action=inputForm&company_id=${cominfo.company_id}';
  		}
  	}
  		
  	
  	
  </script>
  
<!-- Custom jQuery -->
<script type="text/javascript"
	src="${initParam.rootPath }/js/trycatch.js"></script>
<script type="text/javascript"
	src="${initParam.rootPath }/js/main.js"></script>
<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">

</head>
<body style="background-color: #f4f4f4;">

	<!--***********************************************************
		*                                                             *
		*                            nav                              *
		*                                                             *
		************************************************************-->
		<%@include file="/view/main/nav.jsp" %>
		
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
	*                           기업소개                                                                *
	*                                                             *
	************************************************************-->
	<div class="container" style="background-color: #ffffff; margin-top: 2em">
		<!-- 탭공간  -->
		<ul id="myTab" class="nav nav-tabs nav-justified" style="font-weight: bold;font-size: 1.2em;">
			<li role="presentatioin" class="active"><a href="#comInfo" aria-controls="cominfo"
			role="tab" data-toggle="tab">기업소개</a></li>
			<li role="presentatioin"><a href="#review" aria-controls="review" role="tab"
			data-toggle="tab">후기</a></li>
		</ul>
		<div class="tab-content" style="padding-top: 5em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
		<div role="tabpanel" class="tab-pane active" id="comInfo" style="background-color: #ffffff; margin-top: 2em">
			<div class="row" style="padding-top: 5em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-6">
					<div class="form-group">
						<label id="company_name" style="text-align: right;">기업명</label>
						<div>${cominfo.company_name }</div>
					</div>
				</div>
				
				<div class="col-sm-6">
					<div class="form-group">
						<label id="company_year">설립 년도</label>
						<div>${cominfo.company_year }</div>
					</div>
				</div>			
			</div>		
			<div class="row" style="padding-top: 5em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-6">
					<div class="form-group">
						<label id="company_site">기업 사이트</label>
						<div>${cominfo.company_site }</div>
					</div>
				</div>
				
				<div class="col-sm-6">
					<div class="form-group">
						<label id="company_addr">기업 주소</label>
						<div>${cominfo.company_addr }</div>
					</div>
				</div>			
			</div>		
			<div class="row" style="padding-top: 5em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-6">
					<div class="form-group">
						<label id="company_size">기업 규모</label>
						<div>${cominfo.company_size }</div>
					</div>
				</div>
				
				<div class="col-sm-6">
					<div class="form-group">
						<label id="company_turnover">매출액</label>
						<div>${cominfo.company_turnover }</div>
					</div>
				</div>			
			</div>		
			<div class="row" style="padding-top: 5em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-6">
					<div class="form-group">
						<label id="company_line">산업군</label>
						<div>${cominfo.company_line }</div>
					</div>
				</div>
				
				<div class="col-sm-6">
					<div class="form-group">
						<label id="com_skill">요구하는 스킬</label>
						<div>${cominfo.company_skill }</div>
					</div>
				</div>			
			<div class="row" style="padding-top: 5em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-12">
					<div class="form-group">
						<label id="com_intro">기업소개</label>
						<div>${cominfo.company_intro }</div>
					</div>
				</div>		
			</div>		
		  </div>
		</div>
		<!--***********************************************************
		*                                                             *
		*                           후기                                                                      *
		*                                                             *
		************************************************************-->		
		  <div role="tabpanel" class="tab-pane" id="review" style="background-color: #ffffff; margin-top: 2em">	
	 		<!-- 평점란 -->
			<div class="row" style="padding-top: 5em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-4">
					<div class="form-group">
						<label for="progress_1">총평점</label>
						<div class="progress" id="progress_1">
							<div id="total" class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
								style="width: ${avg_all*20 }%">
								<span class="sr-only">70% Complete</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 25px;">${avg_all } / 5</div>
	
				<div class="col-sm-4">
					<div class="form-group">
						<label for="progress_1">승진 기회 및 가능성</label>
						<div class="progress" id="progress_1">
							<div id="possibility" class="progress-bar" role="progressbar" aria-valuenow="90"
								aria-valuemin="0" aria-valuemax="100" style="width: ${avg.avg_possibility*20 }%">
								<span class="sr-only">70% Complete</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 25px;">${avg.avg_possibility } / 5</div>
			</div>
	 
			<div class="row" style="padding-top: 1em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-4">
					<div class="form-group">
						<label for="progress_1">복지 및 급여</label>
						<div class="progress" id="progress_1">
							<div id="welSal" class="progress-bar" role="progressbar"
								aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
								style="width: ${avg.avg_welSal*20 }%">
								<span class="sr-only">70% Complete</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 25px;">${avg.avg_welSal } / 5</div>
	
				<div class="col-sm-4">
					<div class="form-group">
						<label for="progress_1">업무와 삶의 균형</label>
						<div class="progress" id="progress_1">
							<div id="balance" class="progress-bar" role="progressbar" aria-valuenow="90"
								aria-valuemin="0" aria-valuemax="100" style="width: ${avg.avg_balance*20 }%">
								<span class="sr-only">70% Complete</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 25px;">${avg.avg_balance } / 5</div>
			</div>
	 
			<div class="row" style="padding-top: 1em; padding-bottom: 2em;
			                        padding-left: 3em; padding-right: 3em;">
				<div class="col-sm-4">
					<div class="form-group">
						<label for="progress_1">사내문화</label>
						<div class="progress" id="progress_1">
							<div id="culture" class="progress-bar" role="progressbar"
								aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
								style="width: ${avg.avg_culture*20 }%">
								<span class="sr-only">70% Complete</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 25px;">${avg.avg_culture } / 5</div>
	
				<div class="col-sm-4">
					<div class="form-group">
						<label for="progress_1">경영진</label>
						<div class="progress" id="progress_1">
							<div id="manager" class="progress-bar" role="progressbar" aria-valuenow="90"
								aria-valuemin="0" aria-valuemax="100" style="width: ${avg.avg_manager*20 }%">
								<span class="sr-only">70% Complete</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 25px;">${avg.avg_manager } / 5</div>
			</div>  
			</div>
		</div>
	</div>	
 	<hr>
<!--  	<script type="text/javascript">
 		$(function(){
			$('#myTab a:last').tab('show')
 		});
 	</script> 	 -->



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
					<c:forEach items="${list }" var="review" varStatus="stat">
					<tr>
						<td style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_no }</a></td>
						<td style="width: 50%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_title }</a></td>
						<td style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_writer }</a></td>
						<td style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_wdate }</a></td>
						<td id="count" style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_count }</a></td>
						<td><span class="badge">${reply_cnt.get(stat.index) }</span></td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			</div>
		</div>
		    	<div align="right">
		<a class="btn btn-default pull-right" href="javascript:loginCheck()" id="write" >글쓰기</a>
		</div>
		<div align="center">		    
		<c:if test="${startPage<5 }">
		이전
		</c:if>
		<c:if test="${startPage>5 }">
		<a href="control.do?company_id=${cominfo.company_id }&page=${startPage-5 }">이전</a>
		</c:if> 
		<c:forEach begin="${startPage }" end="${endPage }" var="i">
   	  		[<a href="control.do?company_id=${cominfo.company_id }&page=${i }">${i }</a>]
		</c:forEach>
		<c:choose>
		  <c:when test="${endPage<totalPage }">
		    <a href="control.do?company_id=${cominfo.company_id }&page=${startPage+5 }">다음</a>
		  </c:when>
		  <c:otherwise>다음</c:otherwise>
		</c:choose>
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
			<!-- <div class="col-sm-2" style="margin-top: 1.5em">
				<a class="btn btn-info pull-right"
					href="control.do?action=inputForm">글쓰기</a>
			</div> -->
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