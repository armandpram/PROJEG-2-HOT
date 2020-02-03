/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.projeg2hot.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Administrator
 */
public class Koneksi {
    private Connection conn;
    private Statement st;
    
    public static void database() {
        try {
            String db = "jdbc:mysql://localhost:3306/Projeg2Hot";
            String user = "root";
            String pass = "";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(db, user, pass);
        } catch (Exception x) {
            System.out.println("Terjadi Kesahalan Koneksi :" + x);
        }
    }
    public void diskonek(ResultSet rs) throws SQLException {
        try {
            if (rs != null) {
                rs.close();
            }
            st.close();
            conn.close();
        } catch (Exception x) {
            System.out.println("Terjadi Kesalahan Diskoneksi : " + x);
        }
    }
    
    public ResultSet ambilData(String sql) {
        ResultSet rs = null;
        try {
            database();
            rs = st.executeQuery(sql);
        } catch (Exception x) {
            System.out.println("Terjadi kesalahan ambil data : " + x);
        }
        return rs;
    }
    
    public void simpanData(String sql) {
        try {
            database();
            st.executeUpdate(sql);
        } catch (Exception x) {
            System.out.println("Terjadi Kesalahan simpan data : " + x);
        }
    }
}
