<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<script type="text/javascript"
	src="${initParam.rootPath }/js/jquery-3.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript">
	function showLoginout(msg) {//msg는 ${loginState }--> LoginAction에서 로그인하면 세션을 'login'이라는 메시지를 셋어트리뷰트한다,
		//세션 로그인 중에는 로그아웃 <a>태그가 보이게하고 아닐때는 로그인 태그가 보이게 하기.
		var loginout = document.getElementById('loginout');
		//var msg ='${loginState }';

		//세션이 연결되어있을 때 로그인
		alert("로그인 상태: " + msg);
		if (msg == "login") {//로그인 상태일때!
			loginout.innerHTML = '<a href="logout.do">로그아웃</a>';
		} else {//로그인 상태가 아닐때!
			loginout.innerHTML = '<a data-toggle="modal" data-target="#loginModal">로그인</a>';
		}
		//아닐 때 로그아웃
	}

	window.onload = function() {//화면을 띄울 때(F5)마다 동작하는 function
		showLoginout('${loginState }');
	}

	function requestLoginCheck() {//로그인을 했을때 실행
		var login_id = document.getElementById('login_id').value;
		var login_pass = document.getElementById('login_pass').value;
		//alert(login_id+', '+login_pass);
		sendRequest('login.do', 'login_id=' + login_id + '&login_pass='
				+ login_pass, resultLoginCheck, 'POST');
		//login.do --> 로그인액션(login_id와 login_pass가 필요)--> login_id와 login_pass의 값을 전달한다.(POST), resultLoginCheck함수 실행, 
	}

	function resultLoginCheck() {//콜백함수(이벤트 발생 후 실행하는 함수)
		if (xhr.readyState == 4) {//요청한 데이터(페이지를 전부 받았을 때)
			if (xhr.status == 200) {//서버의 상태 체크
				var str = xhr.responseText;//서버가 전달한 데이터 얻어오기.
				//login성공이면 "success", 실패면 "fail"
				alert(str);
				str = str.replace(/(\s*)/g, ""); //모든 공백 제거

				if (str == 'success') {//로그인 성공했을 때
					showLoginout('login');//메인뷰에서 showLoginout함수를 실행하고 'login'($loginState)을 파라미터로 전달전달	
					window.close();
					$('#loginModal').modal('hide');//로그인 모달창 닫기

				} else {//로그인 실패했을 때
					alert('아이디 또는 비밀번호를 잘못입력하였습니다..');
					document.loginForm.login_id.focus();
				}

			}
		}
	}

	$("#openJoinForm").click(function() {
		$("#joinModal").modal();
		$('#loginModal').modal('hide');//로그인 창 닫기!! 안된다 시발
		//window.close();
	});

	function requestIdCheck() {//중복확인을 눌렀을때
		var user_id = document.joinForm.user_id.value;
		sendRequest('idCheck.do', 'user_id=' + user_id, resultIdCheck, 'POST');
		//idCheck.do --> idCheckAction실행 전에--> idCheckActionForm을 찾아서 유효성 검사를 하고 (user_id값을 파라미터로 받아서)
		//idCheckAction실행! 
	}

	function resultIdCheck() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var str = xhr.responseText;
				//idCheckResponse.jsp에서 키값 "duplicate"로 받은 데이터
				//"사용할 수 없는 아이디입니다." or "사용가능한 아이디입니다."

				var user_id = document.joinForm.user_id.value;
				var user_idExp = /^[a-zA-z0-9]{6,15}$/;
				var idCheck = document.getElementById('idCheck');
				if (!user_idExp.test(user_id)) {//유효성 검사
					str = '아이디는 6~15자리 영문 숫자조합!'
					document.joinForm.user_id.focus();

				}
				idCheck.innerHTML = '<font color=red size=1>' + str + '</font>';
			}
		}
	}

	function validateCheck() {//자바 스크립트 유효성 검사
		//빈값체크, 숫자체크, 문자열 조합
		var f = document.joinForm; //f: <from>엘리먼트
		var id = f.user_id.value;
		var pass = f.user_pass.value;
		var pass2 = f.user_pass2.value;

		var user_idExp = /^[a-zA-z0-9]{6,15}$/;
		//var user_phone1Exp = new RegExp("^[0-9]{2,4}$"); //문자열에서는 역슬래쉬 2개
		var user_phoneExp = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
		//패턴 안에서는 역슬래쉬 하나!!!!!!!

		var user_addr = f.user_addr.value;
		var user_emailExp = /^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+$/;
		var user_prio = f.user_prio.value;

		if (!user_idExp.test(f.user_id.value)) {
			alert("아이디는 6~15자리!!");
			f.user_id.focus();
		} else if (f.user_pass.value == '') {
			alert('비밀번호를 입력하세요!');
			f.user_pass.focus();
		} else if (f.user_pass2.value == '') {
			alert('비밀번호 확인을 입력하세요!');
			f.user_pass2.focus();
		} else if (f.user_pass.value !== f.user_pass2.value) {
			alert('비밀번호가 일치하지 않습니다.');
			f.user_pass.value = '';
			f.user_pass2.value = '';
			f.user_pass.focus();
		} else if (f.user_name.value == '') {
			alert('이름을 입력하세요.');
			f.user_name.focus();
		} else if (!(user_phoneExp.test(f.user_phone.value))) {
			alert('핸드폰 번호를 올바르게 입력하세요.');
			f.user_phone.value = '';
			f.user_phone.focus();
		} else if (!user_emailExp.test(f.user_email.value)) {
			alert('잘못된 이메일 형식입니다.');
			f.user_email.value = '';
			f.user_email.focus();
		} else if (f.user_addr.value == '') {
			alert('주소를 입력하세요.');
			f.user_addr.focus();

		} else if (f.user_prio.value == '원하는 기업조건을 선택하세요') {
			alert('원하는 기업조건을 선택하세요');
			f.user_prio.focus();
		} else {
			//폼 내에 모두 유효한 데이터가 입력되었다면
			//중복확인 됬는지 체크
			var idCheck = document.getElementById('idCheck').innerHTML;
			//alert(d1);
			if (idCheck.indexOf('사용가능한 아이디입니다.') >= 0) {//'사용가능한 아이디입니다.'가 포함되어 있다면
				document.joinForm.submit(); //<form>태그내의 action속성의 URL로 폼데이터를 전송!!
				//join.do 실행
				//window.close(); --> 이거 그냥 close하면 액션 실행 안됨!!
			} else if (idCheck.indexOf('사용할 수 없는 아이디입니다.') >= 0) {//'사용할 수 없는 아이디입니다.'가 포함되어있다면
				alert('중복된 아이디입니다.');
			} else {//중복확인 체크를 안눌렀을 때
				alert('중복확인을 해주세요.')
			}
		}

	} //validateCheck
