<%--
  Created by IntelliJ IDEA.
  User: gimgiu
  Date: 2025. 11. 16.
  Time: PM 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no = request.getParameter("no");
%>
<html>
<head>
    <title>삭제</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .menu-item { padding: 8px 16px; font-size: 1.1rem; cursor: pointer; color: #333; }
        .menu-item:hover { color: #0d6efd; }
        .menu-item.active { color: #0d6efd; font-weight: 600; }
    </style>

</head>
<body class="container mt-5">

<header class="d-flex justify-content-center py-3 mb-4 border-bottom">
    <ul class="d-flex list-unstyled">
        <li class="menu-item active">Home</li>
        <li class="menu-item">New</li>
        <li class="menu-item">Mac</li>
        <li class="menu-item">iPad</li>
        <li class="menu-item">iPhone</li>
    </ul>
</header>


<h2 class="mb-4">글 삭제 결과</h2>

<div class="alert alert-danger">
    <strong><%= no %></strong> 번 글이 삭제된 것으로 처리되었습니다.<br>
</div>

<a href="list.jsp" class="btn btn-primary">목록으로</a>

</body>
</html>
