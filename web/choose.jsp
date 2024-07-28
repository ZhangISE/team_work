<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/23
  Time: 上午11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>身份选择</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
        <script>
            function choose(){
                let SelVal = document.getElementById("sdcard").value
                if(SelVal.toString() === "ordinary")
                    location.href = "register_ord.jsp"
                else if(SelVal.toString() === "enterprise")
                    location.href = "register_ent.jsp"
                else
                    location.href = "register_adm.jsp"
            }
        </script>
        <style>
            #sdcard{
                -webkit-appearance: none;
                margin-top: 50px;
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
    </head>
    <body>
        <div id="bigBox">
            <h1>选择您要注册的用户身份</h1>
            <div class="inputBox">
                <form method="post">
                    <div class="inputText">
                        <label>
                            <select id="sdcard" name="sdcard">
                                <option value="ordinary" selected="selected">普通用户</option>
                                <option value="enterprise">企业用户</option>
                                <option value="administrator">管理用户</option>
                            </select>
                        </label>
                    </div>
                    <input type="button" class="inputButton" onclick="choose()" value="选择" />
                </form>
            </div>
        </div>
    </body>
</html>
