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
<title>Bootstrap eCommerce Template</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<link ref="stylesheet" href="css/style.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<jsp:include page="header_log_in.jsp"/>
<hr>

<h2 class="text-center">購入確認</h2>
<div class="container">        <!-- 全体を囲むコンテナ -->


<table class="table table-striped table-bordered">

  <tbody>
    <tr><td>購入日</td><td>2016/01/04</td>
    <tr><td>イベント名</td><td style="width: 60%;word-break: break-all;">新春！田代独演会</td>
    <tr><td>イベント詳細</td><td style="width: 60%;word-break: break-all;">ここに本文が入ります</td>
    <tr><td>公演日</td><td>1990/01/11</td>
    <tr><td>枚数</td><td>100枚</td>
    <tr><td>単価</td><td>500円／枚</td>
    <tr><td>合計金額</td><td>54,000円(税込)</td>

  </tbody>
</table>
<h5 class="text-center">上記の内容でよろしいですか？</h5>
<div class="text-center">
<s:a href="GoPurchaseCompletionAction" class="btn btn-primary btn-sm">はい(購入)</s:a>
<s:a href="GoEventDetailsAction" class="btn btn-primary btn-sm">いいえ(購入内容変更)</s:a>
 </div>
</div>
<hr>
       <jsp:include page="footer.jsp"/>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
</body>
</html>