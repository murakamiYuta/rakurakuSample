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
<link rel="stylesheet" href="css/style.css">

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
<h2 class="text-center">マイページ</h2>
<hr>
<div class="container">
<div class="panel panel-danger">

                      <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                          <thead>
                            <tr>
                              <th>購入日 </th><th>商品名</th><th>上演日時 </th><th>枚数 </th></tr>
                          </thead>
                          <tbody>
                            <tr><td>2015/01/01 </td>  <td>春風亭一之輔独演会 </td>  <td>2015/01/03 </td>  <td align="right">5枚 </td></tr>
                            <tr><td>2015/01/01 </td>  <td>春風亭一之輔独演会 </td>  <td>2015/01/03 </td>  <td align="right">5枚 </td></tr>
                            <tr><td>2015/01/01 </td>  <td>春風亭一之輔独演会 </td>  <td>2015/01/03 </td>  <td align="right">5枚 </td></tr>
                            <tr><td>2015/01/01 </td>  <td>春風亭一之輔独演会 </td>  <td>2015/01/03 </td>  <td align="right">5枚 </td></tr>
                            <tr><td>2015/01/01 </td>  <td>春風亭一之輔独演会 </td>  <td>2015/01/03 </td>  <td align="right">5枚 </td></tr>
                            <tr><td>2015/01/01 </td>  <td>春風亭一之輔独演会 </td>  <td>2015/01/03 </td>  <td align="right">5枚 </td></tr>
                            <tr><td>2015/01/01 </td>  <td>春風亭一之輔独演会 </td>  <td>2015/01/03 </td>  <td align="right">5枚 </td></tr>
                          </tbody>
                        </table>
                      </div>
                    </div><!-- パネル終わり -->

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
 <jsp:include page="footer_my_page.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery-1.11.3.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>