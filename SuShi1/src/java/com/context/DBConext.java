package com.context;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.naming.Context;
import javax.naming.InitialContext;

public class DBConext {

    InitialContext initCxt;
    Context envirCxt;
    String serverName;
    String port;
    String username;
    String pwd;
    String dbName;
    String imgFolder;

    public DBConext() throws Exception {
        initCxt = new InitialContext();
        envirCxt = (Context) initCxt.lookup("java:/comp/env");
        serverName = (String) envirCxt.lookup("serverName");
        port = (String) envirCxt.lookup("portNumber");
        username = (String) envirCxt.lookup("user");
        pwd = (String) envirCxt.lookup("pass");
        dbName = (String) envirCxt.lookup("dbName");
        imgFolder = (String) envirCxt.lookup("image");
    }

    public Connection getConnection() throws Exception {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection("jdbc:sqlserver://" + serverName + ":" + port + ";databaseName=" + dbName, username, pwd);
    }

    public String getResource() throws Exception {
        return imgFolder;
    }
}
