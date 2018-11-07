/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.connect.DBContext;
import com.entity.Information;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thuongnnse05095
 */
public class InfoModel {

    private final DBContext db;
    
    public InfoModel() throws Exception {
        db = new DBContext();
    }

    public ArrayList<Information> getInfoPage() throws Exception {
        String query = "select * from Information";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Information> output = new ArrayList<>();

        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                Information i = new Information(id, name, content);
                output.add(i);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            new CloseConnection().close(conn, ps, rs);
        }
        return output;
    }

    public String getAddress() throws Exception {
        ArrayList<Information> info = getInfoPage();
        return info.get(1).getContent();
    }

    public String getTel() throws Exception {
        ArrayList<Information> info = getInfoPage();
        return info.get(2).getContent();
    }

    public String getMail() throws Exception {
        ArrayList<Information> info = getInfoPage();
        return info.get(3).getContent();
    }

    public String[] getOpenHours() throws Exception {
        ArrayList<Information> info = getInfoPage();
        String[] output = new String[7];
        for (int i = 4; i < info.size(); i++) {
            output[i - 4] = info.get(i).getName() + "  " + info.get(i).getContent();
        }
        return output;
    }

    public String getUrlCover() throws Exception {
        ArrayList<Information> info = getInfoPage();
        System.out.println(db.getResource() + info.get(0).getContent());
        return db.getResource() + info.get(0).getContent();
    }
}
