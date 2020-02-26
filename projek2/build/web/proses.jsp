<%--
    Document   : Simpan
    Created on : Feb 3, 2020, 4:16:50 PM
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
        <title>JSP Page</title> 
    </head>
    <body>
    <%
        String nim=request.getParameter("txtnim");
        String nama=request.getParameter("txtnama");
        String jk=request.getParameter("rbjk");
        String peminatan1=request.getParameter("p1");
        String peminatan2=request.getParameter("p2");
        String peminatan3=request.getParameter("p3");
        String alamat=request.getParameter("txtalamat");
        String agama=request.getParameter("menuagama");
        String email=request.getParameter("txtemail");
        String dapat=request.getParameter("cmdsimpan");
        
        
        
        if(dapat.toString().equals("Simpan"))
        {
            if(nim.equals("")){
                out.print("<script>alert('No Induk Mahasiswa Harus di isi!')</script>");
                out.print("<a href='index.jsp' class='btn btn-info'>Back</a>");
                
            }else {
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
                    out.print("Berhasil disimpan");
                    out.print("<a href='index.jsp'>Back</a>");
                }
                catch(Exception e)
                {
                    out.print(e);
                }
            
            }
        }
        else if(dapat.toString().equals("Cari"))
        {
            try
            {
                koneksi konek=new koneksi();
                Connection conn=konek.bukaKoneksi();
                Statement st=conn.createStatement();
                String sql="Select*from calas19 where nim='"+nim+"'";
                ResultSet res=st.executeQuery(sql);
                if(res.next())
                {
                %>
                <form action='proses.jsp' method='post'>
                    <table border='1'>
                        <tr>
                            <td>Nim</td>
                            <td><input type='text' name="txtnim" value="<%=res.getString(1)%>">
                                <input type='submit' value="Cari" name='cmdsimpan'></td>
                        </tr>
                        
                        <tr>
                            <td>Nama</td>
                            <td><input type="text" name="txtnama" value='<%=res.getString(2)%>'></td>   
                        </tr>
                        
                        <tr>
                            <td>Jenis Kelamin</td>
                            <td><checkbox type="radio" name="stream" value="<%=res.getString(4)%>"></checkbox></td>
                            <td><checkbox type="radio" name="stream" value="<%=res.getString(5)%>"></checkbox></td>
                        </tr>
                        
                        <tr>
                            <td>Peminatan</td>
                            <td><checkbox type="checkbox" name="p1" value="<%=res.getString(6)%>"></checkbox></td>
                            <td><checkbox type="checkbox" name="p2" value="<%=res.getString(7)%>"></checkbox></td>
                            <td><checkbox type="checkbox" name="p3" value="<%=res.getString(8)%>"></checkbox></td>
                        </tr>
                        
                        <tr>
                            <td>Alamat</td>
                            <td><textarea name='txtalamat' rows="4" cols="21"><%=res.getString(3)%></textarea></td>
                        </tr>
                        
                        <tr>
                            <td>Agama</td>
                            <td><select name="menu" size="l"></select></td>
                        </tr>
                        
                        <tr>
                            <td>Email</td>
                            <td><textarea type="textarea" name="txtemail" value="<%=res.getString(9)%>"></textarea></td>
                        </tr>
                        
                        <tr>
                            <td><input type="submit" value="simpan" name="cmdsimpan">&nbsp;
                                <input type="submit" value="ubah" name="cmdsimpan">&nbsp;
                                <input type="submit" value="batal" name="cmdsimpan"></td>
                            <td><input type="reset" value="batal"></td>
                        </tr>
                    </table>
                </form>
            <%
                }
            }
            catch(Exception e)
            {
                out.print(e);
            }
        }
        else if(dapat.toString().equals("Ubah"))
        {
            String peminatan123 = peminatan1+","+peminatan2+","+peminatan3;
            try
            {
                koneksi konek=new koneksi();
                Connection conn=konek.bukaKoneksi();
                Statement st=conn.createStatement();
                String sqll="update calas19 set nama='"+nama+"', jk='"+jk+"', alamat='"+alamat+"', peminatan='"+peminatan123+"', agama='"+agama+"', email='"+email+"' "+"where nim='"+nim+"'";
                st.executeUpdate(sqll);
                conn.close();
                out.print("Berhasil diubah");
                out.print("<a href='index.jsp'>Back</a>");
            }
            catch(Exception e)
            {
                out.print(e);
            }
        }
        else if(dapat.toString().equals("Hapus"))
        {
            try
            {
                koneksi konek=new koneksi();
                Connection conn=konek.bukaKoneksi();
                Statement st=conn.createStatement();
                String sqll="delete from calas19 where nim='"+nim+"'";
                st.executeUpdate(sqll);
                conn.close();
                out.print("Berhasil dihapus");
                out.print("<a href='index.jsp'>Back</a>");
            }
            catch(Exception e)
            {
                out.print(e);
            }
        }
        else if(dapat.toString().equals("Tampil"))
        {
            try
            {
                koneksi konek=new koneksi();
                Connection conn = konek.bukaKoneksi();
                Statement st=conn.createStatement();
                ResultSet res=null;
                String query="SELECT * FROM calas19";
                res = st.executeQuery(query);
                    String t1 = res.getString("NIM");
                    String t2 = res.getString("NAMA");
                    String t3 = res.getString("JK");
                    String t4 = res.getString("PEMINATAN");
                    String t5 = res.getString("ALAMAT");
                    String t6 = res.getString("AGAMA");
                    String t7 = res.getString("EMAIL");
                if(res!=null){
                while (res.next()){
                    
            %>
                <table>
                    <tr>
                        <td>NIM</td>
                        <td>Nama</td>
                        <td>Jenis Kelamin</td>
                        <td>Peminatan</td>
                        <td>Alamat</td>
                        <td>Agama</td>
                        <td>Email</td>
                    </tr>
                    <tr>
                        <td><% out.println(t1); %></td>
                        <td><% out.println(t2); %></td>
                        <td><% out.println(t3); %></td>
                        <td><% out.println(t4); %></td>
                        <td><% out.println(t5); %></td>
                        <td><% out.println(t6); %></td>
                        <td><% out.println(t7); %></td>
                    </tr>
                </table>
            <%
                }}
        } catch (Exception e){
            out.print(e);
        }
        %>
        <button href="index.jsp">Kembali</button>
    </body>
</html>
