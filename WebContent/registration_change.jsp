<!-- 頭にこれ貼り付けます。 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- ここまで -->
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap eCommerce Template</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="js/jquery.validationEngine.js"></script>
    <script src="js/jquery.validationEngine-ja.js"></script>
    <script>


         $(function() {
          var changeMaskPasswd = function() {
              $('#passwd')[0].type =
                  $('.mask-passwd')[0].checked ? 'text' :'password';
          }
          $('.mask-passwd').click(function() {
              changeMaskPasswd();
          });
          changeMaskPasswd();
      });


        $(function() {
          var changeMaskPasswd = function() {
              $('#re_passwd')[0].type =
                  $('.mask-passwd')[0].checked ? 'text' :'password';
          }
          $('.mask-passwd').click(function() {
              changeMaskPasswd();
          });
          changeMaskPasswd();
      });

         $(function(){
        jQuery("#form").validationEngine();
      });
    </script>

</head>
<body>
<!-- ヘッダーの引用はこうします -->
<jsp:include page="header_log_in.jsp"/>
<!-- /ヘッダー -->
<hr>
  <div class="container">

    <!-- Brand and toggle get grouped for better mobile display -->

    <hr>
    <h2 class="text-center">登録内容変更</h2>
<div class="container">
  <div class="row">
      <div class="col-xs-1"></div>
   <div class="col-xs-8 col-xs-offset-1 well" >
   <div class="text-center">
      <h4>ログインアカウントの変更</h4>
      <s:form method="post" action="GoChangesConfirmationAction" id="form">
      <div class="left">
        変更内容をを入力して下さい。<br>
        <span class="require">※</span>のついているものは必須入力です。
        <br>
        <br>
        <span class="require">※</span>お名前
        <br>
        <s:fielderror><s:param value="%{'name'}" /></s:fielderror>
        <s:textfield name="name" data-prompt-position="inline" />
        <s:property value="errorName"/>
        <br>
        <br>
        <span class="require">※</span>フリガナ(全角カタカナ)
        <br>
        <s:fielderror><s:param value="%{'name_kana'}" /></s:fielderror>
        <s:textfield name="name_kana" data-prompt-position="inline" />
        <s:property value="errorName_kana"/>
        <br>
        <br>
        <span class="require">※</span>パスワード(半角英数、8文字以上16文字以内)
        <br>
        <s:fielderror><s:param value="%{'password'}" /></s:fielderror>
        <s:textfield type="password" name="password" id="passwd" data-prompt-position="inline" /><br>
        <s:property value="errorPassword"/>
        <br>
        <span class="require">※</span>パスワード(確認用)
        <br>
        <s:fielderror><s:param value="%{'confirm_password'}" /></s:fielderror>
        <s:textfield name="confirm_password" id="re_passwd" data-prompt-position="inline" />
        <s:property value="errorConfirm_password"/>
        <br>
        <input type="checkbox" class="mask-passwd">パスワードを表示
        <br>

        <br>
        <span class="require">※</span>メールアドレス
        <br>
         <s:fielderror><s:param value="%{'email'}" /></s:fielderror>
        <s:textfield name="email" size="50" id="email" data-prompt-position="inline" /><br>
        <s:property value="errorEmail" />
		<br>
        <span class="require">※</span>メールアドレス(確認用)
        <br>
         <s:fielderror><s:param value="%{'confirm_email'}" /></s:fielderror>
        <s:textfield name="confirm_email" size="50" data-prompt-position="inline" />
        <br>
        <br>
        <br>
        カード情報登録
            <br>
            <select class="card" name="cardType">
    <option value="VISA">VISA</option>
    <option value="JCB">JCB</option>
    <option value="MASTER">MASTER</option>
  </select>
            <br>
            カードに記載されている数字を入力して下さい
            <br>
            <s:textfield name="card_num" data-prompt-position="inline" />
            <br>
            有効期限
            <br>
            MONTH / YEAR
            <br>
            <select class="card" name="cardMonth">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
  </select> /
     <select class="card" name="cardYear">
    <option value="16">16</option>
    <option value="17">17</option>
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
    <option value="21">21</option>
    <option value="22">22</option>
    <option value="23">23</option>
    <option value="24">24</option>
    <option value="25">25</option>
    <option value="26">27</option>
    <option value="27">27</option>
    <option value="28">28</option>
    <option value="29">29</option>
    <option value="30">30</option>
    <option value="31">31</option>
  </select>
            <br>
            カード名義を(半角スペースを含め)記入してください
            <br>
   <s:textfield name="cardName" data-prompt-position="inline" />
   			</div>
            <br>
            <br>
        <input type="submit" value="登録" id="submit" class="btn-default btn">

        </s:form>
        </div>
        </div>
        </div>
    </div>
    <div class="text-center">
     <s:a href="GoTopPageAction">トップページへ戻る</s:a>
    </div>
    </div>
    <hr>
<!-- フッターの引用はこうします -->
<jsp:include page="footer.jsp"/>
<!-- /フッター -->
</body>
</html>