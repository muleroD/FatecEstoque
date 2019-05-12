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
import java.util.Date;
import static br.com.fatecpg.model.ConnectionManager.initConnection;

/**
 *
 * @author Mulero
 */
public class PurchaseOrder {

    private static Connection con = null;
    private static Statement stmt = null;
    private static PreparedStatement preStmt = null;
    private static ResultSet rs = null;

    private int id;
    private Date salesDate;
    private double shippingCost;
    private int quantity;

    public PurchaseOrder(int id, Date salesDate, double shippingCost, int quantity) {
        this.id = id;
        this.salesDate = salesDate;
        this.shippingCost = shippingCost;
        this.quantity = quantity;
    }

    public static ArrayList<PurchaseOrder> getOrderByCustomerID(int id) throws Exception {
        initConnection();
        String sql = "SELECT * FROM PURCHASE_ORDER WHERE CUSTOMER_ID = ? ";

        con = ConnectionManager.startConnection();
        preStmt = con.prepareStatement(sql);
        preStmt.setInt(1, id);
        rs = preStmt.executeQuery();

        ArrayList<PurchaseOrder> orderList = new ArrayList<>();

        while (rs.next()) {
            PurchaseOrder order = new PurchaseOrder(
                    rs.getInt("ORDER_NUM"),
                    rs.getDate("SALES_DATE"),
                    rs.getDouble("SHIPPING_COST"),
                    rs.getInt("QUANTITY")
            );
            orderList.add(order);
        }

        ConnectionManager.stopConnection();
        return orderList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getSalesDate() {
        return salesDate;
    }

    public void setSalesDate(Date salesDate) {
        this.salesDate = salesDate;
    }

    public double getShippingCost() {
        return shippingCost;
    }

    public void setShippingCost(double shippingCost) {
        this.shippingCost = shippingCost;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
