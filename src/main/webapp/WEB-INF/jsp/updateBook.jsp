
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--BookStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" >
            <div class="page-header">
                <h1>
                    <small>书籍列表---修改数据</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--要添加隐藏域--%>
        <input type="hidden" name="bookID" value="${QBooks.bookID}"/>
        书籍名称：<input type="text" name="bookName" value="${QBooks.bookName}" required><br><br><br>
        书籍数量：<input type="text" name="bookCounts" value="${QBooks.bookCounts}" required><br><br><br>
        书籍详情：<input type="text" name="detail" value="${QBooks.detail}" required><br><br><br>
        <input type="submit" value="修改">
    </form>

</div>


</body>
</html>
