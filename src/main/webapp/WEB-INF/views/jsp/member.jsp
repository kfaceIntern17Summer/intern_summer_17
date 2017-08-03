<!DOCTYPE html>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                        <%--<div class="form-group">--%>
                            <%--<label class="col-md-4 control-label">셀이동</label>--%>

                            <%--<select name="cell_idx" size="5" class="form-control col-md-4 col-xs-6">--%>
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
                        <%--<br>--%>
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
                            <div class="col-md-4"><%=map.get("createdDate")%>
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
</div>
<aside class="control-sidebar control-sidebar-dark">

    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
        <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
        <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <div class="tab-content">
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
        </div>
        <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>

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
            </form>
        </div>
    </div>
</aside>

<div class="control-sidebar-bg"></div>
</div>
<script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/resources/dist/js/adminlte.min.js"></script>

</body>
</html>