<%--
  Created by IntelliJ IDEA.
  User: gimgiu
  Date: 2025. 11. 16.
  Time: AM 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no = request.getParameter("no");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String hit = request.getParameter("hit");
    String createdDate = request.getParameter("created_date");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>글 저장 결과</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">

<header class="d-flex justify-content-center py-3 mb-4 border-bottom">
    <ul class="nav">
        <li class="menu-item active">Home</li>
        <li class="menu-item">New</li>
        <li class="menu-item">Mac</li>
        <li class="menu-item">iPad</li>
        <li class="menu-item">iPhone</li>
    </ul>
</header>

<h2 class="mb-4">글 저장 결과 (write_ok.jsp)</h2>

<table class="table table-bordered">
    <tr><th>번호</th><td><%= no %></td></tr>
    <tr><th>제목</th><td><%= title %></td></tr>
    <tr><th>작성자</th><td><%= writer %></td></tr>
    <tr><th>조회수</th><td><%= hit %></td></tr>
    <tr><th>작성일</th><td><%= createdDate %></td></tr>
</table>

<a href="list.jsp" class="btn btn-primary">목록으로</a>

</body>
</html>