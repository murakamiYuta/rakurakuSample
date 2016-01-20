
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
 <style>
  body {
    max-width:50em;
    margin-right:auto;
    margin-left:auto;
    padding:1em;
    font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;
  }
  svg {
    width:100%;
  }
  path {
    /*fill:#333;*/
  }
  text {
    fill:#fff;
  }
  </style>
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="style.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script>
window.onresize = rebuild; function rebuild(){ location.reload();}
</script>
<script src="js/jquery-1.9.0.min.js"></script>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>
	<div class="container"> <!-- 全体を囲むコンテナ -->
            <div class="navbar navbar-default" role="navigation"><!-- ヘッダー -->
              <div class="container-fluid">
                <div class="navbar-header">
                	<a href="#" class="navbar-brand admin_header_admin"><strong>管理画面</strong></a></div>
                        <ul class="nav navbar-nav">
                          <li><s:a href="GoAdminUserAction
">ユーザー管理</s:a></li>
                          <li><s:a href="GoAdminEventsAction
">イベント管理</s:a></li>
                          <li><s:a href="GoAdminPurchaseAction
">購入情報管理</s:a></li>
                          <li class="active"><s:a href="GoAdminCapacityAction
">客席稼働率</s:a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                          <li><s:a href="GoAdminLogInAction">ログアウト</s:a></li>
                        </ul>
              </div>
            </div><!-- ヘッダー終わり -->
                 <div class="container well">

		<form class="form-inline">
            <select name="year">
            <option value="">開催年</option>
            <option value="1">2016年</option>
            <option value="2">2017年</option>
            <option value="3">2018年</option>
            <option value="4">2019年</option>
            <option value="5">2020年</option>
            <option value="6">2021年</option>
            <option value="7">2022年</option>
            <option value="8">2023年</option>
            <option value="9">2024年</option>
            <option value="10">2025年</option>
            <option value="11">2026年</option>
            <option value="12">2027年</option>
            </select>

        	<select name="month">
            <option value="">開催月</option>
            <option value="1">1月</option>
            <option value="2">2月</option>
            <option value="3">3月</option>
            <option value="4">4月</option>
            <option value="5">5月</option>
            <option value="6">6月</option>
            <option value="7">7月</option>
            <option value="8">8月</option>
            <option value="9">9月</option>
            <option value="10">10月</option>
            <option value="11">11月</option>
            <option value="12">12月</option>
            </select>

        ～
            <select name="year">
            <option value="">開催年</option>
            <option value="1">2016年</option>
            <option value="2">2017年</option>
            <option value="3">2018年</option>
            <option value="4">2019年</option>
            <option value="5">2020年</option>
            <option value="6">2021年</option>
            <option value="7">2022年</option>
            <option value="8">2023年</option>
            <option value="9">2024年</option>
            <option value="10">2025年</option>
            <option value="11">2026年</option>
            <option value="12">2027年</option>
            </select>

        	<select name="month">
            <option value="">開催月</option>
            <option value="1">1月</option>
            <option value="2">2月</option>
            <option value="3">3月</option>
            <option value="4">4月</option>
            <option value="5">5月</option>
            <option value="6">6月</option>
            <option value="7">7月</option>
            <option value="8">8月</option>
            <option value="9">9月</option>
            <option value="10">10月</option>
            <option value="11">11月</option>
            <option value="12">12月</option>
            </select>



          <button class="btn btn-primary ken"> 検索 </button>

        </form>
     </div>
 <hr>
        <h3 class="text-center">客席稼働率</h3>
 <hr>
