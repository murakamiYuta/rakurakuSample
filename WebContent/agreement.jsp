<!-- 頭にこれ貼り付けます。 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>　
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- ここまで -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<fmt:setLocale value="${pageContext.request.locale.language}" />
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
<s:if test = '#session.userId' >
<jsp:include page="header_log_in.jsp"/>
</s:if>
<s:else>
<jsp:include page="header_log_out.jsp"/>
</s:else>
<h2 class="text-center"><s:text name = "agreement.termsService"/></h2>
<div class="container">
      <div class="row">
      <div class="col-xs-2"></div>
    <div class="col-xs-8" >
<pre class="pre kiyaku">
<s:text name = "agreement.agreement1"/>

<s:text name = "agreement.article1-1"/>
<s:text name = "agreement.article1-2"/>

<s:text name = "agreement.article2-1"/>
<s:text name = "agreement.article2-2"/>
<s:text name = "agreement.article2-3"/>
<s:text name = "agreement.article2-4"/>
<s:text name = "agreement.article2-5"/>
<s:text name = "agreement.article2-6"/>

<s:text name = "agreement.article3-1"/>
<s:text name = "agreement.article3-2"/>
<s:text name = "agreement.article3-3"/>
<s:text name = "agreement.article3-4"/>

<s:text name = "agreement.article4-1"/>
<s:text name = "agreement.article4-2"/>
<s:text name = "agreement.article4-3"/>

<s:text name = "agreement.article5-1"/>
<s:text name = "agreement.article5-2"/>
<s:text name = "agreement.article5-3"/>
<s:text name = "agreement.article5-4"/>
<s:text name = "agreement.article5-5"/>
<s:text name = "agreement.article5-6"/>
<s:text name = "agreement.article5-7"/>
<s:text name = "agreement.article5-8"/>
<s:text name = "agreement.article5-9"/>
<s:text name = "agreement.article5-10"/>

<s:text name = "agreement.article6-1"/>
<s:text name = "agreement.article6-2"/>
<s:text name = "agreement.article6-3"/>
<s:text name = "agreement.article6-4"/>
<s:text name = "agreement.article6-5"/>
<s:text name = "agreement.article6-6"/>
<s:text name = "agreement.article6-7"/>

<s:text name = "agreement.article7-1"/>
<s:text name = "agreement.article7-2"/>
<s:text name = "agreement.article7-3"/>
<s:text name = "agreement.article7-4"/>
<s:text name = "agreement.article7-5"/>
<s:text name = "agreement.article7-6"/>

<s:text name = "agreement.article8-1"/>
<s:text name = "agreement.article8-2"/>
<s:text name = "agreement.article8-3"/>
<s:text name = "agreement.article8-4"/>

<s:text name = "agreement.article9-1"/>
<s:text name = "agreement.article9-2"/>

<s:text name = "agreement.article10-1"/>
<s:text name = "agreement.article10-2"/>

<s:text name = "agreement.article11-1"/>
<s:text name = "agreement.article11-2"/>

<s:text name = "agreement.article12-1"/>
<s:text name = "agreement.article12-2"/>

<s:text name = "agreement.article13-1"/>
<s:text name = "agreement.article13-2"/>
<s:text name = "agreement.article13-3"/>

<s:text name = "agreement.orMore"/>

</pre>
</div>
<div class="col-xs-2"></div>
    </div>
    </div>
    <hr>
<s:if test = '#session.userId' >
<jsp:include page="footer_my_page.jsp"/>
</s:if>
<s:else>
<jsp:include page="footer.jsp"/>
</s:else>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
</body>
</html>