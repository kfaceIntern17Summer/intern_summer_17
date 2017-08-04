<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<%
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> memberData = (List<Map<String, Object>>) request.getAttribute("memberData");
    int cell_idx = (Integer) request.getAttribute("cellID");
%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script language="JavaScript">
    $(document).ready(function () {
        var tbl = $("#checkboxTestTbl");

        // 테이블 헤더에 있는 checkbox 클릭시
        $(":checkbox:first", tbl).click(function () {
            // 클릭한 체크박스가 체크상태인지 체크해제상태인지 판단
            if ($(this).is(":checked")) {
                $(":checkbox", tbl).attr("checked", "checked");
            }
            else {
                $(":checkbox", tbl).removeAttr("checked");
            }
            // 모든 체크박스에 change 이벤트 발생시키기
            $(":checkbox", tbl).trigger("change");
        });

        // 헤더에 있는 체크박스외 다른 체크박스 클릭시
        $(":checkbox:not(:first)", tbl).click(function () {
            var allCnt = $(":checkbox:not(:first)", tbl).length;
            var checkedCnt = $(":checkbox:not(:first)", tbl).filter(":checked").length;

            // 전체 체크박스 갯수와 현재 체크된 체크박스 갯수를 비교해서 헤더에 있는 체크박스 체크할지 말지 판단
            if (allCnt == checkedCnt) {
                $(":checkbox:first", tbl).attr("checked", "checked");
            }
            else {
                $(":checkbox:first", tbl).removeAttr("checked");
            }
        }).change(function () {
            if ($(this).is(":checked")) {
                // 체크박스의 부모 > 부모 니까 tr 이 되고 tr 에 selected 라는 class 를 추가한다.
                $(this).parent().parent().addClass("selected");
            }
            else {
                $(this).parent().parent().removeClass("selected");
            }
        });

        $("#getCheckedAll").click(function() {
            $("input[name=checkRow]:checked").each(function() {
                var test = $(this).val();
                console.log(test);
            });
        });
    });

</script>



<style>
    #checkboxTestTbl {
        border-collapse: collapse;
    }

    #checkboxTestTbl td, #checkboxTestTbl th {
        padding: 20px;
    }

    #checkboxTestTbl th {
        background-color: #ffffff;
    }

    #checkboxTestTbl tr.selected {
        background-color: #b2ebf4;
        color: #000000;
        font-weight: bold;
    }
</style>

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

            <form action="/cellMember" method="post" id="getCheckedAll">

                <div class="box box-info">
                    <div class="box-body">
                        <div class="table-responsive">
                            <div class="form-group" style="padding-top: 10px;">
                                <label class="col-md-4 col-xs-2 control-label">멤버</label>


                                <div class="table-responsive">
                                    <table class="table no-margin" id="checkboxTestTbl">
                                        <colgroup>
                                            <col width="40px;"/>
                                            <col width="200px;"/>
                                            <col width="100px;"/>
                                        </colgroup>
                                        <%--<tr>--%>
                                        <%--<th><input type="checkbox"/></th>--%>
                                        <%--<th>제목</th>--%>
                                        <%--<th>날짜</th>--%>
                                        <%--</tr>--%>
                                        <thead>
                                        <tr>
                                            <th><input type="checkbox" name="checkAll" value="check all"/></th>
                                            <th>이름</th>
                                            <th>셀</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            for (Map<String, Object> member : memberData) {
                                        %>
                                        <tr>
                                            <td><input type="checkbox" name="checkRow"
                                                       value="<%=member.get("member_idx")%>"/></td>
                                            <td><%=member.get("member_name")%>
                                            </td>
                                            <td><%=member.get("cell_name")%>
                                            </td>
                                        </tr>
                                        <input type="hidden" name="cell_idx" value="<%=cell_idx%>">
                                        <%
                                            }
                                        %>
                                        </tbody>
                                    </table>


                                </div>

                            </div>
                            <br>


                        </div>
                    </div>
                    <div class="box-footer clearfix">
                        <%--<input type="button" id="getCheckedAll" value="get checked all" />--%>
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