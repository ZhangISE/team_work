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
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <script>
            function management(){
                location.href = "success_adm.jsp";
            }
        </script>
        <style>
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
    <body class="success_adm_alter_body">
        <div class="success_adm_alter_sidebar">
            <div class="success_adm_alter_div">
                <div class="success_adm_alter_input">
                    菜 单
                </div>
                <input type="button" class="success_adm_alter_input" value="Link">
                <input type="button" class="success_adm_alter_input" value="Link">
            </div>
        </div>
        <div class="success_adm_whole_div_out">
            <div class="success_adm_whole_div">
                <div class="success_adm_top_bar">
                    <div class="success_adm_top_search">
                        <label>
                            <input type="text" placeholder="搜索..." class="success_adm_top_input">
                            <button type="submit" class="success_adm_top_check_button">查询</button>
                            <button type="submit" class="success_adm_top_check_button">封禁</button>
                        </label>
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
