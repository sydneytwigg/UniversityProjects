//Author: Sydney Twigg
//Student Number: M8C3XRSN8
//Last Modified: 30/03/2017
//ITJA211 Assignment Question 1

package question1;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;


public class AvailableBooks extends JFrame implements ActionListener {   
    //create components
    //create panels
    JPanel headingPanel = new JPanel();
    JPanel buttonPanel = new JPanel();
    JPanel dataPanel = new JPanel();
    JPanel tablePanel = new JPanel();
    JPanel buttonPanel2 = new JPanel();
    
    //create buttons
    JButton btnUpdate = new JButton("Update");
    JButton btnInsert = new JButton("Insert");
    JButton btnBack = new JButton("Back");
    JButton btnHelp = new JButton("Help");
    JButton btnExit = new JButton("Exit");
    JButton btnAbout = new JButton("About");
    JButton btnSearch = new JButton("Search");
    JButton btnView = new JButton("View All");
    JButton btnClear = new JButton("Clear");
    
    //create labels
    JLabel lblHeading = new JLabel("Manage Books");
    JLabel lblTitle = new JLabel("Title:");
    JLabel lblISBN = new JLabel("ISBN:");
    JLabel lblAuth = new JLabel("Author:");
    JLabel lblYear = new JLabel("Year:");
    JLabel lblEdition = new JLabel("Edition");
    JLabel lblCategory = new JLabel("Category");
    JLabel lblPublisher = new JLabel("Publisher");

    
    //create textfields
    JTextField txtTitle = new JTextField("");
    JTextField txtISBN = new JTextField("");
    JTextField txtAuth = new JTextField("");
    JTextField txtYear = new JTextField("");
    JTextField txtEdition = new JTextField("");
    JTextField txtCategory = new JTextField("");
    JTextField txtPublisher = new JTextField("");
    
    //create table
    JTable bookTable = new JTable();
    
    //create scrollpane with bookTable
        //reference: (Oracle, 2016)
    JScrollPane scrollPane = new JScrollPane(bookTable);

    
    public AvailableBooks() {
        //set up frame
        //title
        setTitle("Manage Books");
        Container contentPane = this.getContentPane();
        
        //Set frame size
        this.getContentPane().setPreferredSize(new Dimension(1000, 500));
        
        //set default close operation
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //set frame to visible
        this.setVisible(true);
        
        //add panels to frames and set locations on borderlayout
            //reference: (Oracle, 2016)
        contentPane.add(headingPanel, BorderLayout.NORTH);
        contentPane.add(buttonPanel, BorderLayout.SOUTH);
        contentPane.add(dataPanel, BorderLayout.WEST);
        contentPane.add(tablePanel, BorderLayout.CENTER);
        contentPane.add(buttonPanel2, BorderLayout.EAST);
        
        this.pack();
        
        //set layout for data panel
        //set gridlayout - 9 rows x 2 columns
        GridLayout layout = new GridLayout (9, 2, 10, 10);
        dataPanel.setLayout(layout);
        
        //set layout for button panel 2 - 1 column
        GridLayout layoutButtons = new GridLayout(0,1,10,10);
        buttonPanel2.setLayout(layoutButtons);
        
        //Add components to panels
        headingPanel.add(lblHeading);   //North
        
        buttonPanel2.add(btnView);      //East
        buttonPanel2.add(btnSearch);
        buttonPanel2.add(btnInsert);
        buttonPanel2.add(btnUpdate);
        buttonPanel2.add(btnClear);

        buttonPanel.add(btnHelp);       //South
        buttonPanel.add(btnAbout);
        buttonPanel.add(btnBack);
        buttonPanel.add(btnExit);
        
        dataPanel.add(lblTitle);        //West
        dataPanel.add(txtTitle);
        dataPanel.add(lblISBN);
        dataPanel.add(txtISBN);
        dataPanel.add(lblAuth);
        dataPanel.add(txtAuth);
        dataPanel.add(lblYear);
        dataPanel.add(txtYear);
        dataPanel.add(lblEdition);
        dataPanel.add(txtEdition);
        dataPanel.add(lblCategory);
        dataPanel.add(txtCategory);
        dataPanel.add(lblPublisher);
        dataPanel.add(txtPublisher);

        
        tablePanel.add(scrollPane);     //Centre
        
        //add action listeners to button
        btnBack.addActionListener(this);
        btnView.addActionListener(this);
        btnInsert.addActionListener(this);
        btnSearch.addActionListener(this);
        btnUpdate.addActionListener(this);
        btnHelp.addActionListener(this);
        btnExit.addActionListener(this);
        btnAbout.addActionListener(this);
        btnClear.addActionListener(this);
    }

    //add functionality to buttons
    @Override
    public void actionPerformed(ActionEvent e) {
        Object source = e.getSource();
        
        if (source.equals(btnBack)){
            backAction();
        }
        //exit program
        else if (source.equals(btnExit)){
            System.exit(0);
        }
        //load all data from the database into the table
        else if (source.equals(btnView)){
            //code
        }
        //help dialog
        else if (source.equals(btnHelp)){               
            helpAction();
        }
        //about dialog
        else if (source.equals(btnAbout)){ 
            aboutAction();
        }
        //insert new record
        else if (source.equals(btnInsert)){
            //code
        }
        //clear textfields
        else if (source.equals(btnClear)){
            clearAction();
        }
        //update record
        else if (source.equals(btnUpdate)){
            //code
        }
        //search for record
        else if (source.equals(btnSearch)){
            //code
        }
    }
    
    //navigate to home page
    public void backAction(){
        this.dispose();
        HomePage frame = new HomePage();
        frame.setVisible(true);
    }    
    
    //clear all text fields
    public void clearAction(){
        txtTitle.setText(""); 
        txtISBN.setText("");
        txtAuth.setText("");
        txtYear.setText("");
        txtEdition.setText("");
        txtCategory.setText("");
        txtPublisher.setText("");
    }
    
    //show help dialog
    public void helpAction(){
   JOptionPane.showMessageDialog(null, "Manage Books Help\n\nInstructions:\nLoad the table:\t "
                + "click the ‘View All’ button.\n\nSearch for a book:\t click the ‘Search’ button and "
                + "enter the ISBN number in the popup dialog.\n\nAdd a new book:\t complete "
                + "the fields on the left of the screen, and click the ‘Insert’ button.\n\n"
                + "Update an existing book:\t complete the fields on the left of the screen, "
                + "and click the ‘Update’ button.", "Help", JOptionPane.PLAIN_MESSAGE);       
    }
    
    //show about dialog
    public void aboutAction(){
        JOptionPane.showMessageDialog(null, "This program is a library management system\ndesigned for CIT to allow users to"
                     + "search \nand manage library books, manage students \nregistered at the library and "
                     + "manage \nstudent bookings for selected books."
                     + "\n\nAuthor: Sydney Twigg \n\nStudent Number: M8C3XRSN8 "
                     + "\n\nDate Last Modified: March 2017", "About", JOptionPane.PLAIN_MESSAGE);
    }
    
    //main class
    public static void main(String args[]) {
        AvailableBooks frame = new AvailableBooks();
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
