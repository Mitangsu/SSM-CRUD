
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        a{
            text-decoration: none;
            color:black;
            font-size: 18px;

        }
        h3{
            width: 180px;
            height: 38px;
            /*外边距的意思*/
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            /*圆形边框*/
            border-radius: 8px;
        }
    </style>
</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a>
</h3>
</body>
</html>
