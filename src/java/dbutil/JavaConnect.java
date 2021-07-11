/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author MSGB
 */
public class JavaConnect {

    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException {
        PreparedStatement ps = null;

        Class.forName("com.mysql.jdbc.Driver");
          Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/badel", "root", "");
          //Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com/badelta2_badel", "badelta2_user", "Work2020");
        System.out.println("Vous etes connecté a mysql de wampserver");
        ps = con.prepareStatement(sql);

        return ps;
    }

    Connection con;

    public Connection createConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/badel", "root", "");
            //con = (Connection) DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com/badelta2_badel", "badelta2_user", "Work2020");
            System.out.println("Vous etes connecté a mysql de wampserver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException sqe) {
            sqe.printStackTrace();
        }

        return con;
    }
    
}
