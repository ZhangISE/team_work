<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/12
  Time: 下午9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册页面</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
        <style>
            #drive_license{
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
            function check() {
                let user_name = document.getElementById("username")
                let password = document.getElementById("password")
                let nickname = document.getElementById("nickname")
                let IdCard = document.getElementById("IdCard")
                let age = document.getElementById("age")
                let phone = document.getElementById("phone")
                let form = document.getElementById("form")
                let email = document.getElementById("email")
                let bool = 1
                if(IdCard.value.length !== 18) {
                    IdCard.value = null
                    IdCard.placeholder = "身份证格式错误"
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
                    nickname.placeholder =  "昵称请保持在1~255位"
                    bool = 0
                }
                else if(age.value < 0 || age.value > 80){
                    age.value = null
                    age.placeholder = "请输入有效年龄"
                    bool = 0
                }
                else if(phone.value.length !== 11){
                    phone.value = null
                    phone.placeholder = "手机号格式错误"
                    bool = 0
                }
                else if(email.value.length > 255){
                    email.value = null
                    email.placeholder = "邮箱格式错误"
                    bool = 0
                }
                if(bool === 1)
                    form.submit()
            }
        </script>
    </head>
    <body>
        <div id="bigBox" style="height: auto">
            <h1 style="font-family:宋体,serif; ">普通用户注册</h1>
            <div class="inputBox" style="font-family: 宋体,serif;font-size: 18px">
                <form action="register_ord_check.jsp" method="post" id="form">
                    <div class="inputText">
                        <label>
                            <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                            账户：<input type="text" placeholder="用户名" id = "username" name="username"/>
                        </label>
                    </div>
                    <div class="inputText">
                        <label>
                            <i class="fa fa-key" style="color: whitesmoke;"></i>
                            密码：<input type="password" placeholder="密码" id = "password" name="password"/>
                        </label>
                    </div>

                    <div class="inputText">
                        <label>
                            <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                            昵称：<input type="text" placeholder="昵称" id = "nickname" name="nickname"/>
                        </label>
                    </div>
                    <div class="inputText">
                        <label>
                            <i class="fa fa-address-card" style="color: whitesmoke;"></i>
                            证件：<input type="text" placeholder="身份证号码" id = "IdCard" name="IdCard"/>
                        </label>
                    </div>
                    <div class="inputText">
                        <label>
                            <i class="fa fa-birthday-cake" style="color: whitesmoke;"></i>
                            年龄：<input type="text" placeholder="年龄" id = "age" name = "age"/>
                        </label>
                    </div>
                    <div class="inputText">
                        <label>
                            <i class="fa fa-mobile" style="color: whitesmoke;"></i>
                            电话：<input type="text" placeholder="电话" id = "phone" name = "phone"/>
                        </label>
                    </div>

                    <div class="inputText">
                        <label>
                            <i class="fa fa-envelope" style="color: whitesmoke;"></i>
                            邮箱：<input type="text" placeholder="邮箱" id = "email" name = "email"/>
                        </label>
                    </div>
                    <div class="inputBox">
                        <label>
                            <i class="fa fa-address-card" style="color: whitesmoke;"></i>
                            驾照：<select id = "drive_license" name = "drive_license">
                                <option value = "1" selected="selected">可用</option>
                                <option value = "0">不可用</option>
                            </select>
                        </label>
                    </div>
                    <input type="button" class="inputButton" onclick="check()" value="注册" />
                </form>
            </div>
        </div>
    </body>
</html>
