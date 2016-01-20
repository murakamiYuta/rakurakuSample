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
        <title><s:text name = "log_in.title"/></title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

        <script>
        $('#test_ckb').change(function(){
            if($(this).attr('checked')){
		        $('#touroku').attr('disabled',false);
            } else {
		        $('#touroku').attr('disabled',true);
            }
        });


        </script>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    </head>
    <body>
        <jsp:include page="header_log_out.jsp"/>
        <hr>
        <h2 class="text-center"><s:text name = "log_in.title"/></h2>
        <div class="container">
            <div class="row">
                <div class="col-xs-8 well" >
                    <div class="text-center">
                        <s:form action="GoTopPageAction1" theme="simple">
                            <div class="left">
                                <s:text name = "log_in.mail"/>
                                <br>
                                <s:textfield name="email" class="form-contorol" size="50"/>
                                <br>
                                <s:text name = "log_in.password"/>
                                <br>
                                <s:password name="password" class="form-contorol" size="50"/>
                            </div>
                            <font size="5" color="#ff0000"><s:actionmessage /></font>
                            <br>
                            <br>
		                    <s:submit class="btn btn-default btn-sm" id="touroku" value= "%{getText('log_in.title')}"/>
                        </s:form>
                    </div>
                </div>
                <div class="col-xs-4">
                    <br>
                    <s:a href="#" class="in facebook"><span class="fa fa-facebook"><s:text name = "log_in.facebook"/></span></s:a>
                    <br>
                    <br>
                    <s:a href="#" class="in twitter"><span class="fa fa-twitter"><s:text name = "log_in.twitter"/></span></s:a>
                    <br>
                    <br>
                    <s:a href="#" class="in google"><span class="fa fa-google-plus"><s:text name = "log_in.google"/></span></s:a>
                </div>
            </div>
        </div>
        <div class="text-center">
            <s:a href="GoTopPageAction"><s:text name = "log.in.goToTop"/></s:a>
        </div>
        <hr>
        <jsp:include page="footer.jsp"/>
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>