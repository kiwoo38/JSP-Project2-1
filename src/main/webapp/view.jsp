<%--
  Created by IntelliJ IDEA.
  User: gimgiu
  Date: 2025. 11. 16.
  Time: AM 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String no=request.getParameter("no");

    String[][] posts = {
            {"1", "한동컵", "기웃기우", "18", "2025-11-13", "한동컵 대회 승리"},
            {"2", "즉새두 공연", "writer 2", "90", "2025-11-13", "즉새두 공연"},
            {"3", "감기", "writer 3", "5", "2025-11-14", "감기 유행"},
            {"4", "생일축하", "writer 4", "23", "2025-11-14", "친구 생일선물"},
            {"5", "케이크", "writer 5", "4", "2025-11-15", "케이크 맛집"},
            {"6", "AI", "writer 6", "20", "2025-11-15", "AI."},
            {"7", "네이버", "writer 7", "53", "2025-11-15", "네이버"},
            {"8", "비트코인", "writer 8", "37", "2025-11-16", "코인시장"},
            {"9", "주식", "writer 9", "65", "2025-11-16", "주식시장"}
    };

    String[] post = null;

    for(int i = 0; i < posts.length; i++) {
        if(posts[i][0].equals(no)) {
            post = posts[i];
            break;
        }
    }
%>
<html>
<head>
    <title>상세보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .menu-item { padding: 8px 16px; font-size: 1.1rem; cursor: pointer; color: #333; }
        .menu-item:hover { color: #0d6efd; }
        .menu-item.active { color: #0d6efd; font-weight: 600; }
    </style>
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

<h2 class="mb-4">상세보기</h2>
<%
    if(post==null){
%>
    <div class="alert alert-danger">
        번호<strong><%= no %></strong> 번 글을 찾을 수 없습니다.
    </div>
    <a href="list.jsp" class="btn btn-secondary">목록으로</a>
<%
    } else{
%>
    <table class="table table-bordered">
        <tr><th>번호</th><td><%= post[0] %></td></tr>
        <tr><th>제목</th><td><%= post[1] %></td></tr>
        <tr><th>작성자</th><td><%= post[2] %></td></tr>
        <tr><th>조회수</th><td><%= post[3] %></td></tr>
        <tr><th>작성일</th><td><%= post[4] %></td></tr>
        <tr><th>내용</th><td><%= post[5] %></td></tr>
    </table>

    <button class="btn btn-warning"
            onclick="location.href='edit.html?no=<%= post[0] %>'">
        수정
    </button>

    <button class="btn btn-danger"
            onclick="location.href='delete_ok.jsp?no=<%= post[0] %>'">
        삭제
    </button>

    <a href="list.jsp" class="btn btn-secondary">목록으로</a>

<%
    }
%>

</body>
</html>
