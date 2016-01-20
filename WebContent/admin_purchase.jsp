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
<title>Bootstrap - Prebuilt Layout</title>

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
<script src="js/jquery-1.11.3.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
</head>
<body>
	<div class="container"> <!-- 全体を囲むコンテナ -->
            <div class="navbar navbar-default" role="navigation"><!-- ヘッダー -->
              <div class="container-fluid">
                <div class="navbar-header">
                	<a href="#" class="navbar-brand admin_header_admin"><strong>管理画面</strong></a></div>
                        <ul class="nav navbar-nav">
                          <li>
                            <s:a href="GoAdminUserAction">ユーザー管理</s:a>
                          </li>
                          <li><s:a href="GoAdminEventsAction">イベント管理</s:a></li>
                          <li class="active"><a href="#">購入情報管理</a></li>
                          <li><s:a href="GoAdminCapacityAction">客席稼働率</s:a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                          <li><s:a href="GoAdminLogInAction">ログアウト</s:a></li>
                        </ul>
              </div>
            </div><!-- ヘッダー終わり -->
            <h1 class="page-header">購入情報管理</h1>
           <div class="text-right">
               <input type=text" class="form-contorol" placeholder="ユーザーの氏名を入力">
               <a href="#" class="btn btn-default">ユーザーの検索</a>
            </div>

            <!-- パネル -->
                    <div class="panel panel-danger">
                      <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                          <thead>
                            <tr><th>ID</th><th>氏名 </th><th>購入内容 </th><th>購入時間 </th></tr>
                          </thead>
                          <tbody>
                            <tr><td>402</td>  <td>近松門左衛門 </td>  <td>落語1:5</td><td>2020/01/01/12:00</td></tr>
                            <tr><td>407</td>  <td>源義経 </td>  <td>落語1:5</td><td>2020/01/01/12:00 </td></tr>
							<tr><td>605</td>  <td>野比のび太 </td>  <td>落語1:5</td><td>2020/01/01/12:00 </td></tr>
                            <tr><td>608</td>  <td>峰不二子 </td>  <td>落語1:5</td><td>2020/01/01/12:00 </td></tr>
                            <tr><td>702</td>  <td>アントニオ猪木 </td>  <td>落語1:5枚 </td><td>2020/01/01/12:00 </td></tr>
                            <tr><td>703</td>  <td>斧手のモーガン </td>  <td>落語2:5枚 </td><td>2020/01/01/12:00 </td></tr>
                            <tr><td>704</td>  <td>斧手のモーカン </td>  <td>落語3:5枚 </td><td>2020/01/01/12:00 </td></tr>
                            <tr><td>705</td>  <td>斧手のモーハン </td>  <td>落語4:5枚 </td><td>2020/01/01/12:00 </td></tr>
                            <tr><td>706</td>  <td>斧手のモーマン </td>  <td>落語5:5枚 </td><td>2020/01/01/12:00 </td></tr>
                            <tr><td>707</td>  <td>斧手のモーモン </td>  <td>落語6:5枚 </td><td>2020/01/01/12:00 </td></tr>
                          </tbody>
                        </table>
                      </div>
      </div><!-- パネル終わり -->

                    <div class="text-center"> <!-- ページネーション -->
                      <ul class="pagination">
                        <li class="disabled"><span>&laquo;</span></li>
                        <li class="active"><span>1<span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&raquo;</a></li>
                      </ul>
                    </div>　<!-- ページネーション終わり -->

</div>        <!-- 全体を囲むコンテナ -->
</body>
</html>