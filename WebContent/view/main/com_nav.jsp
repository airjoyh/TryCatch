<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">TryCatch</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="#">인재검색</a></li>
				<li><a href="#">콘테스트개최</a></li>
				<li><a href="${initParam.rootPath }/review/control.do">후기</a></li>
				<li><a href="${initParam.rootPath }/view/Q&A/q&a.jsp">Q&amp;A</a></li>
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
						개인회원
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
    *                         Join modal - 이한별                                          *
    *                                                             *
    ************************************************************-->

	<div class="modal fade" id="joinModal" role="dialog">
		<div class="modal-dialog">


			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-muted ">기업 회원가입</h4>
				</div>


				<div class="modal-body" id="modalpadding">
					<form action="join.do" method="post" name="joinForm">
						
						<div class="form-group">
							<div class="input-group">
								<input class="form-control" id="company_id" name="company_id"
									type="text" placeholder="아이디를 입력하세요" equired autofocus>
								<div class="input-group-btn">
									<button class="btn btn-defalt" type="button"
										onclick="IdCheck()">중복확인</button>
								</div>
							</div>
							<div id="idCheck"></div>
						</div>
						
						<br>
						<div class="row">
							<div class="col-md-6 form-group">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="glyphicon glyphicon-lock"></i></span> <input
										class="form-control" id="company_pass" name="company_pass"
										type="password" style="font-family: 'arial'"
										placeholder="비밀번호를 입력하세요">
							 </div>	
							</div>	
							
							<div class="col-md-6 form-group">
							   <input class="form-control" id="company_pass2"
									name="company_pass2" type="password"
									style="font-family: 'arial'" placeholder="비밀번호 확인">
							   
							</div>
						</div>
                       
                       <br>
						<div class="row">
							<div class="col-md-12 form-group">
								<div class="input-group">
									<span class="input-group-addon">Name</span> <input
										class="form-control" id="company_name" name="company_name"
										type="text" aria-describedby="nameHelp"
										placeholder="기업명을 입력하세요">
								</div>
							</div>
						</div>

                       <br>
						<div class="row">
							<div class="col-md-6 form-group">
								<p>기업 설립년도를 선택하세요</p>
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="glyphicon glyphicon-calendar"></i></span> <input
										class="form-control" id="company_year" name="company_year"
										type="month">
								</div>
							</div>
						<div class="col-md-6 form-group">
						  <p style="color:white">매출액을 입력해주세요</p>
						   <div class="input-group">
						     <span class="input-group-addon">Sales</span>
							 <input class="form-control" id="company_turnover" name="company_turnover" 
							        type="text" placeholder="매출액을 입력하세요">
						   </div>
						</div>
						</div>
                       
                        <br>
                        <div class="row">
						<div class="form-group">
						  <div class="col-md-5 form-group">
						  <label for="company_size">기업 규모</label>
						  <div class="input-group">
						     <span class="input-group-addon">Scale</span>
						     <select class="form-control" id="company_size" name="company_size">
						        <option value="==선택==">==선택==</option>
						        <option value="large">대기업 (1000명 이상)</option>
						        <option value="middle">중견기업 (500명 이상)</option>
						        <option value="small">중소기업 (50명 이상)</option>
						        <option value="tooSmall">소기업 (50명 미만)</option>
						     </select>			
						  </div>
						  </div>   
						</div>
                        </div>
                       
						<br>
						<div class="row">
						<div class="col-md-12 form-group">
						   <div class="input-group">
						     <span class="input-group-addon">Number</span>
							 <input class="form-control" id="company_number" name="company_number" 
							        type="text" placeholder="사업자 등록번호를 입력하세요">
						   </div>   
						</div>
						</div>
						
						<br>
						<div class="form-group">
						   <div class="input-group">
						    <span class="input-group-addon">Address</span>
							<input class="form-control" id="company_addr" name="company_addr" 
							       type="text" placeholder="기업 주소를 입력하세요">
						   </div>		
						</div>
						
						<br>
						<div class="form-group">
						   <div class="input-group">
						     <span class="input-group-addon">Site</span>
							 <input class="form-control" id="company_site" name="company_site" 
							        type="text" placeholder="기업 홈페이지 주소를 입력하세요">
					       </div>			
						</div>
						
						<br>
						<div class="form-group">
						   <div class="input-group">
							<label for="company_intro">기업 소개</label><br>
							<textarea class="form-control" cols="67" rows="5" id="company_intro"
							          name="company_intro" placeholder="기업 소개글을 입력하세요"></textarea>
						   </div>
						</div>
                       
						<br>
						<div class="form-group">
						   <div class="input-group">
						    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							<input class="form-control" id="company_hireNumber" name="company_hireNumber" 
							       type="text" placeholder="채용할  인원수를 입력하세요">
					       </div>			
						</div>
                       
                       <br>
                       <div class="row">
					    <div class="col-md-9 form-group">
					    <label for="company_line">기업 산업군</label>		
						  <div class="input-group">
							<span class="input-group-addon">
							<i class="glyphicon glyphicon-collapse-down"></i></span>
							<select class="form-control" id="company_line" name="company_line">
								<option selected="selected" class="text-primary">==선택==</option>
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
							</select>
						   </div>	
						 </div>
					   </div>	
						
						<br>
						<div class="row">
						 <div class="col-md-11 form-group">
						  <div class="input-group">
							<label>요구스킬</label><br>
							<p>다중 선택 가능 합니다.</p>
							
							<div class="form-control">
                            <input type="checkbox" id="skill_java" value="skill_java" name="skill_java"><label class="light" for="java">Java</label>
                            <input type="checkbox" id="skill_jquery" value="skill_jquery" name="skill_jquery"><label class="light" for="jquery">jQuery</label>
                            <input type="checkbox" id="skill_python" value="skill_python" name="skill_python"><label class="light" for="python">Python</label>
                            <input type="checkbox" id="skill_xml" value="skill_xml" name="skill_xml"><label class="light" for="xml">XML</label>
                            <input type="checkbox" id="skill_css" value="skill_css" name="skill_css"><label class="light" for="css">CSS</label>
                            <input type="checkbox" id="skill_pro" value="skill_pro" name="skill_pro"><label class="light" for="pro">Programming</label>
                            </div>
                         </div>
                         </div>	
						</div>
						
						<br>
						<div class="form-group">
						   <div class="input-group">
						    <span class="input-group-addon">Name</span>
							<input class="form-control" id="manager_name" name="manager_name" 
							       type="text" placeholder="담당자의 이름을 입력하세요">
						   </div>		
						</div>
						
						<br>
						<div class="form-group">
						   <div class="input-group">
						    <span class="input-group-addon">E-mail</span>
							 <input class="form-control" id="manager_email" name="manager_email" 
							        type="text" placeholder="담당자의 이메일을 입력해주세요">
						   </div>		
						</div>
						 
						<br>
						<div class="form-group">
						   <div class="input-group">
						    <span class="input-group-addon">Name</span>
							 <input class="form-control" id="team_name" name="team_name" 
							        type="text" placeholder="채용 소속팀 이름을 입력해주세요">
						   </div>		
						</div>
						
						<br>
						<div class="form-group">
						   <div class="input-group">
						     <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
							  <input class="form-control id="manager_tel" name="manager_tel" 
							         type="text" placeholder="담당자의 전화번호를 입력해주세요">
					       </div>			
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