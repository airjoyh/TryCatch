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
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

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
<body>
	<!--***********************************************************
	*                                                             *
	*                             footer                          *
	*                                                             *
	************************************************************-->
    <footer class="footer text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h4 class="text-uppercase mb-4">About TryCatch</h4>
            <p class="lead mb-0">
              <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
          </div>
        </div>
      </div>
    </footer>
	<div class="copyright text-center">
		<div class="container">
			<div class="col-md-12">
				Copyright &copy; TryCatch 2018
			</div>
		</div>
	</div>
</body>
</html>