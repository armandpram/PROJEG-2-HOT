<%-- 
    Document   : Simpan
    Created on : Feb 3, 2020, 4:16:50 PM
    Author     : Administrator
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.koneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String nim=request.getParameter("txtnim");
        String nama=request.getParameter("txtnama");
        String alamat=request.getParameter("txtalamat");
        String dapat=request.getParameter("cmdsimpan");
        if(dapat.toString().equals("simpan"))
        {
            try
            {
                koneksi konek=new koneksi();
                Connection conn=konek.bukaKoneksi();
                Statement st=conn.createStatement();
                String sql="insert into mahasiswa(nim, nama, alamat)"+ "values ('"+nim+"', '"+nama+"', '"+alamat+"')";
                st.executeUpdate(sql);
                conn.close();
                out.print("Berhasil disimpan");
                out.print("<a href='index.jsp'>Back</a>");
            }
            catch(Exception e)
            {
                out.print(e);
            }
        }
        else if(dapat.toString().equals("Cari"))
        {
            try
            {
                koneksi konek=new koneksi();
                Connection conn=konek.bukaKoneksi();
                Statement st=conn.createStatement();
                String sql="Select*from mahasiswa where nim='"+nim+"'";
                
            }
        }
        
    </body>
</html>
