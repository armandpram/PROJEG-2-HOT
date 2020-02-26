<%-- 
    Document   : prosesdelete
    Created on : Feb 15, 2020, 10:31:35 AM
    Author     : Aku yang tersakiti
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.koneksi"%>

<%
        String nim=request.getParameter("nim");
        String nama=request.getParameter("nama");
        String jk=request.getParameter("jk");
        String peminatan1=request.getParameter("p1");
        String peminatan2=request.getParameter("p2");
        String peminatan3=request.getParameter("p3");
        String alamat=request.getParameter("alamat");
        String agama=request.getParameter("agama");
        String email=request.getParameter("email");
        String dapat=request.getParameter("cmddelete");
  
        if(request.getParameter("cmddelete")!=null) {
            String query = "delete from calas19 where nim='"+nim+"'";
            stm.executeUpdate(query);
            out.println("Data berhasil dihapus");
            out.println(" <a href='index.jsp'>KEMBALI</a>");
        }
        
        conn.close();
        stm.close();
        catch(Exception e) {
                out.println("error : "+en);
                }
            
%>        