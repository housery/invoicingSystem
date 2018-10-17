<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css">
    <title>登录</title>
</head>
<body>
<div class="jumbotron jumbotron-fluid">
    <div class="container login-box">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <h2>小型进销存系统</h2>
                <form action="${pageContext.request.contextPath}/doLogin.html" method="post">
                    <div class="form-group">
                        <label for="userName">用户名:</label>
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <label for="password">密码:</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox"> Remember me
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary">登录</button>
                    <button type="reset" class="btn">重置</button>
                </form>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
</div>
</body>
</html>
<script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/statics/layer-v3.1.1/layer/layer.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/login.js"></script>
