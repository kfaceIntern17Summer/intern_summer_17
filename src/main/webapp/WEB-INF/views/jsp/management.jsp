<!DOCTYPE html>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> memberData = (List<Map<String, Object>>) request.getAttribute("memberData");
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> totalcellData = (List<Map<String, Object>>) request.getAttribute("totalcellData");
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
                <li class="treeview">
                    <a href="#"><i class="fa fa-link"></i> <span>셀 목록</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <%
                            for (Map<String, Object> cells : totalcellData) {
                        %>

                        <li><a href="/celllist/<%=cells.get("cell_idx")%>"><%=cells.get("cell_name")%>
                        </a></li>

                        <%
                            }
                        %>
                    </ul>
                </li>

                <li><a href="/dailyReport"><i class="fa fa-link"></i> <span>모임 일지</span></a></li>
                <li class="active"><a href="/management"><i class="fa fa-link"></i> <span>셀 관리</span></a></li>

            </ul>
        </section>
    </aside>


    <div class="content-wrapper">

        <section class="content-header">
            <h1> 관리 <br> </h1>
        </section>

        <section class="content container-fluid">

            <div class="box box-info">

                <div class="box-header with-border">
                    <h3 class="box-title">셀 목록</h3>
                </div>

                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                            <tr>
                                <th>셀 이름</th>
                                <th>셀 리더</th>
                                <th>기간</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Map<String, Object> cell : totalcellData) {
                            %>
                            <tr>
                                <td><a href="/cell/<%=cell.get("cell_idx")%>"><%=cell.get("cell_name")%>
                                </a></td>
                                <td><%=cell.get("member_name")%>
                                </td>
                                <td><%=cell.get("period")%>
                                </td>

                            </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="box-footer clearfix">
                    <a href="/newCell"  onclick="window.open(this.href, '', 'width=600 height=600');return false;"  class="btn btn-sm btn-default btn-flat pull-right">추가</a>
                </div>

            </div>

            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">멤버 목록</h3>

                </div>

                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                            <tr>
                                <th>이름</th>
                                <th>생일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Map<String, Object> map : memberData) {
                            %>
                            <tr>
                                <td><a href="/member/<%=map.get("member_idx")%>" onclick="window.open(this.href, '', 'width=600 height=600');return false;" target="_blank"><%=map.get("member_name")%>
                                </a></td>
                                <td><%=map.get("birthday")%>

                            </tr>
                            <%
                                }
                            %>

                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="box-footer clearfix">
                    <a href="/newUser"  onclick="window.open(this.href, '', 'width=600 height=600');return false;"  class="btn btn-sm btn-default btn-flat pull-right">추가</a>
                </div>

            </div>

        </section>
    </div>
</div>

<script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/resources/dist/js/adminlte.min.js"></script>

</body>
</html>