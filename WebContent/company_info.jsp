<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>　
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<h2 class="text-center"><s:text name ="company_info.companyProfile"/>
</h2>
<hr>
<div class="container-fluid">
  <div class="row text-justify">
    <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
        <p>
            <h3 class="bg-info"><s:text name ="company_info.tableContents"/></h3>
        <ul class="list-unstyled">
            <li><a href="company_info.jsp#info01"><s:text name ="company_info.oveview"/></a></li>
            <li><a href="company_info.jsp#info02"><s:text name ="company_info.history"/></a></li>
            <li><a href="company_info.jsp#info03"><s:text name ="company_info.access"/></a></li>
        </ul>
        <a id ="info01"></a>
        <h3 class="bg-info"><s:text name ="company_info.oveview"/></h3>
        <table class="table">
            <tbody>
                <tr><td class="active"> <strong><s:text name ="company_info.companyName"/></strong></td><td><s:text name ="company_info.com"/></td></tr>
                <tr><td class="active"><strong><s:text name ="company_info.companyFormation"/></strong></td><td><s:text name ="company_info.jan-16"/></td></tr>
                <tr><td class="active"><strong><s:text name ="company_info.headOffice"/></strong></td><td><s:text name ="company_info.tokyo"/></td></tr>
                <tr><td class="active"><strong><s:text name ="company_info.capital"/></strong></td><td><s:text name ="company_info.yen"/></td></tr>
                <tr><td class="active"><strong><s:text name ="company_info.business"/></strong></td><td><s:text name ="company_info.sales"/></td></tr>
                <tr><td class="active"><strong><s:text name ="company_info.numberEmployees"/></strong></td><td><s:text name ="company_info.people"/></td></tr>
                <tr><td class="active"><strong><s:text name ="company_info.representativeDirector"/></strong></td><td><s:text name ="company_info.yuki"/></td></tr>
            </tbody>
        </table>
         <a id ="info02"></a>
        <h3 class="bg-info"><s:text name ="company_info.history"/></h3>
 <table class="table">
     <tr><td>2016.01.03</td><td><s:text name ="company_info.ltd"/></td></tr>
     <tr><td>2016.01.12</td><td><s:text name ="company_info.project1"/></td></tr>
     <tr><td>2016.01.31</td><td><s:text name ="company_info.website"/></td></tr>
     <tr><td>2016.02.01</td><td><s:text name ="company_info.project2"/></td></tr>
        </table>
        <a id ="info03"></a>
         <h3 class="bg-info"><s:text name ="company_info.access"/></h3>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d809.9784672933268!2d139.76656248809596!3d35.703737087793904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDQyJzEzLjQiTiAxMznCsDQ2JzAxLjYiRQ!5e0!3m2!1sja!2sjp!4v1451889753874" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe><br /><small><a href="https://www.google.co.jp/maps/place/35%C2%B042'13.4%22N+139%C2%B046'01.6%22E/@35.7037371,139.7665625,19z/data=!4m2!3m1!1s0x0:0x0"><s:text name ="company_info.map"/></a></small>
      </div></div>
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