<%-- 
    Document   : index
    Created on : Feb 3, 2020, 12:54:21 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="projek.jsp">
            <table> 
                <tr>
                    <td>nim:</td>
                    <td><input type="text" name="txtnim"></td>
                    <td><input type='submit' value='cari' name='cmdsimpan'></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>nama:</td>
                    <td><input type="text" name="txtname"></td>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>alamat:</td>
                    <td><textarea name="txtalamat" rows="4" cols="21"></textarea>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td><input type='submit' value='simpan' name='cmdsimpan'></td>
                    <td><input type='submit' value='ubah' name='smdsimpan'>
                        &nbsp;<input type='submit' value='hapus' name='cmdsimpan'>
                        <input type='submit' value='batal' name='cmdsimpan'></td>
                </tr>
            </table>
        </form>
    </body>
</html>
