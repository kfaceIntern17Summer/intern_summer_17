<%--
  Created by IntelliJ IDEA.
  User: Tim
  Date: 2017-07-19
  Time: 오전 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>InsertMember</title>
</head>
<body>
    <h1>멤버추가</h1>
<center>
    <form action="insertMember" method="post">
        <table>
            <tr>
                <td>이름</td>
                <td><input type="text" name="member_name"></td>
            </tr>
            <tr>
                <td>생년월일</td>
                <td><input type="date" name="birthday"></td>
            </tr>
            <tr>
                <%--<td>셀</td>--%>
                <%--<td><input type="text" name="cell"></td>--%>
            </tr>
            <tr>
                <td>전화</td>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <%--<td>직책</td>--%>
                <%--<td><input type="text" name="duty"></td>--%>
            </tr>
            <tr>
                <td>등록날짜</td>
                <td><input type="date" name="createdDate"></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <%--<td>메모</td>--%>
                <%--<td><input type="text" name="memo"></td>--%>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="추가하기" >
                    <input type="reset" value="다시작성">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>

<%--<!DOCTYPE html>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>

<%--<html>--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<title>AdminLTE 2 | Starter</title>--%>
    <%--<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">--%>
    <%--<link rel="stylesheet" href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="/resources/bower_components/font-awesome/css/font-awesome.min.css">--%>
    <%--<link rel="stylesheet" href="/resources/bower_components/Ionicons/css/ionicons.min.css">--%>
    <%--<link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">--%>

    <%--<link rel="stylesheet" href="/resources/dist/css/skins/skin-blue.min.css">--%>

    <%--<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>--%>
    <%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>


    <%--<link rel="stylesheet"--%>
          <%--href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">--%>

    <%--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
    <%--<link rel="stylesheet" href="/resources/demos/style.css">--%>
    <%--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
    <%--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>--%>
    <%--<script>--%>
        <%--$( function() {--%>
            <%--$( "#datepicker" ).datepicker();--%>
        <%--} );--%>
    <%--</script>--%>
<%--</head>--%>

<%--<body class="hold-transition skin-blue sidebar-mini">--%>
<%--<div class="wrapper">--%>


    <%--<div class="content-wrapper">--%>

        <%--<input type="date" id="datepicker">--%>
        <%--<section class="content container-fluid">--%>

            <%--<div class="box box-info" >--%>
                <%--<div class="box-body">--%>
                    <%--<div class="table-responsive">--%>

                        <%--<div class="form-group" style="padding-top: 10px;">--%>
                            <%--<label class="col-md-4 col-xs-2 control-label" >이름</label>--%>
                            <%--<input class="col-md-2 col-xs-4 " type="text">--%>
                        <%--</div>--%>
                        <%--<br>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-md-4 col-xs-2 control-label" >ID</label>--%>
                            <%--<input class="col-md-2 col-xs-4" type="text">--%>
                        <%--</div>--%>
                        <%--<br>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-md-4 col-xs-2 control-label" >셀 이름</label>--%>
                            <%--<input class="col-md-2 col-xs-4" type="text">--%>
                        <%--</div>--%>
                        <%--<br>--%>

                        <%--<div class="form-group">--%>
                            <%--<label class="col-md-4 col-xs-2 control-label" >생일</label>--%>
                            <%--<input class="col-md-2 col-xs-4" type="text">--%>

                        <%--</div>--%>
                        <%--<br>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-md-4 col-xs-2 control-label" >등록 일자</label>--%>
                            <%--<input class="col-md-2 col-xs-4" type="text">--%>
                        <%--</div>--%>
                        <%--<br>--%>

                        <%--<div class="form-group">--%>
                            <%--<label class="col-md-4 col-xs-2 control-label" >전화번호</label>--%>
                            <%--<input class="col-md-2 col-xs-4" type="text">--%>
                        <%--</div>--%>
                        <%--<br>--%>

                        <%--<div class="form-group">--%>
                            <%--<label class="col-md-4 col-xs-2 control-label" >이메일</label>--%>
                            <%--<input class="col-md-4 col-xs-6 " type="text">--%>
                        <%--</div>--%>
                        <%--<br>--%>

                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="box-footer clearfix">--%>
                    <%--<a href="javascript:void(0)" onclick="opener.parent.location.reload(); window.close();" class="btn btn-sm btn-default btn-flat pull-right">Delete</a>--%>
                    <%--<a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">Modify</a>--%>

                <%--</div>--%>
            <%--</div>--%>
        <%--</section>--%>
    <%--</div>--%>
<%--</div>--%>


<%--<script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>--%>
<%--<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>--%>
<%--<script src="/resources/dist/js/adminlte.min.js"></script>--%>


<%--</body>--%>
<%--</html>--%>