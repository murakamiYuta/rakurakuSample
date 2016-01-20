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
  <div class="container well">
        <div class="row">
          <div class="col-sm-3">
              <a href="GoCompanyInfoAction"><s:text name = "footer.companyProfile"/></a>
          </div>
          <div class="col-sm-3">
            <div>
				<a href="GoAgreementAction"><s:text name = "footer.agreement"/></a>
            </div>
          </div>
          <div class="col-sm-3">
            <div>
                <a href="GoQAndAAction"><s:text name = "footer.q&a"/></a>
            </div>
          </div>

          <div class="col-sm-3">
            <div>
                <a href="GoWithdrawalConfirmationAction"><s:text name = "footer.withdrawal"/></a>
            </div>
          </div>

        </div>
  </div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
</body>
</html>