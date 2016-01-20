
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
                          <li class="active">
                            <a href="#">ユーザー管理</a>
                          </li>
                          <li><s:a href="GoAdminEventsAction">イベント管理</s:a></li>
                          <li><s:a href="GoAdminPurchaseAction">購入情報管理</s:a></li>
                            <li><s:a href="GoAdminCapacityAction">客席稼働率</s:a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                          <li><s:a href="GoAdminLogInAction">ログアウト</s:a></li>
                        </ul>
              </div>
            </div><!-- ヘッダー終わり -->


                    <h1 class="page-header">ユーザー管理</h1><!-- パネル -->
        <div class="text-right">
<input style="width:300px;" type="text" class="form-contorol" placeholder="検索するユーザーの情報を入力">
<a href="#" class="btn btn-default">ユーザーの検索</a>
</div>
        <div class="text-right">
<input style="width:300px;" type="text" class="form-contorol" placeholder="削除するユーザーのIDを入力">
<a href="#" class="btn btn-default">ユーザーの削除</a>
</div>

                    <div class="panel panel-danger">

                      <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                          <thead>
                            <tr><th>ID</th><th>pass </th><th>氏名 </th><th>メールアドレス </th></tr>
                          </thead>
                          <tbody>
                            <tr><td>402</td>  <td>8347rojsdfa</td>  <td>近松門左衛門</td>  <td>mt@tikamatu.com</td></tr>
                            <tr><td>407</td>  <td>834djt8sdfa</td>  <td>源義経</td>  <td>ym@minamoto.com</td></tr>
                            <tr><td>501</td>  <td>f0dkrojsdfa</td>  <td>マザーテレサ</td>  <td>tm@mother.com</td></tr>
                            <tr><td>605</td>  <td>8adfrojsdfa</td>  <td>野比のび太</td>  <td>nn@nobi.com</td></tr>
                            <tr><td>608</td>  <td>83rg9rojdfa</td>  <td>峰不二子</td>  <td>hm@mine.com</td></tr>
                            <tr><td>702</td>  <td>8asdfasfasd</td>  <td>アントニオ猪木</td>  <td>kabu@kabu.com</td></tr>
                            <tr><td>703</td>  <td>9890fasjawe</td>  <td>斧手のモーガン</td>  <td>DMM@dmm.com</td></tr>
                              <tr><td>720</td>  <td>83rg9r3jdfa</td>  <td>ルシファー</td>  <td>au@mine.com</td></tr>
                            <tr><td>780</td>  <td>8asdfaafasd</td>  <td>チャニングテイタム</td>  <td>doco@kabu.com</td></tr>
                            <tr><td>901</td>  <td>98livej5awe</td>  <td>綾瀬絵里</td>  <td>soft@dmm.com</td></tr>
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