<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <title>Bootstrap Example</title>
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
    		  <tr>
    		  	<th style="width: 10%;">글번호</th>
    		  	<th style="width: 50%;">제목</th>
    		  	<th style="width: 10%;">작성자</th>
    		  	<th style="width: 10%;">작성일</th>
    		  	<th style="width: 10%;">수정일</th>
    		  	<th style="width: 10%;">조회수</th>
    		  </tr>
    		</thead>
    		<tbody>
    			<tr id="list">
    			  <td>1</td>
    			  <td>엔코아 후기</td>
    			  <td>이성원</td>
    			  <td>2018-01-17</td>
    			  <td>2018-01-17</td>
    			  <td>99</td>
    			</tr>
	    	  <!-- 컨트롤러에서 받은 listAll을 i로 치환해 반복한다. -->
	          <c:forEach var="i" items="${listAll}"> 
	            <tr>         
	              <td>${i.boardSeq}</td>
	              <!-- 제목을 클릭하면 글 번호를 파라미터로 받는 함수를 호출한다. -->
	              <td class="tdTtl" colspan="3" onclick="fnGoBoardDetail(${i.boardSeq})">${i.boardTtl}</td>
	              <td>${i.boardWusr}</td>
	              <!-- C태그에서 날짜 자르기 -->
	              <td><c:out value="${fn:substring(i.boardWdt,0,10)}"/></td>
	              <td>${i.boardMusr}</td>
	              <td><c:out value="${fn:substring(i.boardMdt,0,10)}"/></td>
	              <td>${i.boardCnt}</td> 
	            </tr>
	          <!-- C태그 반복문이 끝난다. -->
	          </c:forEach>
          </tbody>
    	</table>
    	<div align="right">
		<a class="btn btn-default pull-right" href="control.do?action=inputForm">글쓰기</a>
		</div>
		<div align="center">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</div>
	 </div>
    </form>

  </body>
</html>