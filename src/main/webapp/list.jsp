<%--
  Created by IntelliJ IDEA.
  User: gimgiu
  Date: 2025. 11. 15.
  Time: PM 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // 🔹 Mock data (DB 대신 하드코딩)
    String[][] posts = {
            {"1", "한동컵", "기웃기우", "18", "2025-11-13"},
            {"2", "즉새두 공연", "writer 2", "90", "2025-11-13"},
            {"3", "감기", "writer 3", "5", "2025-11-14"},
            {"4", "생일축하", "writer 4", "23", "2025-11-14"},
            {"5", "케이크", "writer 5", "4", "2025-11-15"},
            {"6", "AI", "writer 6", "20", "2025-11-15"},
            {"7", "네이버", "writer 7", "53", "2025-11-15"},
            {"8", "비트코인", "writer 8", "37", "2025-11-16"},
            {"9", "주식", "writer 9", "65", "2025-11-16"}
    };

%>

<!DOCTYPE html>
<head>
    <title>자유게시판</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .title-link{
            color:black;
            text-decoration: none;
        }
        .title-link:hover{
            color: #0fd2c2;
            text-decoration: underline;
        }
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

<h2 class="mb-4">자유게시판</h2>

<!-- 검색 + Add 버튼 영역 -->
<form class="row g-2 mb-3">
    <div class="col-auto">
        <select name="type" class="form-select">
            <option value="title">title</option>
            <option value="writer">writer</option>
        </select>
    </div>

    <div class="col-auto">
        <input type="text" name="keyword" class="form-control" placeholder="검색어 입력">
    </div>

    <div class="col-auto">
        <button class="btn btn-primary">Search</button>
    </div>

    <div class="col-auto">
        <button type="button" class="btn btn-success" onclick="location.href='write.html'">Add</button>
    </div>
</form>


<table class="table table-striped table-hover align-middle">
    <thead class="table-dark">
    <tr>
        <th scope="col">#</th>
        <th scope="col">title</th>
        <th scope="col">writer</th>
        <th scope="col">hit</th>
        <th scope="col">created_date</th>
        <th scope="col">Menu</th>
    </tr>
    </thead>
    <tbody>
    <%  // 🔹 현재 페이지에 해당하는 글만 출력
        for(int i = 0; i <posts.length; i++) {
    %>
    <tr>
        <td><%= posts[i][0] %></td>
        <td>
            <a class="title-link" href="view.jsp?no=<%= posts[i][0] %>">
                <%= posts[i][1] %>
            </a>
        </td>
        <td><%= posts[i][2] %></td>
        <td><%= posts[i][3] %></td>
        <td><%= posts[i][4] %></td>
        <td>
            <button class="btn btn-sm btn-warning" onclick="location.href='edit.html?no=<%= posts[i][0] %>'">Edit</button>
            <button class="btn btn-sm btn-danger" onclick="location.href='delete_ok.jsp?no=<%= posts[i][0] %>'">Delete</button>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>