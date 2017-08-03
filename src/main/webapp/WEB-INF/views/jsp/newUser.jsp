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

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    </script>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

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