<%@page import="jdbc.koneksi"%>
<%@page import="java.sql.*" %>
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
        String dapat=request.getParameter("cmdsimpan");
        
        
        
        if(dapat.toString().equals("Add"))
        {
            if(nim.equals("")){
                out.print("<script>alert('No Induk Mahasiswa Harus di isi!')</script>");
               
            }else if(peminatan1=="null"){
                peminatan1 = "";
            }else if(peminatan1=="null"){
                peminatan1 = "";
            }else if(peminatan1=="null"){
                peminatan1 = "";
            }
            
            else {
                String peminatan123 = peminatan1+","+peminatan2+","+peminatan3;
            
                try
                {
                    koneksi konek=new koneksi();
                    Connection conn=konek.bukaKoneksi();
                    Statement st=conn.createStatement();
                    String sql="insert into calas19 (NIM, NAMA, JK, PEMINATAN, ALAMAT, AGAMA, EMAIL) "
                            + "values ('"+nim+"', '"+nama+"', '"+jk+"', '"+peminatan123+"', '"+alamat+"', '"+agama+"', '"+email+"')";
                    st.executeUpdate(sql);
                    conn.close();
                    String index = "index.jsp";
                    out.print("<script>alert('Data Berhasil Disimpan!')</script>");
                    response.sendRedirect(index);
                }
                catch(Exception e)
                {
                    out.print(e);
                }
            
            }
            
            
        } 
%>