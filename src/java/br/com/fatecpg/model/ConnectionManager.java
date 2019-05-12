/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Mulero
 */
public class ConnectionManager {

    private static final String URL = "jdbc:derby://localhost:1527/sample";
    private static final String DRIVERNAME = "org.apache.derby.jdbc.ClientDriver";
    private static final String USERNAME = "app";
    private static final String PASSWORD = "app";

    private static Connection con;

    public static void ConnectionManager() {
        try {
            Class.forName(DRIVERNAME);
        } catch (ClassNotFoundException e) {
            System.out.println("ClassNotFoundException");
            System.out.println(e.toString());
        }
    }

    public static Connection createConnection() {
        try {
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            System.out.println("SQLException");
            System.out.println(e.toString());
        }
        return con;
    }

    public static void closeConnection() {
        try {
            ConnectionManager.con.close();
        } catch (SQLException e) {
            System.out.println("SQLException");
            System.out.println(e.toString());
        }
    }
}
