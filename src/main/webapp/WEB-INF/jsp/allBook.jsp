<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>

    <%--BookStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <div class="page-header">
                <h1>
                    <small>书籍列表---显示所有数据</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <%--toAddBook ${pageContext.request.contextPath}是JSP取得绝对路径的方法--%>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <%--查询数据--%>
            <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right" class="form-inline">
                <%--placeholder选框中出现的文字--%>
                <input type="text" name="queryBookName"  class="form-control" placeholder="请输入查询的书籍" required>
                <input type="submit" value="查询" class="btn btn-primary" >
            </form>
        </div>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 column" >
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
            </thead>
            <%--书籍是从数据库中查询出来的,从list中遍历出来--%>
            <tbody>
            <c:forEach var="book" items="${list}">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/ToUpdateBook?id=${book.bookID}">修改</a>
                         &nbsp; | &nbsp;
                        <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>
