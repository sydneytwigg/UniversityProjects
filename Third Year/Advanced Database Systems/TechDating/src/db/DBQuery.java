/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sydney Twigg
 */

//holds all database queries to be used in the system
public class DBQuery {
    
    //check a user's login details to see if they exist on the database
    public static boolean verifyLogin(String username, String password) throws DBException{
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
         try {
            conn = DBConnect.getConnection();
            ps = conn.prepareStatement("SELECT * FROM login WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();

            if (rs.next()){
                return true;
            } else {
                return false;
            }

        } catch (ClassNotFoundException | SQLException e) {
            DBConnect.close(conn, ps, rs);
            throw new DBException("Excepion while accessing database");
        }
    }
    

    
}
