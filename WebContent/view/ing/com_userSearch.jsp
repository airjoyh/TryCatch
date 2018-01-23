<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
  <title>인재검색</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom jQuery -->
<script type="text/javascript"
	src="${initParam.rootPath }/js/com_userSearch.js"></script>
<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/com_userSearch.css" rel="stylesheet">


</head>
<body>
   <!--***********************************************************
   *                                                             *
   *                          navbar                             *
   *                                                             *
   ************************************************************-->
   
   <!--***********************************************************
   *                                                             *
   *                          header                             *
   *                                                             *
   ************************************************************-->
 <section>
  <h1>Try&Catch 회원 인재 검색</h1>
  <h3>
    요구스킬에 맞는 회원을 검색할 수 있습니다
  </h3>
 </section>
 
    <!--***********************************************************
   *                                                             *
   *                           Body                              *
   *                                                             *
   ************************************************************-->
 
 <section class="list-wrap">

   <label for="search-text">Search User</label>
   <input type="text" id="search-text" placeholder="search" class="search-box">
   <span class="list-count"></span>
    
    
<ul id="list">
  <li class="in">port_skil.val을 가져와서 제목처럼 뿌려주기</li>
  <li class="in">Java</li>
  <li class="in">JavaScript</li>
  <li class="in">Ibatis</li>
  <li class="in">MyBatis</li>
  <li class="in">jQuery</li>
  <li class="in">Spring</li>
  <li class="in">Oracle</li>
  <li class="in">Mysql</li>
  <li class="in">C,C++</li>
  <li class="in">JSP,Spring,jQuery</li>
  <span class="empty-item">no results</span>
</ul>
   </section>

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