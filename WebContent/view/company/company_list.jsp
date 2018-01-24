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
<script type="text/javascript">
	$(function(){
		var action='${action }';
		var msg = '';
		var title = document.getElementById('title');
		//alert(action);
		if(action=='total'){
			msg= '총 평점';
			//alert(msg);
		}else if(action=='possibility'){
			msg='승진 기회 및 가능성';
		}else if(action=='welSal'){
			msg='복지 및 급여';
		}else if(action=='balance'){
			msg='업무와 삶의 균형';
		}else if(action=='culture'){
			msg='사내문화';
		}else if(action=='manager'){
			msg='경영진';
		}
		title.innerHTML='기업 '+msg+' 순위 게시판';
	});
</script>

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">

<!-- Custom styles -->
<%-- <link href="${initParam.rootPath }/css/com_companyInfo.css" rel="stylesheet"> --%>
<link href="../../css/com_companyInfo.css" rel="stylesheet">

<%--C태그를 사용하기 위한 라이브러리 --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	*                           기업게시판-상현                                                    *
	*                                                             *
	************************************************************-->
	<div class="container" style="background-color: #ffffff;">
		<div class="row"
			style="padding-top: 3em; padding-left: 4em; padding-right: 4em; padding-bottom: 2em;margin-bottom: 1em;">
			<h3 id="title"></h3>
			<hr>
		</div>
		<div class="row"
			style="padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th style="width: 10%;">순위</th>
							<th style="width: 25%;">기업명</th>
							<th style="width: 20%;">기업규모</th>
							<th style="width: 20%;">매출액</th>
							<th style="width: 20%;">산업군</th>
							<th style="width: 20%;">후기</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="avgScore" varStatus="stat">
					<tr>
						<td style="width: 10%;"><a href="${initParam.rootPath }/review/control.do?company_id=${avgScore.company_id }">${avgScore.rank }</a></td>
						<td style="width: 25%;"><a href="${initParam.rootPath }/review/control.do?company_id=${avgScore.company_id }">${avgScore.company_name }</a></td>
						<td style="width: 20%;"><a href="${initParam.rootPath }/review/control.do?company_id=${avgScore.company_id }">${avgScore.company_size }</a></td>
						<td style="width: 20%;"><a href="${initParam.rootPath }/review/control.do?company_id=${avgScore.company_id }">${avgScore.company_turnover }</a></td>
						<td style="width: 20%;"><a href="${initParam.rootPath }/review/control.do?company_id=${avgScore.company_id }">${avgScore.company_line }</a></td>
						<td><span class="badge">${review_cnt.get(stat.index) }</span></td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			</div>
		</div>
		<div align="center">		    
		<c:if test="${startPage<5 }">
		이전
		</c:if>
		<c:if test="${startPage>5 }">
		<a href="listInfo.do?action=${action }&page=${startPage-5 }">이전</a>
		</c:if> 
		<c:forEach begin="${startPage }" end="${endPage }" var="i">
   	  		[<a href="listInfo.do?action=${action }&page=${i }">${i }</a>]
		</c:forEach>
		<c:choose>
		  <c:when test="${endPage<totalPage }">
		    <a href="listInfo.do?action=${action }&page=${startPage+5 }">다음</a>
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
			
		</div>


	
	</section>

</body>
</html>