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
<%@include file="/view/main/com_nav.jsp" %>
       
<div class="container" style="padding-top: 7em; padding-bottom: 5em;
		                        padding-left: 12em; padding-right: 3em;">
<!-- 탭공간  -->
	<div style="padding-bottom:2em;">
		<h1>FAQ</h1>
		<hr>
		<h3>기업 전용 FAQ페이지 입니다.</h3>
	</div>
  
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse1">Q. [회원가입/탈퇴] 기업회원 가입은 무료입니까?</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body">
          Try Catch에 기업회원으로 가입 하시는 데는 일체 비용이 들지 않습니다.<br>
                      즉, 회원가입은 무료입니다.<br>
                      회원가입 시  아이디, 비밀번호, 회사명, 사업자 등록번호 등 기업 정보를 입력하시면<br> 
                      바로 회원가입이 되어 Try Catch의 기업회원 서비스를 이용하실 수 있습니다.<br>
                      가입 시 작성하셨던 정보를 수정하시려면 상단 메뉴 중 기업 로그인 후 <br>
                      마이페이지 > 회원정보 수정 메뉴를 찾아 클릭하시면 기업정보, 가입자정보 등을 수정하실 수 있습니다.        
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
                  회원 로그인 > 기업서비스 > 회원정보 관리에서 회원탈퇴를 선택하여 신청하실 수 있습니다.<br>

                  탈퇴 시 주의사항을 반드시 읽어보신 후 탈퇴를 위한 정보를 모두 입력하면 탈퇴신청이 접수됩니다.<br>

                  즉시 탈퇴처리가 되는 것은 아니며, 운영자 확인을 거쳐 탈퇴가 이루어집니다.<br>
                  운영자 확인까지 1시간 가량 시간이 걸릴 수 있으니 양해해 주시기 바랍니다.<br>

                  탈퇴 후에는 동일 아이디로 다시 가입할 수 없으며, 아이디와 데이터는 복구할 수 없으니 신중하게 선택해 주세요.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse3">Q. [회원가입/탈퇴] 사업자등록증이 없어도 회원가입이 가능한가요??</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">
                      발급받은 사업자등록증의 번호를 입력해야만 회원가입이 가능합니다.<br> 
                      필수 입력 정보로서, 이는 사업자등록번호 도용 등에 의해 발생할 수 있는<br> 
                      피해를 미연에 방지하기 위함이니 양해 바랍니다. 
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse4">Q. [기업정보 관리] 기업정보 중 가입자 이름 변경은 어떻게 하나요?</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
        <div class="panel-body">
                      채용 담당자의 퇴사 등으로 가입자 변경이 필요한 경우 회원 탈퇴 후<br> 
                      재가입 할 필요없이 가입자 정보를 변경하실 수 있습니다.<br>
                      마이페이지 > 회원정보 수정 페이지에서 가입자정보의 가입자명 수정이 가능합니다.
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse5">Q.	[기업정보 관리] 아이디·비밀번호를 잊어버렸습니다. 어떻게 찾나요?</a>
        </h4>
      </div>
      <div id=collapse5 class="panel-collapse collapse">
        <div class="panel-body">
                      아이디를 잃어버리신 경우 사업자등록번호로 찾기/아이핀으로 찾기/<br>
          e-메일로 찾기를 통한 방법이 있습니다.<br>
                      비밀번호를 잃어버리신 경우 사업자등록번호로 찾기/아이핀으로 찾기/<br>
          e-메일로 찾기/전화번호로 찾기 통한<br> 
                      임시비밀번호 발급신청 방법이 있습니다.<br>
                      가입자명의로 아이핀에 등록되어있는 경우는 인증번호입력 절차 없이<br> 
                      아이핀 인증 후 바로 새비밀번호 설정이 가능합니다.<br> 
                      만약, 비밀번호 찾기가 안될 경우 비밀번호 찾기페이지 아래쪽의<br>
          `임시비밀번호발급`으로 접수하시고, <br>
                      신분증을 첨부 또는 아래기재된 e-메일이나 팩스로 발송을 해주시면 <br>
                      임시비밀번호를 발급하여드리며, 알바몬에 등록된 e-메일 또는 핸드폰으로 <br>
                      인증 절차를 통해서도 임시비밀번호발급이 가능하오니 참고 부탁드립니다.<br>  
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#q_a" href="#collapse6">Q.	[지원자 관리] 지원자가 많아 공고를 마감하고 싶습니다.</a>
        </h4>
      </div>
      <div id=collapse6 class="panel-collapse collapse">
        <div class="panel-body">
         <a class="answer">기업회원으로 구인등록 하신 경우,<br>
                    기업서비스 > 알바공고관리 > 게재중인 공고에서 마감시키려는 채용공고를 찾아<br>
                    우측의 [마감] 버튼을 클릭하시면 해당 공고가 마감됩니다.<br>
                    공고를 마감해도 “재등록” 기능을 통해 기존의 모집내용 그대로 공고를 등록하실 수 있습니다.</a>            
        </div>
      </div>
    </div>
   
  </div>
</div>
<!-- footer -->
<%@include file="/view/main/footer.jsp" %>
</body>
</html>