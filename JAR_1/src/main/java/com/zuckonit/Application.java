package com.zuckonit;

import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

public class Application extends JFrame {


    private JLabel label;

    Application() {
        this.initUI();
    }

    private InputStream getFileFromResourceAsStream(String fileName) {

        // The class loader that loaded the class
        ClassLoader classLoader = getClass().getClassLoader();
        InputStream inputStream = classLoader.getResourceAsStream(fileName);

        // the stream holding the file content
        if (inputStream == null) {
            throw new IllegalArgumentException("file not found! " + fileName);
        } else {
            return inputStream;
        }
    }

    // print input stream
    private String printInputStream(InputStream is) {
        String data="";
        try (InputStreamReader streamReader =
                     new InputStreamReader(is, StandardCharsets.UTF_8);
             BufferedReader reader = new BufferedReader(streamReader)) {

            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
                data+=line;
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return data;
    }


    //Инициализация интерфейса
    private void initUI() {

        this.setDefaultCloseOperation(3);
        this.setLocationRelativeTo(null);

        label = new JLabel("Inner Text");

        this.setTitle("Содержимое файла внутри архива");
        label.setText(printInputStream(getFileFromResourceAsStream("inner.txt")));

        setSize(400, 200);
        setLayout(new GridLayout(2, 1));
        add(label);

        setVisible(true);
    }

    //основная программа
    public static void main(final String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                final Application ps = new Application();
                ps.setVisible(true);
            }
        });
    }

}
