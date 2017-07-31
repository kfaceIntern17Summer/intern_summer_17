<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<%
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> memberData = (List<Map<String, Object>>) request.getAttribute("memberData");
    int cell_idx=0;
%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>xx교회청년부</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">

    <link rel="stylesheet" href="/resources/dist/css/skins/skin-blue.min.css">


</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <div class="content-wrapper">

        <section class="content container-fluid">

            <form action="/setLeader" method="post">

                <div class="box box-info">
                    <div class="box-body">
                        <div class="table-responsive">
                            <div class="form-group" style="padding-top: 10px;">
                                <label class="col-md-4 col-xs-2 control-label">리더</label>

                                <select name="member_idx" class="form-control col-md-2 col-xs-4">
                                    <%
                                        for (Map<String, Object> member : memberData) {
                                    %>
                                    <option value="<%=member.get("member_idx")%>"><%=member.get("member_name")%>
                                    </option>

                                    <%
                                            cell_idx=(Integer)member.get("cell_idx");
                                        }
                                    %>
                                </select>
                                <input type="hidden" value="<%=cell_idx%>" name="cell_idx">

                            </div>
                            <br>


                        </div>
                    </div>
                    <div class="box-footer clearfix">
                        <input type="submit" value="선택" class="btn btn-sm btn-default btn-flat pull-right">
                    </div>
                </div>
            </form>
        </section>
    </div>
</div>


<script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/resources/dist/js/adminlte.min.js"></script>


</body>
</html>