<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/24
  Time: 下午4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<%--<body>--%>
<%--<%--%>
<%--    String url = "jdbc:mysql://localhost:3306";--%>
<%--    String username = "root";--%>
<%--    String password = "X17317721579!";--%>
<%--    try {--%>
<%--        Class.forName("com.mysql.jdbc.Driver");--%>
<%--        Connection conn = DriverManager.getConnection(url, username, password);--%>
<%--        Statement stmt = conn.createStatement();--%>
<%--        String sql = "SELECT user_id, user_name, password, status, nickname, level FROM appdata.user_info";--%>
<%--        ResultSet rs = stmt.executeQuery(sql);--%>
<%--        while (rs.next()) {--%>
<%--            String uid = rs.getString("user_id");--%>
<%--            String uname = rs.getString("user_name");--%>
<%--            String psw = rs.getString("password");--%>
<%--            out.print(uid + "   " + uname + "   " + psw + "\n");--%>
<%--        }--%>
<%--        rs.close();--%>
<%--        stmt.close();--%>
<%--        conn.close();--%>
<%--    }--%>
<%--    catch (Exception e) {--%>
<%--        out.println("Error: " + e.getMessage());--%>
<%--    }--%>
<%--%>--%>
<%--</body>--%>
<body>
<div id="bigBox">
    <h1>LOGIN</h1>
    <div class="inputBox">
        <form action="check.jsp" method="post">
            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <input type="text" placeholder="手机号或邮箱" name="username"/>
            </div>
            <div class="inputText">
                <i class="fa fa-key" style="color: whitesmoke;"></i>
                <input type="password" placeholder="密码" name="password"/>
            </div>
            <input type="submit" class="inputButton" value="LOGIN" />
        </form>
    </div>
</div>
</body>
</html>
