//Author: Sydney Twigg
//Student Number: M8C3XRSN8
//Last Modified: 30/03/2017
//ITJA211 Assignment Question 1

package question1;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class ViewBookings extends JFrame implements ActionListener {
    //create components
    //create panels
    JPanel headingPanel = new JPanel();
    JPanel buttonPanel = new JPanel();
    JPanel dataPanel = new JPanel();
    JPanel tablePanel = new JPanel();
    JPanel buttonPanel2 = new JPanel();
    
    //create labels
    JLabel lblHeading = new JLabel("Manage Bookings");
    JLabel lblBookingDate = new JLabel("Booking date:");
    JLabel lblISBN = new JLabel("ISBN:");
    JLabel lblTitle = new JLabel("Title:");
    JLabel lblStudName = new JLabel("Student name:");
    JLabel lblSurname = new JLabel("Student surname:");
    JLabel lblSNum = new JLabel("Student number: ");
    
    
    //create textfields
    JTextField txtBookingDate = new JTextField();
    JTextField txtISBN = new JTextField();
    JTextField txtTitle = new JTextField();
    JTextField txtName = new JTextField();
    JTextField txtSurname = new JTextField();
    JTextField txtSNum = new JTextField();

    //create buttons
    JButton btnInsert = new JButton("Create");
    JButton btnReturn = new JButton("Return");
    JButton btnClear = new JButton("Clear");
    JButton btnBack = new JButton("Back");
    JButton btnHelp = new JButton("Help");
    JButton btnExit = new JButton("Exit");
    JButton btnAbout = new JButton("About");
    JButton btnSearch = new JButton("Search");
    JButton btnViewAll = new JButton("View All");

    //create table
    JTable bookingTable = new JTable();
    
    //create scrollpane with bookingTable
        //reference: (Oracle, 2016)
    JScrollPane scrollPane = new JScrollPane(bookingTable);
    
    public ViewBookings() {
        //set up frame
        //title
        setTitle("Manage Bookings");
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
        //set gridlayout - 7 rows x 2 columns
        GridLayout layout = new GridLayout (7, 2, 10, 10);
        dataPanel.setLayout(layout);
        
        //set layout for button panel 2 - 1 column
        GridLayout layoutButtons = new GridLayout(0,1,10,10);
        buttonPanel2.setLayout(layoutButtons);
        
        //Add components to panels
        headingPanel.add(lblHeading);  
        
        buttonPanel.add(btnBack);
        buttonPanel.add(btnHelp);
        buttonPanel.add(btnAbout);
        buttonPanel.add(btnExit);
        
        buttonPanel2.add(btnInsert);
        buttonPanel2.add(btnClear);
        buttonPanel2.add(btnReturn);
        buttonPanel2.add(btnSearch);
        buttonPanel2.add(btnViewAll);
        
        dataPanel.add(lblBookingDate);
        dataPanel.add(txtBookingDate);
        dataPanel.add(lblISBN);
        dataPanel.add(txtISBN);
        dataPanel.add(lblTitle);
        dataPanel.add(txtTitle);
        dataPanel.add(lblStudName);
        dataPanel.add(txtName);
        dataPanel.add(lblSurname);
        dataPanel.add(txtSurname);
        dataPanel.add(lblSNum);
        dataPanel.add(txtSNum);
        
        tablePanel.add(scrollPane);
        
        //add action listeners to button
        btnBack.addActionListener(this);
        btnInsert.addActionListener(this);
        btnClear.addActionListener(this);
        btnReturn.addActionListener(this);
        btnHelp.addActionListener(this);
        btnExit.addActionListener(this);
        btnAbout.addActionListener(this);
        btnSearch.addActionListener(this);
        btnViewAll.addActionListener(this);
    }

     //add functionality to buttons
    @Override
    public void actionPerformed(ActionEvent e) {
        Object source = e.getSource();
        //back button - takes user to home page
        if (source.equals(btnBack)){
            backAction();
        }
        //exit program
        else if (source.equals(btnExit)){
            System.exit(0);
        }
        //add new booking
        else if (source.equals(btnInsert)){
            //code
        }
        //clear fields
        else if (source.equals(btnClear)){
            clearAction();
        }
        //return book
        else if (source.equals(btnReturn))
        {
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
        //search
        else if (source.equals(btnSearch)){
            //code
        }
        else if (source.equals(btnViewAll)){
            //code
        }
    }
    
    //navigate to home page
    public void backAction(){
        this.dispose();
        HomePage frame = new HomePage();
        frame.setVisible(true);
    
    }

    //clear all textfields
    public void clearAction(){
        //code to add functionality
    }
    
    //show help dialog
    public void helpAction(){
        JOptionPane.showMessageDialog(null, "Manage Bookings Help\n\nInstructions:\nLoad the table:\t click"
                + " the ‘View All’ button.\n\nSearch for a bookng:\t click the ‘Search’ button and enter "
                + "the booking reference number in the popup dialog.\n\nCreate a new booking:\t "
                + "complete the fields on the left of the screen, and click the ‘Create’ button."
                + "\n\nReturn a book:\t Click on the return button and full in your booking "
                + "reference number and the date of return." , "Help", JOptionPane.PLAIN_MESSAGE);        
    }
    
    //show about dialog
    public void aboutAction(){
        JOptionPane.showMessageDialog(null, "This program is a library management system\ndesigned for CIT to allow users to"
                     + "search \nand manage library books, manage students \nregistered at the library and "
                     + "manage \nstudent bookings for selected books."
                     + "\n\nAuthor: Sydney Twigg \n\nStudent Number: M8C3XRSN8 "
                     + "\n\nDate Last Modified: March 2017", "About", JOptionPane.PLAIN_MESSAGE);
    }
    
    public static void main(String args[]) {
        ViewBookings frame = new ViewBookings();
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
