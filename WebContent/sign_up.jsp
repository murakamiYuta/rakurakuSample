<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
              $('.aaa')[0].type =
                  $('.mask-passwd')[0].checked ? 'text' :'password';
          }
          $('.mask-passwd').click(function() {
              changeMaskPasswd();
          });
          changeMaskPasswd();
      });
        
        
        $(function() {
          var changeMaskPasswd = function() {
              $('.bbb')[0].type =
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
        
        
      $(function() {
	$('#submit').attr('disabled', 'disabled');
	
	$('#check').click(function() {
		if ($(this).prop('checked') == false) {
			$('#submit').attr('disabled', 'disabled');
		} else {
			$('#submit').removeAttr('disabled');
		}
	});
});      
    </script>
    
</head>
<body>
    <jsp:include page="header_log_out_sign_up.jsp"/>
<nav>
  <div class="container"> 
    
    <!-- Brand and toggle get grouped for better mobile display -->

    <hr>
    <h2 class="text-center">新規登録</h2>
<div class="container">
  <div class="row">
      <div class="col-xs-1"></div>
    <div class="col-xs-7 well" >
      <h4 class="text-center">ログインアカウントの新規作成</h4>
        <div class="text-center">
        <div class="left">
        会員情報を入力して下さい。<br>
        <span class="require">※</span>のついているものは必須入力です。
        <br>
        <s:form method="post" action="GoSignUpConfirmationAction
" id="form">
        <br>
        <span class="require">※</span>お名前
        <br>
        <input type="text" name="uji" class="validate[required] text-input" data-prompt-position="inline">
        <br>
        <span class="require">※</span>フリガナ(全角カタカナ)
        <br>
        <input type="text" name="uji" class="validate[required,custom[kana]] text-input" data-prompt-position="inline">
        <br>
        <br>
        <span class="require">※</span>パスワード(半角英数、8文字以上16文字以内)
        <br>
        <input type="password" name="pass"class="aaa validate[required,custom[onlyLetterNumber],minSize[8],maxSize[16]] text-input" id="passwd" data-prompt-position="inline">
        <br>
        <span class="require">※</span>パスワード(確認用)
        <br>
        <input type="password" name="pass" class="bbb validate[required,equals[passwd],custom[onlyLetterNumber],minSize[8],maxSize[16]] text-input" id="re_passwd" data-prompt-position="inline">
        <br>
        <input type="checkbox"
        class="mask-passwd">パスワードを表示
        <br>
        <br>
        <span class="require">※</span>メールアドレス
        <br>
        <input type="text" name="ue" class="form-contorol validate[required,custom[email]] text-input" size="50" id="email" data-prompt-position="inline">
       
        <br>
        <span class="require">※</span>メールアドレス(確認用)
        <br>
        <input type="text" name="ue" class="form-contorol validate[required,custom[email],equals[email]] text-input" size="50" data-prompt-position="inline">
        <br>
        <br>
        <br>
        カード情報登録
            <br>
            <select class="card",name="cardType">
    <option value="VISA">VISA</option>
    <option value="JCB">JCB</option>
    <option value="MASTER">MASTER</option>
  </select>
            <br>
            カードに記載されている数字を入力して下さい
            <br>
            <input type="text",name="card_number"class="validate[custom[integer],minSize[13],maxSize[16]]" data-prompt-position="inline">
            <br>
            有効期限
            <br>
            MONTH / YEAR
            <br>
            <select class="card",name="cardMonth">
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
     <select class="card",name="cardYear">
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
   <input type="text" name="cardName" class="validate[custom[english]] text-input" data-prompt-position="inline">
            <br>
            <br>
        <input type="checkbox" name="checkbox1" id="check"><s:a href="#">利用規約</s:a>に同意します。

        <div class="text-center">
        <input type="submit" value="登録" id="submit" class="btn-default btn">
        </div>
        </s:form>
        </div>
        </div>
        </div>
    <div class="col-xs-3">
        <br>
        <br>
        <div class="text-center">
        <s:a href="#" class="bttn facebook"><span class="fa fa-facebook"></span>Facebookで登録</s:a>
        <br>
        <br>
      <s:a href="#" class="bttn twitter"><span class="fa fa-twitter"></span> Twitterで登録</s:a>
        <br>
        <br>
        <s:a href="#" class="bttn google"><span class="fa fa-google-plus"></span> Google+で登録</s:a>
      </div>
      </div>
    </div>
    <div class="text-center">
     <s:a href="GoTopPageAction
">トップページへ戻る</s:a>
    </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>