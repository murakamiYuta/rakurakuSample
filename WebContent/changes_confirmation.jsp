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
<h2 class="text-center">変更内容確認</h2>
    <div class="container">
    <table class="table table-striped table-bordered table-condensed">
    <tr>
        <td>お名前</td>
        <td><s:property value="#session.updateName" /></td>
        </tr>
        <tr>
        <td>フリガナ</td>
        <td><s:property value="#session.updateName_kana" /></td>
        </tr>
        <tr>
        <td>パスワード</td>
        <td><s:property value="#session.updatePassword" /></td>
        </tr>
        <tr>
        <td>メールアドレス</td>
        <td><s:property value="#session.updateNewEmail" /></td>
        </tr>
        <tr>
        <td>クレジットカード番号</td>
        <td><s:property value="#session.updateCard_num" /></td>
        </tr>

    </table>
    <div style="text-align:center;">
    以上の内容で変更いたします。よろしいですか？<br>
        <a href="GoChangeCompletionAction" class="btn btn-default btn-sm">完了</a>
        <a href="GoRegistrationChangeAction" class="btn btn-default btn-sm">戻る</a>
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