<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>
<!--***********************************************************
	*                                                             *
	*                          navbar                             *
	*                                                             *
	************************************************************-->
<nav class="navbar navbar-inverse navbar-fixed-top"
	style="padding-right: 2em; padding-left: 2em;">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${initParam.rootPath }/user/main.do">TryCatch</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="${initParam.rootPath }/com/rankInfo.do"
					style="color: #ffffff">기업</a></li>
				<li><a href="#" style="color: #ffffff">콘테스트</a></li>
				<!-- 수정 요망 company_id-->
				<li><a href="${initParam.rootPath }/user/faq.do" style="color: #ffffff">Q&amp;A</a></li>
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
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: #ffffff">마이페이지 <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a data-toggle="modal" data-target="#joinUpModal"
							id="joinUpM">회원정보수정</a></li>
						<li><a href="/tcb/view/user/portfolio.jsp">마이포트폴리오</a></li>
					</ul></li>
				<li><a data-toggle="modal" data-target="#registerModal"> <span
						class="glyphicon glyphicon-user" style="color: #ffffff">Sign
							Up</span>
				</a></li>
				<li id='loginout'><a data-toggle="modal"
					data-target="#loginModal"><span
						class="glyphicon glyphicon-log-in" style="color: #ffffff">로그인</span>
				</a></li>
				<li><a href=""> <span class="glyphicon glyphicon-briefcase"
						style="color: #ffffff">기업회원</span>
				</a></li>
			</ul>
		</div>
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
							style="font-family: 'arial'" placeholder="비밀번호를 입력하세요"
							name="login_pass">
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
						size="2"><u id="ujoin">회원가입</u></font></a>
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
	*                       joinmodal                             *
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
									type="password" style="font-family: 'arial'"
									placeholder="비밀번호를 입력하세요">
							</div>
						</div>

						<div class="col-md-6 form-group">
							<input class="form-control" id="user_pass2" name="user_pass2"
								type="password" style="font-family: 'arial'"
								placeholder="비밀번호 확인">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input
									class="form-control" id="user_name" name="user_name"
									type="text" aria-describedby="nameHelp" placeholder="이름을 입력하세요">
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

<!--***********************************************************
   *                                                             *
   *                       joinupdate modal                      *
   *                                                             *
   ************************************************************-->


<div class="modal fade" id="joinUpModal" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title text-muted">회원가입 수정</h4>
			</div>

			<div id="modalpadding" class="modal-body">
				<form action="update.do" method="post" name="joinUpForm">
					<div class="form-group">
						<div class="input-group">
							<input class="form-control" id="up_id" name="up_id" type="text"
								readonly>
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
									class="form-control" id="up_pass" name="up_pass"
									type="password" style="font-family: 'arial'">
							</div>
						</div>

						<div class="col-md-6 form-group">
							<input class="form-control" id="up_pass2" name="up_pass2"
								type="password" style="font-family: 'arial'">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-up"></i></span> <input
									class="form-control" id="up_name" name="up_name" type="text"
									aria-describedby="nameHelp">
							</div>
						</div>
						<div class="col-md-6 form-group">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-earphone"></i></span> <input
									class="form-control" id="up_phone" name="up_phone"
									type="text" aria-describedby="nameHelp">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <input
								class="form-control" id="up_email" name="up_email"
								type="email" aria-describedby="emailHelp">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input
								class="form-control" id="up_addr" name="up_addr" type="email"
								aria-describedby="emailHelp">
						</div>
					</div>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-collapse-down"></i></span> <select
							class="form-control" id="up_prio" name="up_prio">
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
					href="javascript:upValidateCheck()">완료</a>
			</div>
		</div>

	</div>
</div>