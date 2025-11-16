<%--
  Created by IntelliJ IDEA.
  User: gimgiu
  Date: 2025. 11. 16.
  Time: PM 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");  // ★ 제일 먼저 실행되게 유지!
    String username = request.getParameter("username");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form OK</title>
</head>
<body>
<h1>Form OK</h1>
<p>입력한 이름: <%= username %></p>
</body>
</html>