<div class="container">
  <div class="row text-center">
   <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail">   <svg id="chart"></svg>
                 <table class="table  table-condensed">
                <tr><td>販売数:</td><td>000席</td></tr>
                <tr><td>売上数：</td><td>000席</td></tr>
                <tr><td>稼働率：</td><td>000％</td></tr>
                <tr><td>イベント名:</td><td>*****</td></tr>
                <tr><td>開催地：</td><td>*****</td></tr>
                <tr><td>噺家：</td><td>*****</td></tr>
                <tr><td>価格:</td><td>*****</td></tr>
                <tr><td>公演日：</td><td>*****</td></tr>
            </table>
        </div>
      </div>
  <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail">   <svg id="chart-2"></svg>
                <table class="table  table-condensed">
                <tr><td>販売数:</td><td>000席</td></tr>
                <tr><td>売上数：</td><td>000席</td></tr>
                <tr><td>稼働率：</td><td>000％</td></tr>
                <tr><td>イベント名:</td><td>*****</td></tr>
                <tr><td>開催地：</td><td>*****</td></tr>
                <tr><td>噺家：</td><td>*****</td></tr>
                <tr><td>価格:</td><td>*****</td></tr>
                <tr><td>公演日：</td><td>*****</td></tr>
            </table>
        </div>
      </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail">   <svg id="chart-3"></svg>
               <table class="table  table-condensed">
                <tr><td>販売数:</td><td>000席</td></tr>
                <tr><td>売上数：</td><td>000席</td></tr>
                <tr><td>稼働率：</td><td>000％</td></tr>
                <tr><td>イベント名:</td><td>*****</td></tr>
                <tr><td>開催地：</td><td>*****</td></tr>
                <tr><td>噺家：</td><td>*****</td></tr>
                <tr><td>価格:</td><td>*****</td></tr>
                <tr><td>公演日：</td><td>*****</td></tr>
            </table>
        </div>
      </div>
  <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail">   <svg id="chart-4"></svg>
                     <table class="table  table-condensed">
                <tr><td>販売数:</td><td>000席</td></tr>
                <tr><td>売上数：</td><td>000席</td></tr>
                <tr><td>稼働率：</td><td>000％</td></tr>
                <tr><td>イベント名:</td><td>*****</td></tr>
                <tr><td>開催地：</td><td>*****</td></tr>
                <tr><td>噺家：</td><td>*****</td></tr>
                <tr><td>価格:</td><td>*****</td></tr>
                <tr><td>公演日：</td><td>*****</td></tr>
            </table>
        </div>
    </div>
 <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail">   <svg id="chart-5"></svg>
                 <table class="table  table-condensed">
                <tr><td>販売数:</td><td>000席</td></tr>
                <tr><td>売上数：</td><td>000席</td></tr>
                <tr><td>稼働率：</td><td>000％</td></tr>
                <tr><td>イベント名:</td><td>*****</td></tr>
                <tr><td>開催地：</td><td>*****</td></tr>
                <tr><td>噺家：</td><td>*****</td></tr>
                <tr><td>価格:</td><td>*****</td></tr>
                <tr><td>公演日：</td><td>*****</td></tr>
            </table>
        </div>
      </div>
  <div class="col-sm-4 col-md-4 col-lg-4 col-xs-6">
      <div class="thumbnail">   <svg id="chart-6"></svg>
               <table class="table  table-condensed">
                <tr><td>販売数:</td><td>000席</td></tr>
                <tr><td>売上数：</td><td>000席</td></tr>
                <tr><td>稼働率：</td><td>000％</td></tr>
                <tr><td>イベント名:</td><td>*****</td></tr>
                <tr><td>開催地：</td><td>*****</td></tr>
                <tr><td>噺家：</td><td>*****</td></tr>
                <tr><td>価格:</td><td>*****</td></tr>
                <tr><td>公演日：</td><td>*****</td></tr>
            </table>
        </div>
      </div>
  <nav class="text-center">
    <!-- Add class .pagination-lg for larger blocks or .pagination-sm for smaller blocks-->
    <ul class="pagination">
      <li> <a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> </a> </li>
      <li class="active"><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
      <li class="disabled"><a href="#">5</a></li>
      <li> <a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> </a> </li>
    </ul>
  </nav>


<hr>

</div>
</div></div>     <!-- 全体を囲むコンテナ -->
<script type="text/javascript" src="js/circle.js"></script>
<SCRIPT >
function Add(){
 document.fm.C.value = document.fm.B.value / document.fm.A.value*100;
}
</SCRIPT>

</body>
</html>