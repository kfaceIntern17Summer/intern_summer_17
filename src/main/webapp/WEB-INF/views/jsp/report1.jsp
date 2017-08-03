<!DOCTYPE html>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    class CellInfo{
        public String member;

        CellInfo(String member){

            this.member = member;
        }
    }

    Map<String, Object> map = new HashMap<String, Object>();

    map.put("01", new CellInfo("Daniel Kang"));
    map.put("02", new CellInfo("Jinyoung Bae"));
    map.put("03", new CellInfo("Jaehwan Kim"));

    int count = 0;

%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ADMIN CELL</title>

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
                        <li><a href="/list">셀 1</a></li>
                        <li><a href="#">셀 2</a></li>
                    </ul>
                </li>

                <li class="active"s><a href="/dailyReport"><i class="fa fa-link"></i> <span>모임 일지</span></a></li>
                <li><a href="/cell-management"><i class="fa fa-link"></i> <span>관리</span></a></li>

            </ul>
        </section>
    </aside>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                모임 일지 </br>
                <small>셀 1</small>
            </h1>
        </section>

        <section class="content container-fluid">

            <div class="box box-info">

                <div class="box-header with-border">
                    <h3 class="box-title">셀 모임 일지</h3>
                </div>

                <div class="box-body">
                    <div class="table-responsive">
                        <div class="form-group">
                            <label class="col-md-4 control-label">셀 이름</label>
                            <div class="col-md-8">셀 1</div>
                        </div>
                        <br>
                        <% Date d = new Date();
                            SimpleDateFormat dateObj = new SimpleDateFormat("yy.MM.dd");
                            String s = dateObj.format(d);
                        %>
                        <div class="form-group">
                            <label class="col-md-4 control-label">날짜</label>
                            <div class="col-md-8"><%=s%></div>
                        </div>
                        <br>


                        <div class="form-group">

                            <label class="col-md-4 control-label">출석</label>
                            <div class="col-md-8">
                                <% for(String mapkey : map.keySet()){ %>
                                <div class="row" style="padding-bottom: 10px;">
                                    <label class="col-md-4">
                                        <p> <%=((CellInfo)map.get(mapkey)).member%> </p>
                                    </label>
                                    <label class="radio-inline2 col-md-2"><input type="radio" name=<%=(String)("optradio"+count)%>>출석</label>
                                    <label class="radio-inline2 col-md-2"><input type="radio" name=<%=(String)("optradio"+count)%>>결석</label>
                                </div>

                                <%count++; }%>
                            </div>

                        </div>

                        <br>
                        <div class="form-group">
                            <label class="col-md-4 control-label">메모</label>
                            <div class="col-md-8">
                                <% for(String mapkey : map.keySet()){ %>
                                <div class="row" style="padding-bottom: 10px;">
                                    <label class="col-md-4">
                                        <p> <%=((CellInfo)map.get(mapkey)).member%> </p>
                                    </label>
                                    <div class="col-md-8">
                                        <textarea class="form-control col-md-4" id="comment1"></textarea>
                                        <br> <br>
                                    </div>
                                </div>
                                <%}%>
                            </div>

                        </div>
                        <br> <br>
                        <br>
                        <br>
                        <br>
                        <br>


                    </div>
                    <div class="box-footer clearfix">
                        <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">완료</a>
                    </div>
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