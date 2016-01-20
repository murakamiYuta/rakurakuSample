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
	<div class="container"> <!-- 全体を囲むコンテナ -->
            <div class="navbar navbar-default" role="navigation"><!-- ヘッダー -->
              <div class="container-fluid">
                <div class="navbar-header">
                	<div class="navbar-brand admin_header_admin"><strong>管理画面</strong></div></div>
                        <ul class="nav navbar-nav">
                          <li><s:a href="GoAdminUserAction">ユーザー管理</s:a></li>
                          <li class="active"><s:a href="GoAdminEventsAction">イベント管理</s:a></li>
                          <li><s:a href="GoAdminPurchaseAction">購入情報管理</s:a></li>
                          <li><s:a href="GoAdminCapacityAction">客席稼働率</s:a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                          <li><s:a href="GoAdminLogInAction">ログアウト</s:a></li>
                        </ul>
              </div>
            </div><!-- ヘッダー終わり -->


                    <h1 class="page-header">イベント管理</h1><!-- パネル -->
                        <div class="text-right">
                            <a href="#" class="btn btn-default">イベントの追加</a>
                        </div>
                        <div class="text-right">
                        <input style="width:260px;" type="text" class="form-contorol" placeholder="検索するイベントの情報を入力">
                        <a href="#" class="btn btn-default">イベントの検索</a>
                        </div>
                         <div class="text-right">
                        <input style="width:260px;" type="text" class="form-contorol" placeholder="削除するイベントのIDを入力">
                        <a href="#" class="btn btn-default">イベントの削除</a>
                        </div>
                    <div class="panel panel-danger">
                      <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                          <thead>
                              <tr><th>ID</th><th>イベント名 </th><th>噺家名</th><th>枚数</th><th>開催日</th><th>開催会場名</th><th>住所</th><th>画像名</th></tr>
                          </thead>
                          <tbody>
                              <tr><td>402</td>  <td>入門落語会1</td>  <td>春風亭道楽,三協亭銅鑼一 </td><td>2020</td><td>2015/01/01 </td>  <td>本門寺会場1 </td><td>東京都大田区池上１丁目１−１ </td><td>gazou.jpg </td></tr>
                            <tr><td>407</td>  <td>入門落語会2 </td>  <td>春風亭道楽,三協亭銅鑼一</td><td>2020</td><td>2015/01/02 </td>  <td>本門寺会場2 </td><td>東京都大田区池上１丁目１−１ </td><td>gazou.png</td></tr>
                            <tr><td>501</td>  <td>入門落語会3</td>  <td>春風亭道楽,三協亭銅鑼一 </td><td>2020</td><td>2015/01/03 </td>  <td>本門寺会場3 </td><td>東京都大田区池上１丁目１−１</td><td>gazou.gif </td></tr>
                            <tr><td>605</td>  <td>入門落語会4</td>  <td>春風亭道楽,三協亭銅鑼一</td><td>2020</td><td>2015/01/04 </td>  <td>本門寺会場4 </td><td>東京都大田区池上１丁目１−１</td><td>gazou.jpg </td></tr>
                            <tr><td>608</td>  <td>入門落語会5</td>  <td>春風亭道楽,三協亭銅鑼一 </td><td>2020</td><td>2015/01/05 </td>  <td>本門寺会場5 </td><td>東京都大田区池上１丁目１−１</td><td>gazou.jpg </td></tr>
                            <tr><td>702</td>  <td>入門落語会6 </td>  <td>春風亭道楽,三協亭銅鑼一 </td><td>2020</td><td>2015/01/06 </td>  <td>本門寺会場6</td><td>東京都大田区池上１丁目１−１ </td><td>gazou.gif </td></tr>
                            <tr><td>703</td>  <td>入門落語会7 </td>  <td>春風亭道楽,三協亭銅鑼一 </td><td>2020</td><td>2015/01/07 </td>  <td>本門寺会場7 </td><td>東京都大田区池上１丁目１−１</td><td>gazou.jpg</td></tr>
                          </tbody>
                        </table>
                      </div>
                    </div><!-- パネル終わり -->

                    <div class="text-center"> <!-- ページネーション -->
                      <ul class="pagination">
                        <li class="disabled"><span>&laquo;</span></li>
                        <li class="active"><span>1</span></li>
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