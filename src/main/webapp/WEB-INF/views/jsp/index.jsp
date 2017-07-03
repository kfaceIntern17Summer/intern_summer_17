<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: jaeng
  Date: 2017. 7. 3.
  Time: PM 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    @SuppressWarnings("unchecked")
    List<Map<String, Object>> data = (List<Map<String, Object>>) request.getAttribute("data");
%>
<html>
<head>
    <title>Title</title>
</head>
<%
    // 이건 일반적인 Jsp 형식인데 Jstl을 쓸수도 있습니다
    for(Map<String, Object> map : data){
%>
        <%=map.get("user_name")%>
<%
    }
%>
<body>
</body>
</html>
