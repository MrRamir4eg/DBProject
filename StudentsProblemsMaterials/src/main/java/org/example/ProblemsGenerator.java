package org.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

public class ProblemsGenerator {
    private static final String[] subjects = {"Algebra", "Geometry", "History", "Computer Science", "Physics",
            "Literature", "Russian", "English", "German", "French", "Social Studies", "Biology", "Geography"};
    public static void generateProblems(int n){
        for (int i = 0; i < n; i++) {
            try (Connection connection = DatabaseConnection.getConnection()) {
                PreparedStatement statement = connection.prepareStatement("insert into problem (subject, curator_id) VALUES (?, ?)");
                statement.setString(1, subjects[new Random().nextInt(subjects.length)]);
                statement.setLong(2, new Random().nextInt(1, 10));
                statement.executeUpdate();
            } catch (SQLException | ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
