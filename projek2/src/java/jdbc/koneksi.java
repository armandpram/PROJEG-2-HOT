/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package jdbc;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class koneksi {
    public Connection bukaKoneksi ()throws SQLException{
        Connection connect;
        try{
         Class.forName("com.mysql.jdbc.Driver").newInstance();
            connect=(Connection) DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/biodata","root","");
            return (Connection) connect;
        }
        catch(ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException exc){
    }
        return null;
}
}
