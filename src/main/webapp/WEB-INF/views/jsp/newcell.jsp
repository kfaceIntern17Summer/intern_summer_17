<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
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

    <div class="content-wrapper">

        <section class="content container-fluid">

            <form action="/newCell" method="post">
                <div class="box box-info">
                    <div class="box-body">
                        <div class="table-responsive">

                            <div class="form-group">
                                <label class="col-md-4 control-label">셀이름</label>
                                <div class="col-md-4"><input type="text" name="cell_name"></div>
                            </div>
                            <br>

                            <div class="form-group">
                                <label class="col-md-4 control-label">기간</label>
                                <div class="col-md-4"><input type="text" name="period">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                <div class="box-footer clearfix">
                    <input type="submit" value="추가하기">
                    <input type="reset" value="다시작성">
                </div>
            </form>

        </section>

        <script src="/resources/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="/resources/dist/js/adminlte.min.js"></script>


    </div>
</div>
</body>
</html>