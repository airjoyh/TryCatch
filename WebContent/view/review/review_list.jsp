<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap3 for trycatch -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- main.js 연결 -->
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/cmain.js"></script>

<!-- Custom jQuery -->
<script type="text/javascript" src="${initParam.rootPath }/js/trycatch.js"></script>


<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">
<%--C태그를 사용하기 위한 라이브러리 --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
  <title>Board List</title>
  <script type="text/javascript">
  	$(function(){
  		
  		$('#write').click(function(){
  			var loginState = '${loginState }';
  			alert("로그인 상태>>>"+loginState);
  			if(loginState!='login'){
  				alert('로그인하신 후에 이용 가능합니다.');
  			}
  		});
  	});
  
  	/* $(document).ready(function(){
  		$('.initial').hide();
  		$('.initial').fadeln(6000);
  		$('.tdTtl').mouseenter(function(){
  			
  		});
  	}); */
  	
  	
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
  
  </head>
  <body>
    <h2 style="padding: 0.1em 1em;">게시판 목록</h2>
    <form id="frmList" name="frmList" method="POST">
    	<input type="hidden" id="frmSeq" name="frmSeq" />
    	<div class="container">
    	<table class="table table-hover" id="ilist" border="1px dashed">
    		<thead>
    		  <tr bgcolor="orange">
    		  	<th style="width: 10%;">글번호</th>
    		  	<th style="width: 50%;">제목</th>
    		  	<th style="width: 10%;">작성자</th>
    		  	<th style="width: 10%;">작성일</th>
    		  	<th style="width: 10%;">조회수</th>
    		  </tr>
    		</thead>
    		<tbody>
	          <c:forEach items="${list }" var="review">
				<tr>
					<td style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_no }</a></td>
					<td style="width: 50%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_title }</a></td>
					<td style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_writer }</a></td>
					<td style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_wdate }</a></td>
					<td id="count" style="width: 10%;"><a href="control.do?action=select&no=${review.review_no }">${review.review_count }</a></td>
				</tr>
	          </a>
			</c:forEach>
          </tbody>
    	</table>
    	<div align="right">
		<a class="btn btn-default pull-right" id="write" href="control.do?action=inputForm">글쓰기</a>
		</div>
		<div align="center">		    
		<c:if test="${startPage<5 }">
		이전
		</c:if>
		<c:if test="${startPage>5 }">
		<a href="control.do?page=${startPage-5 }">이전</a>
		</c:if> 
		<c:forEach begin="${startPage }" end="${endPage }" var="i">
   	  		[<a href="control.do?page=${i }">${i }</a>]
		</c:forEach>
		<c:choose>
		  <c:when test="${endPage<totalPage }">
		    <a href="control.do?page=${startPage+5 }">다음</a>
		  </c:when>
		  <c:otherwise>다음</c:otherwise>
		</c:choose>
		</div>
	 </div>
    </form>
<%@include file="../main/footer.jsp" %>
  </body>
</html>