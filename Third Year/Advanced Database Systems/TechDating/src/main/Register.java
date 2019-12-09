package main;

import db.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Sydney Twigg
 */
public class Register extends javax.swing.JFrame {

    public Register() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        lblHeader = new javax.swing.JLabel();
        lblPassword = new javax.swing.JLabel();
        lblUsername1 = new javax.swing.JLabel();
        btnLogin = new javax.swing.JButton();
        btnBack = new javax.swing.JButton();
        btnRegister = new javax.swing.JButton();
        txtPassword = new javax.swing.JPasswordField();
        txtUsername = new javax.swing.JTextField();
        lblPassword1 = new javax.swing.JLabel();
        txtPasswordRepeat = new javax.swing.JPasswordField();
        txtFirstName = new javax.swing.JTextField();
        lblUsername2 = new javax.swing.JLabel();
        lblUsername3 = new javax.swing.JLabel();
        txtLocation = new javax.swing.JTextField();
        lblUsername4 = new javax.swing.JLabel();
        spinAge = new javax.swing.JSpinner();
        lblUsername5 = new javax.swing.JLabel();
        lblUsername6 = new javax.swing.JLabel();
        lblUsername7 = new javax.swing.JLabel();
        cmbOrientation = new javax.swing.JComboBox<>();
        cmbGender = new javax.swing.JComboBox<>();
        cmbInterest = new javax.swing.JComboBox<>();
        btnRefresh = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setPreferredSize(new java.awt.Dimension(1000, 600));

