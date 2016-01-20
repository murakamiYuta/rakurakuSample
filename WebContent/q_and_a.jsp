<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>　
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<fmt:setLocale value="${pageContext.request.locale.language}" />
<style type="text/css">
<!--
.errorMessage {
	color: red;
}
-->
</style>
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
<hr>
 <!-- this -->
<div class="container">
    <h2 class="text-center"><s:text name="q_and_a.q&a"/></h2>
    <hr>

        <ul class="list-unstyled">
            <li><a href="q_and_a.jsp#info01">1.<s:text name="q_and_a.login"/></a></li>
            <li><a href="q_and_a.jsp#info02">2.<s:text name="q_and_a.event"/></a></li>
            <li><a href="q_and_a.jsp#info03">3.<s:text name="q_and_a.withdrawal"/></a></li>
            <li><a href="q_and_a.jsp#info04">4.<s:text name="q_and_a.peyment"/></a></li>
            <li><a href="q_and_a.jsp#info05">5.<s:text name="q_and_a.receiveing"/></a></li>
            <li><a href="q_and_a.jsp#info06">※<s:text name="q_and_a.inquiry"/>※</a></li>
        </ul>





        <a id ="info01"></a>
        <h3 class="bg-info"><s:text name="q_and_a.login"/></h3>

        <h4>Q.1  <s:text name="q_and_a.inquiryExample1"/></h4>
        A...<s:text name="q_and_a.reply1"/>
        <h4>Q.2  <s:text name="q_and_a.inquiryExample2"/></h4>
        A...<s:text name="q_and_a.reply2"/>


        <a id ="info02"></a>
        <h3 class="bg-info"><s:text name="q_and_a.event"/></h3>
        <h4>Q.1  <s:text name="q_and_a.inquiryExample3"/></h4>
        A...<s:text name="q_and_a.reply3"/>
        <h4>Q.2  <s:text name="q_and_a.inquiryExample4"/></h4>
        A...<s:text name="q_and_a.reply4"/>

        <a id ="info03"></a>
        <h3 class="bg-info"><s:text name="q_and_a.withdrawal"/></h3>
        <h4>Q.1  <s:text name="q_and_a.inquiryExample5"/></h4>
        A...<s:text name="q_and_a.reply5"/>

        <a id ="info04"></a>
    <h3 class="bg-info"><s:text name="q_and_a.peyment"/></h3>
        <h4>Q.1  <s:text name="q_and_a.inquiryExample6"/></h4>
        A...<s:text name="q_and_a.reply6"/>

        <a id ="info05"></a>
        <h3 class="bg-info"><s:text name="q_and_a.receiveing"/></h3>

        <h4>Q.1  <s:text name="q_and_a.inquiryExample7"/></h4>
        A...<s:text name="q_and_a.reply7"/>


<s:form method="post" action = "InsertContactAction" >
        <a id ="info06"></a>
    <h3 class="bg-info"><s:text name="q_and_a.inquiry"/><br></h3>
<s:property value = "getText(reply)"/><br>
<s:text name = "q_and_a.name"/><br>
<s:fielderror><s:param value="%{'user_name'}" /></s:fielderror>
<s:textfield name="user_name"/><br>
<s:text name = "q_and_a.email"/><br>
<s:fielderror><s:param value="%{'email'}" /></s:fielderror>
<s:textfield name="email" size="50"/><br>
<s:text name = "q_and_a.contentInquiry"/><br>
<s:fielderror><s:param value="%{'contact'}" /></s:fielderror>
<s:textarea name="contact" cols="70" rows="5"/><br>
<s:submit value = "%{getText('q_and_a.transmission')}"/>
</s:form>
     </div>



 <!-- finish -->


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
