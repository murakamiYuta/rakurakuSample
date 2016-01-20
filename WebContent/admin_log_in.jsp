
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap - Prebuilt Layout</title>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.3.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
</head>
<body>
	<div class="container">  <!-- 全体を囲むコンテナ -->
      	<div class="row">
      	  <div class="col-sm-offset-2 admin_login_header col-sm-7">
          管理者ログイン
          </div>
      	  <div>
      	    <div class="col-sm-offset-2 input-group col-sm-7">
      	      <input type="text" class="form-control" placeholder="IDを入力" aria-describedby="addon1">
   	        </div>

   	      </div>
        </div>

        <div class="row">
      	    <div class="col-sm-offset-2 input-group col-sm-7">
      	      <input type="text" class="form-control" placeholder="passwordを入力" aria-describedby="addon1">
   	        </div>
        </div>

        <div class="row">
      	    <div class="col-sm-offset-2 input-group col-sm-7 text-right">
      	      <s:a href="GoAdminUserAction
" class="btn btn-primary admin_login_squ">ログイン</s:a>
   	        </div>
        </div>

    </div>
</body>
</html>
