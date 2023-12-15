package org.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

public class MaterialsGenerator {
    private static final String[] subjects = {"Algebra", "Geometry", "History", "Computer Science", "Physics",
            "Literature", "Russian", "English", "German", "French", "Social Studies", "Biology", "Geography"};

    public static void generateMaterials(int n) {
        for (int i = 0; i < n; i++) {
            try (Connection connection = DatabaseConnection.getConnection()) {
                PreparedStatement statement = connection.prepareStatement("insert into material (subject) values (?)");
                statement.setString(1, subjects[new Random().nextInt(subjects.length)]);
                statement.executeUpdate();
            } catch (SQLException | ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
