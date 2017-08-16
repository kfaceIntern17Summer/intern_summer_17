<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> memberData = (List<Map<String, Object>>) request.getAttribute("memberData");
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> cellData = (List<Map<String, Object>>) request.getAttribute("cellData");

    @SuppressWarnings("unchecked")
    int cell_idx = (Integer) request.getAttribute("cellID");
    int leader_idx = 0;
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
                <li class="active"><a href="/celllist"><i class="fa fa-link"></i> <span>셀 목록</span></a></li>
                <li><a href="/dailyReport"><i class="fa fa-link"></i> <span>모임 일지</span></a></li>
                <li><a href="/cell-management"><i class="fa fa-link"></i> <span>셀 관리</span></a></li>
                <li><a href="/member-management"><i class="fa fa-link"></i> <span>멤버 관리</span></a></li>

            </ul>
        </section>
    </aside>

    <div class="content-wrapper">
        <section class="content-header">
            <%
                for (Map<String, Object> cell : cellData) {
            %>
            <h1>
                멤버 관리</br>
                <small><%=cell.get("cell_name")%>
                </small>
                <%
                    try {
                        leader_idx = (Integer) cell.get("cell_leader_idx");
                    } catch (NullPointerException e) {

                    }
                %>
            </h1>

            <small>리더: <%
                if (cell.get("member_name") == null) {
            %>
                없음
                <%
                } else {
                %>
                <%=cell.get("member_name")%>
                <%
                    }

                %>
            </small>

            </h1>

            <%
                }
            %>


        </section>

        <section class="content container-fluid">

            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">멤버</h3>
                </div>
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table no-margin">
                            <thead>
                            <tr>
                                <th>이름</th>
                                <th>직책</th>
                                <th>생일</th>
                                <th>전화번호</th>
                            </tr>
                            </thead>
                            <tbody>

                            <%--리더인 경우 먼저 출력--%>
                            <%
                                for (Map<String, Object> member : memberData) {
                                    if ((Integer) member.get("member_idx") == leader_idx) {
                            %>
                            <tr>
                                <td><%=member.get("member_name")%>
                                </td>
                                <td><span class="label label-success">
                                    리더
                                    </span></td>
                                <td><%=member.get("birthday")%>
                                </td>
                                <td><%=member.get("phone")%></td>
                            </tr>
                            <%
                                    }
                                }
                            %>

                            <%--나머지 멤버들 출력--%>
                            <%
                                for (Map<String, Object> member : memberData) {
                                    if ((Integer) member.get("member_idx") == leader_idx) {
                                        continue;
                                    } else {
                            %>
                            <tr>
                                <td><%=member.get("member_name")%>
                                </td>
                                <td><span class="label label-success">
                                    목원
                                </span></td>
                                <td><%=member.get("birthday")%>
                                </td>
                                <td><%=member.get("phone")%></td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="box-footer clearfix">

                </div>
            </div>

        </section>

        <script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="/resources/dist/js/adminlte.min.js"></script>

    </div>
</div>
</body>
</html>