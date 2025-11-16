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
    String no = request.getParameter("no");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String hitStr = request.getParameter("hit");
    String createdDate = request.getParameter("created_date");

    int hit =0;
    try{
        hit=Integer.parseInt(hitStr);
    }catch (Exception e){

    }
%>
<html>
<head>
    <title>글 수정 완료 </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="container mt-5">
    <h2 class="mb-4">글 수정 결과</h2>

    <div class="card p-4 mb-3">
        <p><strong>번호(no):</strong> <%= no %></p>
        <p><strong>제목(title):</strong> <%= title %></p>
        <p><strong>작성자(writer):</strong> <%= writer %></p>
        <p><strong>조회수(hit):</strong> <%= hit %></p>
        <p><strong>작성일(created_date):</strong> <%= createdDate %></p>
    </div>

    <a href="list.jsp" class="btn btn-primary">목록으로</a>

</body>
</html>
