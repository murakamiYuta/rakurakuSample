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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- ヘッダーの引用はこうします -->
<jsp:include page="header_log_in.jsp"/>
<!-- /ヘッダー -->
  <hr>
     <div class="container well">

        <form method="post" action="GoEventsAction" class="form-inline">

        <div class="form-group">
            <input type="text" class="form-control" placeholder="イベント名" size="16" name="events_name">
        </div>


        <div class="form-group">
            <input type="text" class="form-control" placeholder="噺家名" size="16" name="story_teller">
        </div>
            <select name="year">
            <option value="　　　">開催年</option>
            <option value="2016年">2016年</option>
            <option value="2017年">2017年</option>
            <option value="2018年">2018年</option>
            <option value="2019年">2019年</option>
            <option value="2020年">2020年</option>
            <option value="2021年">2021年</option>
            <option value="2022年">2022年</option>
            <option value="2023年">2023年</option>
            <option value="2024年">2024年</option>
            <option value="2025年">2025年</option>
            <option value="2026年">2026年</option>
            <option value="2027年">2027年</option>
            </select>

            <select name="month">
            <option value="　　　">開催月</option>
            <option value="1月">1月</option>
            <option value="2月">2月</option>
            <option value="3月">3月</option>
            <option value="4月">4月</option>
            <option value="5月">5月</option>
            <option value="6月">6月</option>
            <option value="7月">7月</option>
            <option value="8月">8月</option>
            <option value="9月">9月</option>
            <option value="10月">10月</option>
            <option value="11月">11月</option>
            <option value="12月">12月</option>
            </select>

            <select name="pref_id">
            <option value="　　　" selected>都道府県</option>
            <option value="北海道">北海道</option>
            <option value="青森県">青森県</option>
            <option value="岩手県">岩手県</option>
            <option value="宮城県">宮城県</option>
            <option value="秋田県">秋田県</option>
            <option value="山形県">山形県</option>
            <option value="福島県">福島県</option>
            <option value="茨城県">茨城県</option>
            <option value="栃木県">栃木県</option>
            <option value="群馬県">群馬県</option>
            <option value="埼玉県">埼玉県</option>
            <option value="千葉県">千葉県</option>
            <option value="東京都">東京都</option>
            <option value="神奈川県">神奈川県</option>
            <option value="新潟県">新潟県</option>
            <option value="富山県">富山県</option>
            <option value="石川県">石川県</option>
            <option value="福井県">福井県</option>
            <option value="山梨県">山梨県</option>
            <option value="長野県">長野県</option>
            <option value="岐阜県">岐阜県</option>
            <option value="静岡県">静岡県</option>
            <option value="愛知県">愛知県</option>
            <option value="三重県">三重県</option>
            <option value="滋賀県">滋賀県</option>
            <option value="京都府">京都府</option>
            <option value="大阪府">大阪府</option>
            <option value="兵庫県">兵庫県</option>
            <option value="奈良県">奈良県</option>
            <option value="和歌山県">和歌山県</option>
            <option value="鳥取県">鳥取県</option>
            <option value="島根県">島根県</option>
            <option value="岡山県">岡山県</option>
            <option value="広島県">広島県</option>
            <option value="山口県">山口県</option>
            <option value="徳島県">徳島県</option>
            <option value="香川県">香川県</option>
            <option value="愛媛県">愛媛県</option>
            <option value="高知県">高知県</option>
            <option value="福岡県">福岡県</option>
            <option value="佐賀県">佐賀県</option>
            <option value="長崎県">長崎県</option>
            <option value="熊本県">熊本県</option>
            <option value="大分県">大分県</option>
            <option value="宮崎県">宮崎県</option>
            <option value="鹿児島県">鹿児島県</option>
            <option value="沖縄県">沖縄県</option>
            </select>


            <input type="submit" value="検索" class="btn btn-primary">
        </form>
     </div>
   <hr>
<div class="container">
    <div class="text-center">
    </div>
    <table class="table table-bordered">
    <tr>
        <th>イベント名</th>
        <th>噺家名</th>
        <th>開催年</th>
        <th>開催月</th>
        <th>都道府県</th>
        </tr>
    <tr>
        <td><%= request.getParameter("events_name") %></td>
        <td><%= request.getParameter("story_teller") %></td>
        <td><%= request.getParameter("year") %></td>
        <td><%= request.getParameter("month") %></td>
        <td><%= request.getParameter("pref_id") %></td>
    </tr>
    </table>
    </div>
<hr>
<h2 class="text-center">イベント一覧</h2>

<hr>
<div class="container">
  <div class="row text-center">
      <s:iterator value="eventsList">
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
      <div class="thumbnail"> <img src="<s:property value="img_path" />.jpg" alt="Thumbnail Image 1" width="200" height="300" class="img-responsive" >
        <div class="caption">
          <h3><s:property value="name" /></h3>
          <p><s:property value="detail" /></p>
          <p><s:a href="GoEventDetailsAction" class="btn btn-primary" role="button"> 詳細 </s:a></p>
        </div>
      </div>
    </div>
    </s:iterator>
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
</div>

<hr>
<!-- フッターの引用はこうします -->
<jsp:include page="footer.jsp"/>
<!-- /フッター -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
</body>
</html>
