/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import static br.com.fatecpg.model.ConnectionManager.initConnection;
import static br.com.fatecpg.model.ConnectionManager.stopConnection;

/**
 *
 * @author Mulero
 */
public class Customer {

    private static Connection con = null;
    private static Statement stmt = null;
    private static PreparedStatement preStmt = null;
    private static ResultSet rs = null;

    private int id;
    private String name;
    private String email;

    public Customer(int id, String name, String email) {
        this.id = id;
        this.name = name;
        this.email = email;
    }

    public static Customer getCustomerById(int id) throws Exception {
        initConnection();
        String sql = "SELECT * FROM CUSTOMER WHERE CUSTOMER_ID = ? ";

        con = ConnectionManager.startConnection();
        preStmt = con.prepareStatement(sql);
        preStmt.setInt(1, id);
        rs = preStmt.executeQuery();

        Customer customer = null;

        if (rs.next()) {
            customer = new Customer(
                    rs.getInt("CUSTOMER_ID"),
                    rs.getString("NAME"),
                    rs.getString("EMAIL")
            );
        }

        stopConnection();
        return customer;
    }

    public static ArrayList<Customer> getCustomers() throws Exception {
        initConnection();
        String sql = "SELECT * FROM CUSTOMER ORDER BY CUSTOMER_ID";

        con = ConnectionManager.startConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sql);

        ArrayList<Customer> list = new ArrayList<>();

        while (rs.next()) {
            Customer c = new Customer(
                    rs.getInt("CUSTOMER_ID"),
                    rs.getString("NAME"),
                    rs.getString("EMAIL")
            );
            list.add(c);
        }

        stopConnection();
        return list;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
