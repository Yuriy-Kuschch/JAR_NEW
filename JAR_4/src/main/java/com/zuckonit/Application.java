package com.zuckonit;

import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.net.URISyntaxException;

import java.util.Scanner;

public class Application extends JFrame {


    private JLabel label;

    Application() {
        this.initUI();
    }

    private String readOuterTextFile(String path) {
        String data = "";
        try {
            File myObj = new File(path);
            Scanner myReader = new Scanner(myObj);
            while (myReader.hasNextLine()) {
                data += myReader.nextLine()+"\n";
            }
            myReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        return data;
    }

    private void initUI() {

        this.setDefaultCloseOperation(3);
        this.setLocationRelativeTo(null);

        label = new JLabel("Inner Text");
        label.setText(readOuterTextFile("outer.txt"));

        setSize(400, 200);
        setLayout(new GridLayout(2, 1));
        add(label);

        this.setTitle("Содержимое файла внутри архива + картинка");
        ImageIcon icon = new ImageIcon("image.jpg");
        JLabel image = new JLabel(icon);
        add(image);
        setSize(400, 600);

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
