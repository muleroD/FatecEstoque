/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.model;

import static br.com.fatecpg.model.ConnectionManager.initConnection;
import static br.com.fatecpg.model.ConnectionManager.stopConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Mulero
 */
public class Product {

    private static Connection con = null;
    private static Statement stmt = null;
    private static PreparedStatement preStmt = null;
    private static ResultSet rs = null;

    private int id;
    private double purchaseCost;
    private String description;
    private String available;

    public Product(int id, double purchaseCost, String description, String available) {
        this.id = id;
        this.purchaseCost = purchaseCost;
        this.description = description;
        this.available = available;
    }

    public static ArrayList<Product> getProductByManufacturerID(int id) throws Exception {
        initConnection();
        stopConnection();
        return productList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Double getPurchaseCost() {
        return purchaseCost;
    }

    public void setPurchaseCost(Double purchaseCost) {
        this.purchaseCost = purchaseCost;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAvailable() {
        return available;
    }

    public void setAvailable(String available) {
        this.available = available;
    }

}
