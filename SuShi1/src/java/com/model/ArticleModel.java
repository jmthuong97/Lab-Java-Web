/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.context.DBConext;
import com.entity.Article;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DoThong
 */
public class ArticleModel {

    private DBConext db;

    public ArticleModel() throws Exception {
        db = new DBConext();
    }

    public List<Article> getArticlesFromTo(int page, int pageSize) throws Exception {
        int from = page * pageSize - (pageSize - 1);
        int to = page * pageSize;
        List<Article> articles = new ArrayList<>();
        String query = "select * from ( "
                + "select *, ROW_NUMBER() over (order by id) as rownumber "
                + "from articles"
                + ") as articles "
                + "where articles.rownumber >= ? and "
                + "articles.rownumber <= ? ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, from);
            ps.setInt(2, to);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String imgLink = db.getResource() + rs.getString("imgLink");
                String content = rs.getString("content");
                articles.add(new Article(id, title, imgLink, content));
            }
            rs.close();
            ps.close();
            conn.close();
            return articles;
        } catch (Exception ex) {
            closeConnection(conn, ps, rs);
            throw ex;
        }
    }

    public int getTotalRows() throws Exception {
        int rows = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select count(*) from articles";
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                rows = rs.getInt(1);
            }
            rs.close();
            ps.close();
            conn.close();
            return rows;
        } catch (Exception ex) {
            closeConnection(conn, ps, rs);
            throw ex;
        }
    }

    private void closeConnection(Connection conn, PreparedStatement ps, ResultSet rs) throws Exception {
        if (rs != null && !rs.isClosed()) {
            rs.close();
        }
        if (ps != null && !ps.isClosed()) {
            ps.close();
        }
        if (conn != null && !conn.isClosed()) {
            conn.close();
        }
    }
}
