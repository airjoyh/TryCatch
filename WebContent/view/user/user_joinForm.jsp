<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>회원가입</title>
  <!-- Bootstrap core CSS-->
  <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="../../css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5" id="modal-joinForm">
      <div class="card-header">회원가입</div>
      <div class="card-body">
        <form>
          <div class="form-group">
             <div class="form-row">
              <div class="col-md-8">
                <label for="id">아이디</label>
                <input class="form-control" id="id" type="text" placeholder="아이디를 입력하세요">
              </div>
              <div class="col-md-4">
              	<label for="id">.</label>
                <a class="btn btn-primary btn-block" href="">중복확인</a>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">비밀번호</label>
                <input class="form-control" id="exampleInputPassword1" type="password" placeholder="비밀번호를 입력하세요">
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">비밀번호 확인</label>
                <input class="form-control" id="exampleConfirmPassword" type="password" placeholder="동일한 비밀번호를 입력하세요">
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">이름</label>
                <input class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="이름을 입력하세요">
              </div>
              <div class="col-md-6">
                <label for="exampleInputLastName">연락처</label>
                <input class="form-control" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="ex)010-3453-7893">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">이메일</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="이메일을 입력하세요">
          </div>
          <div class="form-group">
            <label for="address">주소</label>
            <input class="form-control" id="address" type="email" aria-describedby="emailHelp" placeholder="주소를 입력하세요">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">선호하는 기업 선택 조건을 선택하세요</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="이메일을 입력하세요">
          </div>
          <a class="btn btn-primary btn-block" href="main.jsp">완료</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-2"></a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
