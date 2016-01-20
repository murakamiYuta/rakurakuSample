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
<meta name='viewport' content='initial-scale=1.0, user-scalable=no' />
<title>イベント詳細</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style_item_info.css">
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<!-- jQuery -->
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


<script src="js/jquery.validationEngine.js"></script>
<script src="js/jquery.validationEngine-ja.js"></script>

<script>
	$(function() {
		jQuery("#ticket-num").validationEngine();
	});
</script>
</head>
<body>
	<jsp:include page="header_log_in.jsp" />
	<hr>
	<h2 class="text-center">イベント詳細</h2>
	<hr>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
				<p>
				<div class="panel panel-danger">
					<div class="panel-heading">名古屋奇席 初笑い！田代らくご会</div>
					<div class="panel-body">
						<p>
							<img src="images/rakugo/rakugo1.jpg" alt="Thumbnail Image 1"
								width="200" height="300"
								class="img-responsive img-responsive-overwrite">
						<div class="caption">
							<h4>
								<strong>商品詳細</strong>
							</h4>

							<pre class="pre  pre-maxsize  ">
ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります。ここに本文が入ります</pre>
						</div>
						<p>購入枚数を入力して下さい。</p>
						<s:form action="GoPurchaseConfirmationAction
						" id="ticket-num" class="form-horizontal">
							<div class="table-responsive">
								<table class="table item-table-write">
									<tbody>
										<tr>
											<td>公演日:</td>
											<td>2016年3月12日</td>
										</tr>
										<tr>
											<td>価格:</td>
											<td>3000円／枚</td>
										</tr>
										<tr>
											<td>購入枚数:</td>
											<td>
												<div class="col-sm-4-offset-2">
													<input type="text"
														class="validate[required,custom[integer],min[1],max[50]] text-input"
														data-errormessage-value-missing="購入枚数を入力して下さい。" size="2">
													枚
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!--地図-->
							<h4>・公演場所・</h4>
							<h5>【第七田代会館】</h5>

							<p>
								住所：<span class="js-address">神奈川県愛甲郡愛川町田代1700番地 </span>
							</p>

							<div class="mod-canvas">
								<div id="map_canvas"></div>
							</div>


							<!--ここまで地図-->
							<p>
								<input class="btn-primary btn-lg" type="submit" value="購入確認" />
							</p>
						</s:form>
					</div>

				</div>
				<!--ここまでパネルボディ-->
			</div>
		</div>
	</div>
	<hr>
	<!-- Google map Script -->
	<script src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
	<!-- map script -->
	<script src="js/map.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>