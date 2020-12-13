package com.zuckonit;

import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.net.URISyntaxException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
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

    private String readFromDB(){
        String data = "<html>";
        String config = readOuterTextFile("config.txt");
        String[] parseConfig = config.split("\n");
        String port = "";
        String dbName = "";
        String user = "";
        String password = "";
        //для каждой строки методом парс находим ключ значение
        for(int i=0; i<parseConfig.length; i++){
            String[] val = parseConfig[i].split(":");

            //проверяем по ключам и заполняем значения
            switch (val[0]){
                case "port": port = val[1]; break;
                case "user": user = val[1]; break;
                case "dbName": dbName = val[1]; break;
                case "password": password = val[1]; break;
                default: break;
            }
        }

        //формируем строку подключения.
        try{
            String url2 = "jdbc:mysql://127.0.0.1:3307/library";
            String url = "jdbc:mysql://localhost:"+port+"/"+dbName;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,user,password);
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from book");
            while(rs.next())
                data += rs.getString(2)+"<br/>";
            con.close();
        }catch(Exception e){ e.printStackTrace();}
        data += "</html>";
        return data;
    }

    private void initUI() {

        this.setDefaultCloseOperation(3);
        this.setLocationRelativeTo(null);

        label = new JLabel("Inner Text");
        label.setText(readFromDB());

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
