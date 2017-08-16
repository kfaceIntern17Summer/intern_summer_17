<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> totalcellData = (List<Map<String, Object>>) request.getAttribute("totalcellData");
%>

<script>
    function goSubmit() {
        document.insertMember.submit();
        opener.parent.location.reload();
        return true;
    }
</script>
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

    <div class="content-wrapper">

        <section class="content container-fluid">

            <form action="insertMember" name="insertMember" method="post" onsubmit="return goSubmit();">
                <div class="box box-info">
                    <div class="box-body">
                        <div class="table-responsive">

                            <div class="form-group" style="padding-top: 10px;">
                                <label class="col-md-4 col-xs-2 control-label">이름</label>
                                <input class="col-md-2 col-xs-4 " type="text" name="member_name">
                            </div>
                            <br>
                            <%--<div class="form-group">--%>
                                <%--<label class="col-md-4 col-xs-2 control-label">셀 선택</label>--%>

                                <%--<select name="cell_idx" size="5">--%>
                                    <%--<%--%>
                                        <%--for (Map<String, Object> cells : totalcellData) {--%>
                                    <%--%>--%>
                                    <%--<option value="<%=cells.get("cell_idx")%>"><%=cells.get("cell_name")%>--%>
                                    <%--</option>--%>
                                    <%--<%--%>
                                        <%--}--%>
                                    <%--%>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                            <br>

                            <div class="form-group">
                                <label class="col-md-4 col-xs-2 control-label">생년월일</label>
                                <input class="col-md-2 col-xs-4" type="date" name="birthday">

                            </div>
                            <br>
                            <div class="form-group">
                                <label class="col-md-4 col-xs-2 control-label">등록 일자</label>
                                <input class="col-md-2 col-xs-4" type="date" name="createdDate">
                            </div>
                            <br>

                            <div class="form-group">
                                <label class="col-md-4 col-xs-2 control-label">전화번호</label>
                                <input class="col-md-2 col-xs-4" type="text" name="phone">
                            </div>
                            <br>

                            <div class="form-group">
                                <label class="col-md-4 col-xs-2 control-label">이메일</label>
                                <input class="col-md-4 col-xs-6 " type="text" name="email">
                            </div>
                            <br>

                            <div class="form-group">
                                <label class="col-md-4 col-xs-2 control-label">주소</label>
                                <input class="col-md-2 col-xs-4" type="text" name="address">
                            </div>
                            <br>

                        </div>
                    </div>
                    <div class="box-footer clearfix">
                        <input type="submit" value="추가하기">
                        <input type="reset" value="다시작성">
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