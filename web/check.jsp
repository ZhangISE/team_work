<%--
  Created by IntelliJ IDEA.
  User: 张钰龙
  Date: 2024/7/23
  Time: 上午10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"  %>
<%@ page import="java.util.Objects" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            String uName = request.getParameter("username");
            String uPassword = request.getParameter("password");
            String sdcard = request.getParameter("sdcard");
            String url = "jdbc:mysql://localhost:3306";
            String username = "root";
            String password = "X17317721579!";
            int num = 0;
            int uLevel;
            if(Objects.equals(sdcard, "ordinary"))
                uLevel = 2;
            else if(Objects.equals(sdcard, "enterprise"))
                uLevel = 1;
            else
                uLevel = 0;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement statement = conn.createStatement();
                String operation = "SELECT count(*) FROM appdata.user_info where user_name = '" + uName + "'and password = '" + uPassword + "'and level = '" + uLevel + "'";
                ResultSet resultset = statement.executeQuery(operation);
                resultset.next();
                num = resultset.getInt(1);
            }
            catch(Exception e){
                out.println("Error: " + e.getMessage());
            }
            if (num > 0){
                switch (uLevel){
                    case 0:
                        response.sendRedirect("success_adm.jsp");
                        break;
                    case 1:
                        response.sendRedirect("success_ent.jsp");
                        break;
                    case 2:
                        response.sendRedirect("success_ord.jsp");
                }
            }
            else{
                response.sendRedirect("relogin.jsp");
            }
        %>
    </body>
</html>