        lblHeader.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 48)); // NOI18N
        lblHeader.setText("Register");

        lblPassword.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblPassword.setText("Password");

        lblUsername1.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblUsername1.setText("Username");

        btnLogin.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N
        btnLogin.setText("Already have an account? ");
        btnLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoginActionPerformed(evt);
            }
        });

        btnBack.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N
        btnBack.setText("Back");
        btnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBackActionPerformed(evt);
            }
        });

        btnRegister.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N
        btnRegister.setText("Create Account");
        btnRegister.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRegisterActionPerformed(evt);
            }
        });

        txtPassword.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N

        txtUsername.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N

        lblPassword1.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblPassword1.setText("Repeat Password");

        txtPasswordRepeat.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N

        txtFirstName.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N

        lblUsername2.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblUsername2.setText("First Name");

        lblUsername3.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblUsername3.setText("Age");

        txtLocation.setFont(new java.awt.Font("Microsoft YaHei Light", 0, 14)); // NOI18N

        lblUsername4.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblUsername4.setText("Location");

        spinAge.setFont(new java.awt.Font("Microsoft JhengHei UI Light", 0, 14)); // NOI18N

        lblUsername5.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblUsername5.setText("Interested in");

        lblUsername6.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblUsername6.setText("Gender");

        lblUsername7.setFont(new java.awt.Font("Microsoft JhengHei Light", 0, 18)); // NOI18N
        lblUsername7.setText("Orientation");

        cmbOrientation.setFont(new java.awt.Font("Microsoft YaHei UI Light", 0, 14)); // NOI18N
        cmbOrientation.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbOrientationActionPerformed(evt);
            }
        });

        cmbGender.setFont(new java.awt.Font("Microsoft YaHei UI Light", 0, 14)); // NOI18N

        cmbInterest.setFont(new java.awt.Font("Microsoft YaHei UI Light", 0, 14)); // NOI18N
        cmbInterest.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbInterestActionPerformed(evt);
            }
        });

        btnRefresh.setText("Refresh Data");
        btnRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRefreshActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(406, 406, 406)
                .addComponent(lblHeader)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnRefresh)
                .addGap(33, 33, 33))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(327, 327, 327)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(lblPassword, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(35, 35, 35)
                                        .addComponent(txtPassword, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                        .addComponent(lblUsername1)
                                        .addGap(33, 33, 33)
                                        .addComponent(txtUsername, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE))))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(265, 265, 265)
                                .addComponent(lblPassword1, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(35, 35, 35)
                                .addComponent(txtPasswordRepeat, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addComponent(txtFirstName, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(333, 333, 333)
                                .addComponent(lblUsername4, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(lblUsername2, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lblUsername3, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lblUsername6, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lblUsername7, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lblUsername5, javax.swing.GroupLayout.Alignment.TRAILING))
                        .addGap(35, 35, 35)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(cmbOrientation, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(txtLocation, javax.swing.GroupLayout.DEFAULT_SIZE, 234, Short.MAX_VALUE)
                                .addComponent(spinAge, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(cmbGender, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(cmbInterest, javax.swing.GroupLayout.PREFERRED_SIZE, 234, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(117, 117, 117)
                        .addComponent(btnRegister, javax.swing.GroupLayout.PREFERRED_SIZE, 221, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(42, 42, 42)
                        .addComponent(btnLogin, javax.swing.GroupLayout.PREFERRED_SIZE, 221, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(27, 27, 27)
                        .addComponent(btnBack, javax.swing.GroupLayout.PREFERRED_SIZE, 221, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(145, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblHeader)
                    .addComponent(btnRefresh))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtUsername, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUsername1))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblPassword)
                    .addComponent(txtPassword, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblPassword1)
                    .addComponent(txtPasswordRepeat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtFirstName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUsername2))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtLocation, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUsername4))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(spinAge, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUsername3, javax.swing.GroupLayout.Alignment.TRAILING))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblUsername6)
                    .addComponent(cmbGender, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmbOrientation, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUsername7))
                .addGap(26, 26, 26)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmbInterest, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblUsername5))
                .addGap(34, 34, 34)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnRegister)
                    .addComponent(btnLogin)
                    .addComponent(btnBack))
                .addContainerGap(78, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 994, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 656, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    private void btnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBackActionPerformed
        this.dispose();
        Home homeFrame = new Home();
        homeFrame.setVisible(true);
    }//GEN-LAST:event_btnBackActionPerformed

    private void btnRegisterActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRegisterActionPerformed
        //get values and store in variables
        String username = txtUsername.getText();
        char[] pass = txtPassword.getPassword();
        char[] passRepeat = txtPasswordRepeat.getPassword();
        //convert password to string
        String password = String.copyValueOf(pass);
        String passwordRepeat = String.copyValueOf(passRepeat);
        String firstname = txtFirstName.getText();
        String location = txtLocation.getText();
        int age = (Integer) spinAge.getValue();
        String gender = (String) cmbGender.getSelectedItem();
        String orientation = (String) cmbOrientation.getSelectedItem();
        String interest = (String) cmbInterest.getSelectedItem();

        Connection conn = null;

        //check if all fields have a value
        if (username.length() == 0) {
            JOptionPane.showMessageDialog(null, "Please enter a username.");
        } else if (pass.length == 0) {
            JOptionPane.showMessageDialog(null, "Please enter a password.");
        } else if (passRepeat.length == 0) {
            JOptionPane.showMessageDialog(null, "Please enter a password.");
        } else if (firstname.length() == 0) {
            JOptionPane.showMessageDialog(null, "Please enter a name.");
        } else if (location.length() == 0) {
            JOptionPane.showMessageDialog(null, "Please enter a location.");
        } else if (age < 18) {
            JOptionPane.showMessageDialog(null, "You must be over the age of 18 to register!");
        } else if (!password.equals(passwordRepeat)) {
            JOptionPane.showMessageDialog(null, "Passwords do not match");
        } else //insert data into the database
        {
            try {
                conn = DBConnect.getConnection();
                Statement s = conn.createStatement();

                String insertMember = "INSERT INTO `techdatingdb`.`member`\n"
                        + "( `firstname`, `age`, `location`, `gender`, `orientation`, `relationshipinterest`)\n"
                        + "VALUES\n"
                        + "('" + firstname + "',\n"
                        + "'" + age + "',\n"
                        + "'" + location + "',\n"
                        + "'" + toIDGender(gender) + "',\n"
                        + "'" + toIDOrient(orientation) + "','"
                        + toIDInterest(interest) + "');";

                String insertLogin = "INSERT INTO `techdatingdb`.`login`\n"
                        + "(`memberID`,\n"
                        + "`username`,\n"
                        + "`password`)\n"
                        + "VALUES\n"
                        + "((last_insert_id()),\n"
                        + "'" + username + "',\n"
                        + "'" + password + "');";

                JOptionPane.showMessageDialog(null, "Registration suceessful");

                s.execute(insertMember);
                s.execute(insertLogin);
                this.dispose();
                Profile profileFrame = new Profile();
                profileFrame.setVisible(true);
                SharedData.setUsername(username);

                conn.close();
                s.close();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
                ex.printStackTrace();
            } catch (SQLException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
                ex.printStackTrace();
            }
        }

        //check if username exists
        //check if passwords match

    }//GEN-LAST:event_btnRegisterActionPerformed

    public String toIDGender(String gender) {
        String id = null;
        if (gender.equals("Female")) {
            id = "F";
        } else if (gender.equals("Male")) {
            id = "M";
        } else if (gender.equals("Non-Binary")) {
            id = "NB";
        } else if (gender.equals("Transgender - Male to Female")) {
            id = "MTF";
        } else if (gender.equals("Transgender - Female to Male")) {
            id = "FTM";
        }
        return id;
    }

    public String toIDOrient(String orientation) {
        String id = null;

        if (orientation.equals("Bisexual")) {
            id = "B";
        } else if (orientation.equals("Gay")) {
            id = "G";
        } else if (orientation.equals("Lesbian")) {
            id = "L";
        } else if (orientation.equals("Pansexual")) {
            id = "P";
        } else if (orientation.equals("Straight")) {
            id = "S";
        }

        return id;
    }

    public String toIDInterest(String interest) {
        String id = null;
        if (interest.equals("Casual")) {
            id = "C";
        } else if (interest.equals("Long Term Relationship")) {
            id = "LTR";
        } else if (interest.equals("Monogamy")) {
            id = "M";
        } else if (interest.equals("Non-Monogamy")) {
            id = "NM";
        } else if (interest.equals("Polyamory")) {
            id = "P";
        }
        return id;
    }

    //populate combo box
    public void addItemsFromDatabase() {
        Connection conn = null;
        PreparedStatement psGender = null;
        PreparedStatement psOrientation = null;
        PreparedStatement psRelationship = null;
        ResultSet rsGender = null;
        ResultSet rsOrientation = null;
        ResultSet rsRelationship = null;

        try {
            conn = DBConnect.getConnection();
            psGender = conn.prepareStatement("SELECT `gender`.`genderName` FROM `techdatingdb`.`gender`;");
            rsGender = psGender.executeQuery();

            psOrientation = conn.prepareStatement("SELECT `orientationName` FROM `techdatingdb`.`orientation`;");
            rsOrientation = psOrientation.executeQuery();

            psRelationship = conn.prepareStatement("SELECT `interestedin_relationship` FROM `techdatingdb`.`relationshipinterest`;");
            rsRelationship = psRelationship.executeQuery();

            //populate combo fields
            while ((rsGender.next()) && (rsOrientation.next()) && (rsRelationship.next())) {
                cmbGender.addItem(rsGender.getString(1));
                cmbOrientation.addItem(rsOrientation.getString(1));
                cmbInterest.addItem(rsRelationship.getString(1));
            }

            conn.close();
            psGender.close();
            psOrientation.close();
            psRelationship.close();
            rsGender.close();
            rsOrientation.close();
            rsRelationship.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }

    private void btnLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoginActionPerformed
        this.dispose();
        Login loginFrame = new Login();
        loginFrame.setVisible(true);
    }//GEN-LAST:event_btnLoginActionPerformed

    private void cmbOrientationActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbOrientationActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cmbOrientationActionPerformed

    private void cmbInterestActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbInterestActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cmbInterestActionPerformed

    private void btnRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRefreshActionPerformed
        addItemsFromDatabase();
    }//GEN-LAST:event_btnRefreshActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Register().setVisible(true);
            }
        });

    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBack;
    private javax.swing.JButton btnLogin;
    private javax.swing.JButton btnRefresh;
    private javax.swing.JButton btnRegister;
    private javax.swing.JComboBox<String> cmbGender;
    private javax.swing.JComboBox<String> cmbInterest;
    private javax.swing.JComboBox<String> cmbOrientation;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lblHeader;
    private javax.swing.JLabel lblPassword;
    private javax.swing.JLabel lblPassword1;
    private javax.swing.JLabel lblUsername1;
    private javax.swing.JLabel lblUsername2;
    private javax.swing.JLabel lblUsername3;
    private javax.swing.JLabel lblUsername4;
    private javax.swing.JLabel lblUsername5;
    private javax.swing.JLabel lblUsername6;
    private javax.swing.JLabel lblUsername7;
    private javax.swing.JSpinner spinAge;
    private javax.swing.JTextField txtFirstName;
    private javax.swing.JTextField txtLocation;
    private javax.swing.JPasswordField txtPassword;
    private javax.swing.JPasswordField txtPasswordRepeat;
    private javax.swing.JTextField txtUsername;
    // End of variables declaration//GEN-END:variables
}
