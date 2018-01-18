<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- C태그 라이브러리 사용을 위해 써준다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  *{font-family:"Courier New", Courier, monospace}


form p,
form input[type="submit"] {
  text-align: center;
  font-size: 20px;
}

#wrapper form input[type="submit"] {
  border: 1px solid #d9d9d9;
  background-color: #efefef;
}

input[type="radio"] {
  display: none;
}

label {
  color: grey;
}

.clasificacion {
  direction: rtl;
  unicode-bidi: bidi-override;
}

label:hover,
label:hover ~ label {
  color: orange;
}

input[type="radio"]:checked ~ label {
  color: orange;
}

th{
	
	background-color: orange;
}
  </style>
    <title>후기 글쓰기</title>
  </head>
<body>
	<h2 style="padding: 0.1em 1em;">후기 작성</h2>
	<div style="padding : 30px;">
	<!-- 파일 첨부를 위해서는 multipart/form-data를 추가해야 한다. -->
	<form id="frmCreate" name="frmCreate" method="post"
		enctype="multipart/form-data">
		<input type="hidden" id="frmSave" name="frmSave" />
		<table id="tcreate" border="1px dashed #EEEEEE" width="100%">
			<thead>
				<tr>
					<th>제목</th>
					<!-- input type이 text -->
					<td><input id="frmTitle" name="frmTitle" type="text"
						onkeydown="if(event.keyCode==13) fnSave()"
						style="height: auto; width: 90%; color: #010101" /></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>본문</th>
					<!-- input type이 textarea -->
					<td><textarea id="frmContents" name="frmContents" cols="50%"
							rows="10%" style="color: #010101;"></textarea></td>
				</tr>
				<tr>
					<th>기업장점</th>
					<!-- input type이 textarea -->
					<td><textarea id="frmContents" name="frmContents" cols="50%"
							rows="10%" style="color: #010101;"></textarea></td>
				</tr>
				<tr>
					<th>기업단점</th>
					<!-- input type이 textarea -->
					<td><textarea id="frmContents" name="frmContents" cols="50%"
							rows="10%" style="color: #010101;"></textarea></td>
				</tr>
				<tr>
					<th>경영진에 바라는점</th>
					<!-- input type이 textarea -->
					<td><textarea id="frmContents" name="frmContents" cols="50%"
							rows="10%" style="color: #010101;"></textarea></td>
				</tr>
			</tbody>
			<tfoot>
				<th>별점</th>
				<td>
					<div class="form-group">
						<div id="wrapper ">
							<label>승진기회 및 가능</label>
							<p class="clasificacion">
								<input id="radio1" type="radio" name="estrellas1" value="5">
								<!--
				      -->
								<label for="radio1">&#9733;</label>
								<!--
				      -->
								<input id="radio2" type="radio" name="estrellas1" value="4">
								<!--
				      -->
								<label for="radio2">&#9733;</label>
								<!--
				      -->
								<input id="radio3" type="radio" name="estrellas1" value="3">
								<!--
				      -->
								<label for="radio3">&#9733;</label>
								<!--
				      -->
								<input id="radio4" type="radio" name="estrellas1" value="2">
								<!--
				      -->
								<label for="radio4">&#9733;</label>
								<!--
				      -->
								<input id="radio5" type="radio" name="estrellas1" value="1">
								<!--
				      -->
								<label for="radio5">&#9733;</label>
							</p>
						</div>
						<div id="wrapper ">
							<label>복지와 급여</label>
							<p class="clasificacion">
								<input id="radio6" type="radio" name="estrellas2" value="5">
								<!--
				      -->
								<label for="radio6">&#9733;</label>
								<!--
				      -->
								<input id="radio7" type="radio" name="estrellas2" value="4">
								<!--
				      -->
								<label for="radio7">&#9733;</label>
								<!--
				      -->
								<input id="radio8" type="radio" name="estrellas2" value="3">
								<!--
				      -->
								<label for="radio8">&#9733;</label>
								<!--
				      -->
								<input id="radio9" type="radio" name="estrellas2" value="2">
								<!--
				      -->
								<label for="radio9">&#9733;</label>
								<!--
				      -->
								<input id="radio10" type="radio" name="estrellas2" value="1">
								<!--
				      -->
								<label for="radio10">&#9733;</label>
							</p>

						</div>
						<div id="wrapper ">
							<label>업무와 삶의 균형</label>
							<p class="clasificacion">
								<input id="radio11" type="radio" name="estrellas3" value="5">
								<!--
				      -->
								<label for="radio11">&#9733;</label>
								<!--
				      -->
								<input id="radio12" type="radio" name="estrellas3" value="4">
								<!--
				      -->
								<label for="radio12">&#9733;</label>
								<!--
				      -->
								<input id="radio13" type="radio" name="estrellas3" value="3">
								<!--
				      -->
								<label for="radio13">&#9733;</label>
								<!--
				      -->
								<input id="radio14" type="radio" name="estrellas3" value="2">
								<!--
				      -->
								<label for="radio14">&#9733;</label>
								<!--
				      -->
								<input id="radio15" type="radio" name="estrellas3" value="1">
								<!--
				      -->
								<label for="radio15">&#9733;</label>
							</p>

						</div>
						<div id="wrapper ">
							<label>사내문화</label>
							<p class="clasificacion">
								<input id="radio16" type="radio" name="estrellas4" value="5">
								<!--
				      -->
								<label for="radio16">&#9733;</label>
								<!--
				      -->
								<input id="radio17" type="radio" name="estrellas4" value="4">
								<!--
				      -->
								<label for="radio17">&#9733;</label>
								<!--
				      -->
								<input id="radio18" type="radio" name="estrellas4" value="3">
								<!--
				      -->
								<label for="radio18">&#9733;</label>
								<!--
				      -->
								<input id="radio19" type="radio" name="estrellas4" value="2">
								<!--
				      -->
								<label for="radio19">&#9733;</label>
								<!--
				      -->
								<input id="radio20" type="radio" name="estrellas4" value="1">
								<!--
				      -->
								<label for="radio20">&#9733;</label>
							</p>

						</div>
						<div id="wrapper ">
							<label>경영진</label>
							<p class="clasificacion">
								<input id="radio21" type="radio" name="estrellas5" value="5">
								<!--
				      -->
								<label for="radio21">&#9733;</label>
								<!--
				      -->
								<input id="radio22" type="radio" name="estrellas5" value="4">
								<!--
				      -->
								<label for="radio22">&#9733;</label>
								<!--
				      -->
								<input id="radio23" type="radio" name="estrellas5" value="3">
								<!--
				      -->
								<label for="radio23">&#9733;</label>
								<!--
				      -->
								<input id="radio24" type="radio" name="estrellas5" value="2">
								<!--
				      -->
								<label for="radio24">&#9733;</label>
								<!--
				      -->
								<input id="radio25" type="radio" name="estrellas5" value="1">
								<!--
				      -->
								<label for="radio25">&#9733;</label>
							</p>
						</div>
					</div>
				</td>
			</tfoot>
		</table>
		<br />
		   <div class="row" align="center">
    	  	<div class="col-md-6">
    	  		<button type="submit" class="btn btn-default"><a href="boardDetail.jsp">수정</a></button>
    	  	</div>
    	  	<div class="col-md-6">
    	  		<button type="submit" class="btn btn-danger"><a href="boardList.jsp">취소</a></button>
    	  	</div>
    	  </div>
	</form>
	</div>
	
	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
  
</body>
</html>