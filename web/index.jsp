<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/12
  Time: 下午9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>登陆页面</title>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
  <style>
    #sdcard{
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      padding: 8px;
      border: 1px solid #999;
      border-radius: 5px;
      background-color: #f1f1f1;
      color: #333;
      font-size: 16px;
      width: 200px;
      height: auto;
    }

    select:after {
      content: "\25BC";
      position: absolute;
      top: 12px;
      right: 10px;
    }

    option {
      padding: 5px;
      background-color: #f9f9f9;
      color: #333;
    }
  </style>
  <script>
    function href(){
      window.location.href = "choose.jsp";
    }
  </script>
</head>
<body>
<div id="bigBox">
  <h1>登录</h1>
  <div class="inputBox">
    <form method="post" action="check.jsp">
      <div class="inputText" style="color: white; font-size:20px">
        <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
        账户：
        <label>
          <input type="text" placeholder="用户名" id="username" name="username"/>
        </label>
      </div>
      <div class="inputText" style="color: white; font-size:20px">
        <i class="fa fa-key" style="color: whitesmoke;"></i>
        密码：
        <label>
          <input type="password" placeholder="密码" id="password" name="password"/>
        </label>
      </div>
      <div class="inputText" style="color: white; font-size:20px">
        <i class="fa fa-cogs" style="color: whitesmoke;"></i>
        身份：
        <label>
          <select id="sdcard" name="sdcard">
            <option value="ordinary" selected="selected">普通用户</option>
            <option value="enterprise">企业用户</option>
            <option value="administrator">管理用户</option>
          </select>
        </label>
      </div>
      <input type="submit" class="inputButton" value="登录" />
      <input type="button" class="inputButton" onclick="href()" value="注册" />
    </form>
  </div>
</div>
</body>
</html>
