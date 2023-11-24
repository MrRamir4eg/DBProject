package org.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static Connection connection;

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        if (connection == null || connection.isClosed()) {
            connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/DBProject",
                    "postgres",
                    "ghbdtn_z_flvby"
            );
        }
        return connection;
    }
}
