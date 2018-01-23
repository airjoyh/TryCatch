<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">콘테스트 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">문제출제</a></li>
						<li><a href="#">문제채점</a></li>
					</ul></li>				
				<li><a href="${initParam.rootPath }/review/control.do">후기</a></li>
				<li><a href="#">Q&amp;A</a></li>
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
				<li><a data-toggle="modal" data-target="#joinModal"> <span
						class="glyphicon glyphicon-user">Sign Up</span>
				</a></li>
				<li id='loginout'><a data-toggle="modal"
					data-target="#loginModal"><span
						class="glyphicon glyphicon-log-in">로그인</span> </a></li>
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
								placeholder="아이디를 입력하세요" name="login_id" required>
						</div>
						<div class="form-group">
							<!-- <label for="pwd"></label> -->
							<input type="password" class="form-control" id="login_pass"
								style="font-family: 'arial'" placeholder="비밀번호를 입력하세요"
								name="login_pass" required>
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
		<div class="container">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-muted">회원가입</h4>
				</div>

				<div id="modalpadding" class="modal-body">
					<form name="joinForm" action="join.do" method="POST">
						<div class="form-group">
							<div class="row">
								<div class="col-md-9">
									<label for="exampleInputId">아이디</label> <input
										class="form-control" name="company_id" id="company_id"
										type="text" aria-describedby="idHelp" placeholder="아이디을 입력하세요">
								</div>
								<div class="col-md-3">
									<br> <input type="button" value="중복확인" onclick="IdCheck()">
									<p id="idCheck"></p>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<!-- <label for="pwd"></label> -->
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-lock"></i></span> <input
											class="form-control" id="company_pass" name="company_pass"
											type="password" style="font-family: 'arial'"
											placeholder="비밀번호를 입력하세요">
									</div>
								</div>

								<div class="col-md-6">
									<input class="form-control" id="company_pass2"
										name="company_pass2" type="password"
										style="font-family: 'arial'" placeholder="비밀번호 확인">
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<label for="exampleInputCompanyname">기업명</label> <input
										class="form-control" name="company_name" id="company_name" size="5"
										type="text" aria-describedby="nameHelp"
										placeholder="기업명을 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">
										<label for="companyBuild">기업 설립년도</label>
										<p>
											Date: <input type="text" name="company_year"
												id="company_year" size="30px">
										</p>
									</div>
									<div class="col-md-6">
										<label for="exampleInputCompanyname">매출액</label> <input
											class="form-control" name="company_turnover"
											id="company_turnover" type="text" size="10px"
											placeholder="매출액을 입력하세요">
									</div>
								</div>
							</div>
							<div class="form-group">
							  <div class="form-row">
								<label for="exampleInputCompanyname" style="text-align: left;">기업규모</label> <input
									class="form-control" name="company_size" id="company_size"
									type="text" aria-describedby="nameHelp"
									placeholder="기업규모를 입력하세요">
							  </div>		
							</div>
							<div class="form-group">
								<label for="exampleInputCompanyname">사업자 등록번호</label>
								<div class="form-row">
									<div class="col-md-12">
										<input class="form-control" name="company_number"
											id="company_number" type="text" size="15">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputCompanyname">기업주소</label> <input
									class="form-control" name="company_addr" id="company_addr"
									type="text" aria-describedby="nameHelp"
									placeholder="기업주소를 입력하세요">
							</div>
							<div class="form-group">
								<label for="exampleInputCompanyname">기업사이트</label> <input
									class="form-control" name="company_site" id="company_site"
									type="text" aria-describedby="nameHelp"
									placeholder="기업사이트를 입력하세요">
							</div>
							<div class="form-group">
								<label for="exampleInputCompanyname">기업소개</label> <br>
								<textarea rows="3" cols="81" name="company_intro"
									id="company_intro" placeholder="기업소개를 하세요"></textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputCompanyname">채용인원수</label> <input
									class="form-control" name="company_hireNumber"
									id="company_hireNumber" type="text" size="10"
									placeholder="채용할 인원수를 입력하시오"> <br>
								<fieldset>
									<label for="job">산업군</label> 
									<select id="company_line" name="company_line">
										<option value="==선택==">==선택==</option>
										<optgroup label="사무직">
											<option value="frontend_developer">Front-End Developer</option>
											<option value="php_developor">PHP Developer</option>
											<option value="python_developer">Python Developer</option>
											<option value="rails_developer"> Rails Developer</option>
											<option value="web_designer">Web Designer</option>
											<option value="WordPress_developer">WordPress Developer</option>
										</optgroup>
										<optgroup label="Mobile">
											<option value="Android_developer">Androild Developer</option>
											<option value="iOS_developer">iOS Developer</option>
											<option value="mobile_designer">Mobile Designer</option>
										</optgroup>
										<optgroup label="Business">
											<option value="business_owner">Business Owner</option>
											<option value="freelancer">Freelancer</option>
										</optgroup>
										<optgroup label="Other">
											<option value="secretary">Secretary</option>
											<option value="maintenance">Maintenance</option>
										</optgroup>
									</select> <br> <label>요구스킬</label><br> 
									<input type="checkbox" value="skill_java" name="skill_java" checked="checked"><label
										class="light" for="java">Java</label>
								    <input type="checkbox" value="skill_jquery" name="skill_jquery"><label
										class="light" for="jquery">jQuery</label> 
								    <input type="checkbox" value="skill_python" name="skill_python"><label class="light" for="python">Python</label>
									<input type="checkbox"  value="skill_xml"
										name="skill_xml"><label class="light" for="xml">XML</label>
									<input type="checkbox"  value="skill_css"
										name="skill_css"><label class="light" for="css">CSS</label>
									<input type="checkbox"  value="skill_pro"
										name="skill_pro"><label class="light" for="pro">Programming</label>

								</fieldset>

								<div class="form-group">
									<label for="exampleInputCompanyname">담당자 이름</label> <input
										class="form-control" name="manager_name" id="manager_name"
										type="text" aria-describedby="nameHelp"
										placeholder="채용담당자명 입력">
								</div>
								<div class="form-group">
									<div class="form-row">
										<label for="exampleInputPassword1">담당자 이메일</label> <input
											class="form-control" name="manager_email" id="manager_email"
											type="text" placeholder="채용담당자 이메일 입력하세요">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputCompanyname">소속팀 이름</label> <input
									class="form-control" name="team_name" id="team_name"
									type="text" aria-describedby="nameHelp"
									placeholder="채용 소속팀 이름 입력">
							</div>
							<div class="form-group">
								<label for="exampleInputCompanyname">담당자 전화번호</label>
								<div class="form-row">
									<div class="col-md-12">
										<input class="form-control" name="manager_tel"
											id="manager_tel" type="text" size="15">
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<div class="col-md-6">
									<a class="btn btn-primary btn-block"
										href="javascript:validateCheck()">회원가입</a>
								</div>
								<div class="col-md-6">
									<a class="btn btn-danger btn-block" type="reset"
										href="javascript:">취소</a>
								</div>
							</div>
					</form>
				</div>
				<div class="text-center">
					<a class="d-block small mt-2" /></a>
				</div>
			</div>
		</div>
	</div> 