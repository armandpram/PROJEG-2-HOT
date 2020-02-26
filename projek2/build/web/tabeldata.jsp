<%-- 
    Document   : tabeldata
    Created on : Feb 14, 2020, 4:43:18 PM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.koneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <script src="assets/jquery/jquery-3.3.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String query = "SELECT * FROM calas19";
            String er = "";
            ResultSet result = null;
            try{
            Statement statement = koneksi.getConnection().prepareStatement(query);
            result = statement.executeQuery();
            }catch(Exception e){
            er = e.getMessage();
            }
            
        %>
    </body>
</html>
