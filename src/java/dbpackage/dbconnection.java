/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbpackage;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Ashwin
 */
public class dbconnection {
    Connection con=null;
    public Connection getc() throws ClassNotFoundException
    {
        try {
             Class.forName("com.mysql.jdbc.Driver");
             con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/arfurnitureshop","root","");
        } catch (Exception e) {
        }
        return con;
        
    }
    
}
