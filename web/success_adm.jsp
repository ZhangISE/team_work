<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/26
  Time: 下午5:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Fixed Left Rectangle with Links</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/content.css" />
    <script>
        function management(){
            location.href = "success_adm.jsp";
        }
    </script>
    <style>
        .container {
        height: 100vh; /* 设置容器高度为整个视口高度 */
        display: flex;
        flex-direction: column;
        }

        .top-section {
        height: 20%; /* 上20%的高度 */
        display: flex;
        align-items: center;
        padding: 10px; /* 内边距 */
        }

        .search-box {
        width: 50%;
        }

        .buttons {
        width: 10%;
        }

        .bottom-section {
        flex: 1; /* 下80%的高度，占据剩余空间 */
        overflow-y: auto; /* 纵向滚动 */
        padding: 10px; /* 内边距 */
        }

        table {
        width: 100%;
        border-collapse: collapse;
        }

        th, td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: left;
        }

        th {
        background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="success_adm_alter_sidebar">
    <div class="success_adm_alter_div">
        <div class="success_adm_alter_div">菜 单</div>
    </div>
    <div class="success_adm_alter_div">
        <input type="button" class="success_adm_alter_input" value="Link">
    </div>
    <div class="success_adm_alter_div">
        <input type="button" class="success_adm_alter_input" value="Link">
    </div>
</div>
<div style="margin-left: 200px; padding: 20px;">
    <div class="container">
        <div class="top-section">
            <div class="search-box" style="width: 100%;">
                <!-- 横向占比50%的搜索框 -->
                <input type="text" placeholder="搜索...">
            </div>
            <div class="buttons" style="width: 10%;">
                <!-- 横向占比10%的两个按钮 -->
                <button>按钮1</button>
                <button>按钮2</button>
            </div>
        </div>
        <div class="bottom-section">
            <!-- 下80%的显示信息表格 -->
            <table>
                <thead>
                <tr>
                    <th>列1</th>
                    <th>列2</th>
                    <th>列3</th>
                    <!-- 表头 -->
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>数据1</td>
                    <td>数据2</td>
                    <td>数据3</td>
                    <!-- 表格内容 -->
                </tr>
                <!-- 更多行 -->
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>
