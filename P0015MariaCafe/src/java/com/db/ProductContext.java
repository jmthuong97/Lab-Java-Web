/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.db;

import com.model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Chuc Nguyen
 */
public class ProductContext {

    public ProductContext() {
    }
    
    public List<Product> getTopTwoProducts() throws Exception {
        String sql = "select Top 2 * from Products order by CreatedTime DESC";
        Connection conn = new DBContext().getConnection();
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        List<Product> list = new ArrayList<>();
        while(rs.next()) {
            list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
        }
        return list;
    }
}
