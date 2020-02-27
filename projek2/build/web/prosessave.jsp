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
        String dapat=request.getParameter("cmdedit");
        
        String peminatan123 = peminatan1+","+peminatan2+","+peminatan3;
        
        koneksi obj = new koneksi();
        Connection conn = obj.bukaKoneksi();
        Statement stm = conn.createStatement();
        try {
        if (request.getParameter("cmdedit")!=null){
            String query ="update calas19 set nama = '"+nama+"'," + 
                    "jk='"+jk+"'," + "peminatan = '"+peminatan123+"', " + "alamat='"+alamat+"'," + "agama='"+agama+"'," + "email = '"+email+"' where nim ='"+nim+"'";
            stm.executeUpdate(query);
            out.println("Data sudah diubah");
            out.println("<a href='index.jsp'>KEMBALI</a>");
        }
        
        conn.close();
        stm.close();
        
        }catch(Exception e) {
                out.println("error : "+e);
                }
%>