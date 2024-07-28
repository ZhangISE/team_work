<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/27
  Time: 上午12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String user_name = request.getParameter("username");
        String password = request.getParameter("password");
        String nickname =request.getParameter("nickname");
        String IdCard = request.getParameter("IdCard");
        String phone = request.getParameter("phone");

        String db_url = "jdbc:mysql://localhost:3306";
        String db_username = "root";
        String db_password = "X17317721579!";
        int num;
        String n = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(db_url, db_username, db_password);
            Statement statement = conn.createStatement();
            String operation = "select count(*) from appdata.user_info";
            ResultSet resultset = statement.executeQuery(operation);
            resultset.next();
            num = resultset.getInt(1);
            n = String.format("%012d", num);


            operation = String.format("insert into appdata.user_info(user_id, user_name, password, status, nickname, level) values('%s','%s','%s','T','%s',1);",n ,user_name, password, nickname);
            statement.executeUpdate(operation);

            operation = String.format("insert into appdata.ent_user(ent_id, user_id, phone) values ('%s','%s','%s');",IdCard ,n , phone);
            statement.executeUpdate(operation);

            conn.close();
            statement.close();
            resultset.close();
        }
        catch(Exception e){
            out.println("Error: " + e.getMessage());
        }
        response.sendRedirect("index.jsp");
    %>
</body>
</html>

