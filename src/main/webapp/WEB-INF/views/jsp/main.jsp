<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%

//    @SuppressWarnings("unchecked")
//    List<Map<String, Object>> cellData = (List<Map<String, Object>>) request.getAttribute("cellData");
//    @SuppressWarnings("unchecked")
//    List<Map<String, Object>> totalcellData = (List<Map<String, Object>>) request.getAttribute("totalcellData");

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

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">

        <a href="/" class="logo">
            <span class="logo-mini"><b>A</b>CL</span>
            <span class="logo-lg"><b>Admin</b> CELL</span>
        </a>

        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                    <li class="user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Alexander Pierce</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

    </header>

    <aside class="main-sidebar">

        <section class="sidebar">

            <div class="user-panel">
                <div class="pull-left image">
                    <img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Alexander Pierce</p>
                    <p>셀 2 리더</p>
                </div>
            </div>

            <ul class="sidebar-menu" data-widget="tree">

                <li class="header">Menu</li>
                <li><a href="/celllist"><i class="fa fa-link"></i> <span>셀 목록</span></a></li>

                <%--셀목록 treeview--%>
                <%--<li class="treeview">--%>
                    <%--<a href="#"><i class="fa fa-link"></i> <span>셀 목록</span>--%>
                        <%--<span class="pull-right-container">--%>
                <%--<i class="fa fa-angle-left pull-right"></i>--%>
              <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<%--%>
                            <%--for (Map<String, Object> cells : totalcellData) {--%>
                        <%--%>--%>

                        <%--<li><a href="/celllist/<%=cells.get("cell_idx")%>"><%=cells.get("cell_name")%>--%>
                        <%--</a></li>--%>

                        <%--<%--%>
                            <%--}--%>
                        <%--%>--%>
                    <%--</ul>--%>
                <%--</li>--%>

                <%--모임일지 treeview--%>
                <%--<li class="treeview">--%>
                    <%--<a href="#"><i class="fa fa-link"></i> <span>모임 일지</span>--%>
                        <%--<span class="pull-right-container">--%>
                <%--<i class="fa fa-angle-left pull-right"></i>--%>
              <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<%--%>
                            <%--for (Map<String, Object> cells : totalcellData) {--%>
                        <%--%>--%>

                        <%--<li><a href="/report/<%=cells.get("cell_idx")%>"><%=cells.get("cell_name")%>--%>
                        <%--</a></li>--%>

                        <%--<%--%>
                            <%--}--%>
                        <%--%>--%>
                    <%--</ul>--%>
                <%--</li>--%>


                <li><a href="/dailyReport"><i class="fa fa-link"></i> <span>모임 일지</span></a></li>
                <li><a href="/cell-management"><i class="fa fa-link"></i> <span>셀 관리</span></a></li>
                <li><a href="/member-management"><i class="fa fa-link"></i> <span>멤버 관리</span></a></li>

            </ul>
        </section>
    </aside>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                교회 소식 </br>
                <small>특별사항 없음</small>
            </h1>
        </section>
    </div>
</div>
<script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/resources/dist/js/adminlte.min.js"></script>

</body>
</html>