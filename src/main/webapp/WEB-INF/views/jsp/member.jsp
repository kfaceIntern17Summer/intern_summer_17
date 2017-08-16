<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> memberData = (List<Map<String, Object>>) request.getAttribute("memberData");
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>xx교회청년부</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/resources/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect. -->
    <link rel="stylesheet" href="/resources/dist/css/skins/skin-blue.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.13/js/dataTables.bootstrap4.min.js"></script>

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">

        <a href="/" class="logo">
            <span class="logo-mini"><b>A</b>LT</span>
            <span class="logo-lg"><b>Admin</b> CELL</span>
        </a>

        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Alexander Pierce</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    Alexander Pierce - Web Developer
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </div>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
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
                <li><a href="/dailyReport"><i class="fa fa-link"></i> <span>모임 일지</span></a></li>
                <li><a href="/cell-management"><i class="fa fa-link"></i> <span>셀 관리</span></a></li>
                <li class="active"><a href="/member-management"><i class="fa fa-link"></i> <span>멤버 관리</span></a></li>

            </ul>
        </section>
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                교인 정보 </br>
                <%--<small>특별사항 없음</small>--%>
            </h1>
            <%--            <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                            <li class="active">Here</li>
                        </ol>--%>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">

            <form action="/updateMember" method="post">
                <div class="box box-info">
                    <div class="box-body">
                        <div class="table-responsive">
                            <%
                                for (Map<String, Object> map : memberData) {
                            %>
                            <div class="form-group">
                                <label class="col-md-4 control-label">이름</label>
                                <div class="col-md-4"><input type="text" name="member_name"
                                                             value="<%=map.get("member_name")%>"></div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-md-4 control-label">생년월일</label>
                                <div class="col-md-4"><input type="date" name="birthday"
                                                             value="<%=map.get("birthday")%>">
                                </div>
                            </div>
                            <br>

                            <div class="form-group">
                                <label class="col-md-4 control-label">전화번호</label>
                                <div class="col-md-4"><input type="text" name="phone" value="<%=map.get("phone")%>">
                                </div>
                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-md-4 control-label">이메일</label>
                                <div class="col-md-4"><input type="text" name="email" value="<%=map.get("email")%>">
                                </div>
                            </div>

                            <br>
                            <div class="form-group">
                                <label class="col-md-4 control-label">등록날짜</label>
                                <div class="col-md-4"><input type="date" name="createdDate"
                                                             value="<%=map.get("createdDate")%>">
                                </div>
                            </div>

                            <br>
                            <div class="form-group">
                                <label class="col-md-4 control-label">주소</label>
                                <div class="col-md-4"><input type="text" name="address"
                                                             value="<%=map.get("address")%>">
                                </div>
                            </div>
                            <br>


                            <input type="hidden" name="member_idx" value="<%=map.get("member_idx")%>">


                        </div>
                    </div>
                </div>


                <div class="box-footer clearfix">
                    <a href="/deleteMember/<%=map.get("member_idx")%>"
                       class="btn btn-sm btn-default btn-flat pull-right">삭제</a>
                    <input type="submit" value="수정" class="btn btn-sm btn-default btn-flat pull-right">
                </div>
            </form>

            <%
                }
            %>

        </section>
        <!-- /.content -->
    </div>


    <!-- /.content-wrapper -->

    <%-- <!-- Main Footer -->
     <footer class="main-footer">
         <!-- To the right -->
         <div class="pull-right hidden-xs">
             Anything you want
         </div>
         <!-- Default to the left -->
         <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
     </footer>--%>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
    immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>