</script>

<title>TryCatch</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap3 for trycatch -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">

</head>
<body>
	<!--***********************************************************
	*                                                             *
	*                          navbar                             *
	*                                                             *
	************************************************************-->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="#">기업</a></li>
				<li><a href="#">콘테스트</a></li>
				<li><a href="#">후기</a></li>
				<li><a href="#">Q&A</a></li>
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
						class="glyphicon glyphicon-user">Sign Up</span>
				</a></li>
				<li><span id="loginout"></span></li>
				<li><a href=""> <span class="glyphicon glyphicon-briefcase"></span>
						기업회원
				</a></li>
			</ul>
		</div>
	</nav>
	<!--***********************************************************
	*                                                             *
	*                         Login modal                         *
	*                                                             *
	************************************************************-->
	<div class="modal fade" id="loginModal" role="dialog">
		<div class="modal-dialog modal-sm">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-muted ">로그인</h4>
				</div>

				<div class="modal-body">
					<form name="loginForm" method="post">
						<div class="form-group">
							<!-- <label for="email"></label>  -->
							<input type="text" class="form-control" id="login_id"
								placeholder="아이디를 입력하세요" name="login_id">
						</div>
						<div class="form-group">
							<!-- <label for="pwd"></label> -->
							<input type="password" class="form-control" id="login_pass"
								placeholder="비밀번호를 입력하세요" name="login_pass">
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox1" value="option1"> <label
								class="form-check-label" for="inlineCheckbox1"> <font
								size="2">기억하시겠습니까?</font>
							</label>
						</div>
						<button type="button" class="btn btn-primary btn-block"
							onclick="requestLoginCheck()">로그인</button>
					</form>
				</div>

				<div class="modal-footer">
					<div class="text-center">
						<a data-toggle="modal" data-target="#joinModal" id="openJoinForm"><font
							size="2"><u>회원가입</u></font></a>
					</div>
					<div class="text-center">
						<a href="" class="text-center"><font size="2"><u>아이디/비밀번호
									찾기</u></font></a>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!--***********************************************************
	*                                                             *
	*                       ㅓjoinmodal                        *
	*                                                             *
	************************************************************-->
	<div class="modal fade" id="joinModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-muted">회원가입</h4>
				</div>

				<div id="modalpadding" class="modal-body">
					<form action="join.do" method="post" name="joinForm">
						<div class="form-group">
							<div class="input-group">
								<input class="form-control" id="user_id" name="user_id"
									type="text" placeholder="아이디를 입력하세요">
								<div class="input-group-btn">
									<button class="btn btn-info" type="button"
										onclick="requestIdCheck()">중복확인</button>
								</div>
							</div>
							<div id="idCheck"></div>
						</div>
						<div class="row">
							<div class="col-md-6 form-group">
								<!-- <label for="pwd"></label> -->
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input
										class="form-control" id="user_pass" name="user_pass"
										type="password" placeholder="비밀번호를 입력하세요">
								</div>
							</div>

							<div class="col-md-6 form-group">
								<input class="form-control" id="user_pass2" name="user_pass2"
									type="password" placeholder="비밀번호 확인">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-group">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input
										class="form-control" id="user_name" name="user_name"
										type="text" aria-describedby="nameHelp"
										placeholder="이름을 입력하세요">
								</div>
							</div>
							<div class="col-md-6 form-group">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-earphone"></i></span> <input
										class="form-control" id="user_phone" name="user_phone"
										type="text" aria-describedby="nameHelp"
										placeholder="ex)010-1111-1111">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input
									class="form-control" id="user_email" name="user_email"
									type="email" aria-describedby="emailHelp"
									placeholder="이메일을 입력하세요">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-home"></i></span> <input
									class="form-control" id="user_addr" name="user_addr"
									type="email" aria-describedby="emailHelp"
									placeholder="주소를 입력하세요">
							</div>
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-collapse-down"></i></span> <select
								class="form-control" id="user_prio" name="user_prio">
								<option selected="selected" class="text-primary">원하는 기업조건을 선택하세요</option>
								<option>복지 및 급여</option>
								<option>승진기회 및 가능성</option>
								<option>업무와 삶의 균형</option>
								<option>사내문화</option>
								<option>경영진</option>
							</select>
						</div>

					</form>
				</div>

				<div class="modal-footer">
					<a class="btn btn-primary btn-block"
						href="javascript:validateCheck()">완료</a>
				</div>
			</div>

		</div>
	</div>


</body>
</html>