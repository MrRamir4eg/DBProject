package org.example;

import com.github.javafaker.Faker;
import com.github.javafaker.Name;
import jakarta.xml.bind.DatatypeConverter;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Random;
import java.util.stream.Collectors;

public class CuratorsGenerator {
    private static final String[] emails = {"@gmail.com", "@yandex.ru", "@mail.ru", "@stud.kpfu.ru", "@live.com",
            "@web.de", "@gmx.net"};

    public static void generateCurators(int n) {
        try (Connection connection = DatabaseConnection.getConnection()) {
            for (int i = 0; i < n; i++) {
                PreparedStatement statement = connection.prepareStatement("insert into curator (email, password) VALUES (?, ?)");
                Name nameMe = Faker.instance().name();
                String name = nameMe.name();
                String email = Arrays.stream(name.split(" ")).map((s) -> s.toLowerCase())
                        .collect(Collectors.joining(".")) + emails[new Random().nextInt(emails.length)];

                String password = DatatypeConverter.printHexBinary(MessageDigest.getInstance("MD5")
                        .digest((name + ' ' + email).getBytes()));
                statement.setString(1, email);
                statement.setString(2, password);
                statement.executeUpdate();
            }
        } catch (SQLException | ClassNotFoundException | NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
