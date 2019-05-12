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

/**
 *
 * @author Mulero
 */
public class Manufacturer {

    private static Connection con = null;
    private static Statement stmt = null;
    private static PreparedStatement preStmt = null;
    private static ResultSet rs = null;

    private int id;
    private String name;
    private String city;
    private String state;
    private String email;

    public Manufacturer(int id, String name, String city, String state, String email) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.state = state;
        this.email = email;
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

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
