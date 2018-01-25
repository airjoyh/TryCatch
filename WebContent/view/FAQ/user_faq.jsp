<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>

<title>TryCatch</title> 
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
<style type="text/css">
#modalpadding {
	padding-top: 30px;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 30px;
}
</style>
</head>


<body style="background-color: #f4f4f4;">

 <!-- navbar -->
<%@include file="/view/main/nav.jsp" %>
       
<div class="container" style="padding-top: 7em; padding-bottom: 5em;
		                        padding-left: 12em; padding-right: 3em;">
<!-- 탭공간  -->
	<div style="padding-bottom:2em;">
 		 <h1>FAQ</h1>
  		 <hr>
 		 <h3>구직자 전용 FAQ페이지 입니다.</h3>
	</div>
	
  
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse1">Q. [회원가입/탈퇴] 회원가입은 무료인가요?</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body">
          Try Catch 회원가입은 무료입니다.<br>

                     회원가입 방법으로는 '개인 회원가입','기업 회원가입'이 있습니다.<br>

          Try Catch 아이디 만들기<br>
                     아이디, 비밀번호, 이메일 주소 등 간단한 개인정보를 입력하면 <br>
                     바로 회원가입이 되어 알바몬의 개인회원 서비스를 이용하실 수 있습니다.<br>
     
          * 가입 시 작성한 정보를 수정은 로그인 후 마이페이지 > 회원정보 수정 메뉴에서 하실 수 있습니다.         
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse2">Q. [회원가입/탈퇴] 회원탈퇴는 어디에서 하나요?</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
                  회원탈퇴는 회원 로그인 > 개인서비스 > 회원정보 관리 페이지의 회원탈퇴 메뉴에서 신청하실 수 있습니다.<br>

                  탈퇴 시 주의사항을 반드시 읽어보신 후 탈퇴를 위한 정보를 모두 입력하면 탈퇴신청이 접수됩니다.<br>

                  즉시 탈퇴처리가 되는 것은 아니며, 운영자 확인을 거쳐 탈퇴가 이루어집니다.<br>
                  운영자 확인까지 1시간 가량 시간이 걸릴 수 있으니 양해해 주시기 바랍니다.<br> 
                  탈퇴처리가 되면 회원님의 메일로 탈퇴 되었다는 메일이 발송됩니다.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse3">Q. [회원가입/탈퇴] 개인회원으로는 채용공고를 등록할 수 없나요?</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
                      기본적으로 채용공고 등록/관리는 기업회원님께 제공하는 서비스입니다.<br>
                     기업회원으로 가입/로그인 후 공고등록 이용을 부탁 드립니다.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse4">Q. [회원가입/탈퇴] 미성년자는 회원가입이 안 되나요?</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
        <div class="panel-body">
                      주민등록 상의 연령이 만 15세 미만인 경우, “근로기준법 제 64조” 내용에 근거하여<br>
                      취업이 불가능하므로 구인구직을 목적으로 하는 알바몬에 회원가입 하실 수 없습니다.<br> 

                      단, 근로기준법에 따라 만 13세 이상 15세 미만자 중 관할 지방고용노동관서에서 <br>
          “취직인허증”을 발급받은 경우에는 예외적으로 취업이 허용되므로 취직인허증을 우편 또는 팩스로<br> 
                      보내주신 분에 한해서 본 사이트의 회원가입을 허가하고 있습니다.<br>

                      또한 만 14세 미만인 분은 취직인허증과 함께 회원가입을 위한 부모님 동의서를 제출하셔야 합니다.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse5">Q.	[회원정보관리]아이디와 비밀번호를 다른 걸로 변경할 수 있나요?</a>
        </h4>
      </div>
      <div id=collapse5 class="panel-collapse collapse">
        <div class="panel-body">
                     네, 가능합니다.<br>
                     아이디 및 비밀번호 변경은 로그인 후 마이페이지 > 회원정보 수정 에서 수정하실 수 있습니다.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse6">Q.	[회원정보관리] 회원정보는 어디서 수정할 수 있나요?</a>
        </h4>
      </div>
      <div id=collapse6 class="panel-collapse collapse">
        <div class="panel-body">
                     회원정보는 로그인 후 마이페이지 > 회원정보 수정 에서 수정하실 수 있습니다.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse7">Q.	[기업후기] 기업 후기는 내가 쓴 글만 볼 수 있나요?</a>
        </h4>
      </div>
      <div id=collapse7 class="panel-collapse collapse">
        <div class="panel-body">
                      기업후기는 회원가입한 사람은 누구나 볼 수 있습니다.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse8">Q.	[기업후기] 작성한 기업후기를 수정 하고 싶어요. 어떻게 하나요?</a>
        </h4>
      </div>
      <div id=collapse8 class="panel-collapse collapse">
        <div class="panel-body">
                      작성한 기업후기를 수정하고 싶을 시 <br> 
                      후기 > 글 선택 > 수정 메뉴를 누르시고 글을 다시 작성하신 후 <br>
                      등록하시면 됩니다.                      
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse9">Q.	[기업후기] 익명이 보장되나요?</a>
        </h4>
      </div>
      <div id=collapse9 class="panel-collapse collapse">
        <div class="panel-body">
                     네. 기업후기는 철저하게 <span style="color:red">익명으로 처리</span>되오니 솔직한 경험을 공유해주세요.                         
        </div>
      </div>
    </div>
    
 </div>
   
</div>
<!-- footer -->
<%@include file="/view/main/footer.jsp" %>
</body>
</html>