<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- C태그 라이브러리 사용을 위해 써준다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="kr">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
* {
	font-family: "Courier New", Courier, monospace
}

form p, form input[type="submit"] {
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

label:hover, label:hover ~ label {
	color: orange;
}

input[type="radio"]:checked ~ label {
	color: orange;
}

th {
	background-color: orange;
}
</style>
<script type="text/javascript">

	function validateCheck() {
		var f = document.inputForm;
		if($('form[name=inputForm] input[name=title]').val()==''){
			alert('제목을 입력하세요.');
			f.title.focus();
		
		}else if($('form[name=inputForm] input[name=writer]').val()==''){
			alert('작성자를 입력하세요.');
			f.writer.focus();
			
		}else if($('form[name=inputForm] textarea[name=strong]').val()==''){
			alert('기업의 장점을 입력하세요.');
			f.strong.focus();
			
		}else if($('form[name=inputForm] textarea[name=weak]').val()==''){
			alert('기업의 단점을 입력하세요.');
			f.weak.focus();
			
		}else if($('form[name=inputForm] textarea[name=toCEO]').val()==''){
			alert('경영진에게 바라는 점을 입력하세요.');
			f.toCEO.focus();
			
		}else if(f.possibility.value==''){
			alert('승진 기회 및 가능성에 대한 점수를 매겨주세요.');
			
		}else if(f.welSal.value==''){
			alert('복지와 급여에 대한 점수를 매겨주세요.');
			
		}else if(f.balance.value==''){
			alert('업무와 삶의 균형에 대한 점수를 매겨주세요..');
			
		}else if(f.culture.value==''){
			alert('사내문화에 대한 점수를 매겨주세요.');
			
		}else if(f.manager.value==''){
			alert('경영진에 대한 점수를 매겨주세요.');
			
		}else{
			document.inputForm.submit();
		}
	}
</script>
<title>후기 글쓰기</title>
</head>
<body>
	<h2 style="padding: 0.1em 1em;">후기 작성</h2>
	<div style="padding: 30px;">
		<!-- 파일 첨부를 위해서는 multipart/form-data를 추가해야 한다. -->
		<form action="control.do?action=insert" id="inputForm"
			name="inputForm" method="post">
			<!-- 나중에 기업아이디는 ${company_id}로 가져와야된다. -->
			<input type="hidden" id="company_id" name="company_id" value="${param.company_id }">
			<table id="tcreate" border="1px dashed #EEEEEE">
				<thead>
					<tr>
						<th>제목</th>
						<!-- input type이 text -->
						<td><input name="title" id="title" type="text"
							onkeydown="if(event.keyCode==13) fnSave()"
							style="height: auto; width: 50%; color: #010101" /></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>작성자</th>
						<td><input name="writer" id="writer" type="text"
							onkeydown="if(event.keyCode==13) fnSave()"
							style="height: auto; width: 50%; color: #010101" /></td>
					</tr>
					<tr>
						<th>기업장점</th>
						<!-- input type이 textarea -->
						<td><textarea name="strong" id="strong" cols="50%" rows="10%"
								style="color: #010101;"></textarea></td>
					</tr>
					<tr>
						<th>기업단점</th>
						<!-- input type이 textarea -->
						<td><textarea name="weak" id="weak" cols="50%" rows="10%"
								style="color: #010101;"></textarea></td>
					</tr>
					<tr>
						<th>경영진에 바라는점</th>
						<!-- input type이 textarea -->
						<td><textarea id="toCEO" name="toCEO" cols="50%" rows="10%"
								style="color: #010101;"></textarea></td>
					</tr>
				</tbody>
				<tfoot>
					<th>별점</th>
					<td>
						<div class="form-group">
							<div id="wrapper ">
								<label>승진기회 및 가능</label>
								<p class="clasificacion">
									<input id="possi1" type="radio" name="possibility" value="5">
									<!--
				      -->
									<label for="possi1">&#9733;</label>
									<!--
				      -->
									<input id="possi2" type="radio" name="possibility" value="4">
									<!--
				      -->
									<label for="possi2">&#9733;</label>
									<!--
				      -->
									<input id="possi3" type="radio" name="possibility" value="3">
									<!--
				      -->
									<label for="possi3">&#9733;</label>
									<!--
				      -->
									<input id="possi4" type="radio" name="possibility" value="2">
									<!--
				      -->
									<label for="possi4">&#9733;</label>
									<!--
				      -->
									<input id="possi5" type="radio" name="possibility" value="1">
									<!--
				      -->
									<label for="possi5">&#9733;</label>
									<!-- <input type="hidden" name="possibility" id="possibility"> -->
								</p>
							</div>
							<div id="wrapper ">
								<label>복지와 급여</label>
								<p class="clasificacion">
									<input id="welSal1" type="radio" name="welSal" value="5">
									<!--
				      -->
									<label for="welSal1">&#9733;</label>
									<!--
				      -->
									<input id="welSal2" type="radio" name="welSal" value="4">
									<!--
				      -->
									<label for="welSal2">&#9733;</label>
									<!--
				      -->
									<input id="welSal3" type="radio" name="welSal" value="3">
									<!--
				      -->
									<label for="welSal3">&#9733;</label>
									<!--
				      -->
									<input id="welSal4" type="radio" name="welSal" value="2">
									<!--
				      -->
									<label for="welSal4">&#9733;</label>
									<!--
				      -->
									<input id="welSal5" type="radio" name="welSal" value="1">
									<!--
				      -->
									<label for="welSal5">&#9733;</label>
									<!-- <input type="hidden" name="welSal" id="welSal"> -->
								</p>

							</div>
							<div id="wrapper ">
								<label>업무와 삶의 균형</label>
								<p class="clasificacion">
									<input id="balance1" type="radio" name="balance" value="5">
									<!--
				      -->
									<label for="balance1">&#9733;</label>
									<!--
				      -->
									<input id="balance2" type="radio" name="balance" value="4">
									<!--
				      -->
									<label for="balance2">&#9733;</label>
									<!--
				      -->
									<input id="balance3" type="radio" name="balance" value="3">
									<!--
				      -->
									<label for="balance3">&#9733;</label>
									<!--
				      -->
									<input id="balance4" type="radio" name="balance" value="2">
									<!--
				      -->
									<label for="balance4">&#9733;</label>
									<!--
				      -->
									<input id="balance5" type="radio" name="balance" value="1">
									<!--
				      -->
									<label for="balance5">&#9733;</label>
									<!-- <input type="hidden" name="balance" id="balance"> -->
								</p>

							</div>
							<div id="wrapper ">
								<label>사내문화</label>
								<p class="clasificacion">
									<input id="culture1" type="radio" name="culture" value="5">
									<!--
				      -->
									<label for="culture1">&#9733;</label>
									<!--
				      -->
									<input id="culture2" type="radio" name="culture" value="4">
									<!--
				      -->
									<label for="culture2">&#9733;</label>
									<!--
				      -->
									<input id="culture3" type="radio" name="culture" value="3">
									<!--
				      -->
									<label for="culture3">&#9733;</label>
									<!--
				      -->
									<input id="culture4" type="radio" name="culture" value="2">
									<!--
				      -->
									<label for="culture4">&#9733;</label>
									<!--
				      -->
									<input id="culture5" type="radio" name="culture" value="1">
									<!--
				      -->
									<label for="culture5">&#9733;</label>
									<!-- <input type="hidden" name="culture" id="culture"> -->
								</p>

							</div>
							<div id="wrapper ">
								<label>경영진</label>
								<p class="clasificacion">
									<input id="manager1" type="radio" name="manager" value="5">
									<!--
				      -->
									<label for="manager1">&#9733;</label>
									<!--
				      -->
									<input id="manager2" type="radio" name="manager" value="4">
									<!--
				      -->
									<label for="manager2">&#9733;</label>
									<!--
				      -->
									<input id="manager3" type="radio" name="manager" value="3">
									<!--
				      -->
									<label for="manager3">&#9733;</label>
									<!--
				      -->
									<input id="manager4" type="radio" name="manager" value="2">
									<!--
				      -->
									<label for="manager4">&#9733;</label>
									<!--
				      -->
									<input id="manager5" type="radio" name="manager" value="1">
									<!--
				      -->
									<label for="manager5">&#9733;</label>
									<!-- <input type="hidden" name="manager" id="manager"> -->
								</p>
							</div>
						</div>
					</td>
				</tfoot>
			</table>
			<br />
			<div class="row" align="center">
				<div class="col-md-2">
					<button type="button" id="wirte" class="btn btn-default" onclick="validateCheck()">작성
					</button>
				</div>
				<div class="col-md-2">
					<button type="button" class="btn btn-danger">
						<a href="control.do?action=list">취소</a>
					</button>
				</div>
			</div>
		</form>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
		integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
		crossorigin="anonymous"></script>

</body>
</html>