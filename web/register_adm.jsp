<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/23
  Time: 下午2:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册页面</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
        <script>
            function check() {
                let user_name = document.getElementById("username")
                let password = document.getElementById("password")
                let nickname = document.getElementById("nickname")
                let IdCard = document.getElementById("IdCard")
                let form = document.getElementById("form")
                let bool = 1
                if(IdCard.value !== "17317721579") {
                    IdCard.placeholder = "管理者秘钥错误"
                    bool = 0
                }
                else if(user_name.value.length > 12 || user_name.value.length < 6){
                    user_name.value = null
                    user_name.placeholder = "用户名请保持在6~12位"
                    bool = 0
                }
                else if(password.value.length > 11 || password.value.length < 6){
                    password.value = null
                    password.placeholder = "密码请保持在6~11位"
                    bool = 0
                }
                else if(nickname.value.length > 255 || nickname.value.length === 0){
                    nickname.value = null
                    nickname.placeholder =  "昵称请保持在1~11位"
                    bool = 0
                }
                if(bool === 1)
                    form.submit()
            }
        </script>
    </head>
    <body>
        <div id="bigBox" style="height: auto">
            <h1 style="font-family:宋体,serif; ">管理用户注册</h1>
            <div class="inputBox" style="font-family: 宋体,serif;font-size: 18px">
                <form  action="register_adm_check.jsp" method="post" id="form">
                    <div class="inputText">
                        <label>
                            <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                            账户：<input type="text" placeholder="用户名" id="username" name="username"/>
                        </label>
                    </div>
                    <div class="inputText">
                        <label>
                            <i class="fa fa-key" style="color: whitesmoke;"></i>
                            密码：<input type="password" placeholder="密码" id="password" name="password"/>
                        </label>
                    </div>
                    <div class="inputText">
                        <label>
                            <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                            昵称：<input type="text" placeholder="昵称" id="nickname" name="nickname"/>
                        </label>
                    </div>
                    <div class="inputText">
                        <label>
                            <i class="fa fa-address-card" style="color: whitesmoke;"></i>
                            证件：<input type="text" placeholder="管理员秘钥" id="IdCard" name="IdCard"/>
                        </label>
                    </div>
                    <input type="button" class="inputButton" onclick="check()" value="注册" />
                </form>
            </div>
        </div>
    </body>
</html>
