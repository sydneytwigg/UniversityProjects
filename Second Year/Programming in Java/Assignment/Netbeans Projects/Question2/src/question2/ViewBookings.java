//Author: Sydney Twigg
//Student Number: M8C3XRSN8
//Last Modified: 30/03/2017
//ITJA211 Assignment Question 2

package question2;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
import java.sql.*;
import javax.swing.table.DefaultTableModel;
import java.util.UUID;
import static javax.swing.JOptionPane.ERROR_MESSAGE;
import static javax.swing.JOptionPane.PLAIN_MESSAGE;

public class ViewBookings extends JFrame implements ActionListener {
    //establish the details of the connection
    String url = "jdbc:mysql://localhost:3306/javaassignment";
    String username = "root";
    String password = "sqlPass";
    String driver = "com.mysql.jdbc.Driver";
    
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
            booking();
        }
        //clear fields
        else if (source.equals(btnClear)){
            clearAction();
        }
        //return book
        else if (source.equals(btnReturn))
        {
            returnBook();
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
            dbSearch();
        }
        else if (source.equals(btnViewAll)){
            dbConnection();
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

        //############################################ QUESTION 2 FUNCTIONALITY #######################################################
    
    //method to connect to the database
    public void dbConnection(){
        try{
            //establish the connection
            Class.forName(driver).newInstance();
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement s = conn.createStatement();
            
            //create the query that will display all information from the database
            String query = "SELECT * FROM bookings";
            
            //place all records in a result set
            ResultSet rs = s.executeQuery(query);
            
            //create table model
            DefaultTableModel tableModel = new DefaultTableModel();
            //get meta data
            ResultSetMetaData metaData = rs.getMetaData();
            //get column names
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++){
                tableModel.addColumn(metaData.getColumnLabel(i));
            }
            
            Object [] row = new Object[columnCount];
            
            while (rs.next()){
                for (int i = 0; i < columnCount; i++){
                    row[i] = rs.getObject(i+1);
                }
                tableModel.addRow(row);
            }
            
            //apply table model to bookingTable
            bookingTable.setModel(tableModel);
            
            //close all connections
            rs.close();
            s.close();
            conn.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
    
    //method to reserve books
    public void booking(){
        //create variables and get textfield values
        String bookingDate = txtBookingDate.getText();
        String ISBN = txtISBN.getText();
        String title = txtTitle.getText();
        String name = txtName.getText();
        String surname = txtSurname.getText();
        String studentNum = txtSNum.getText();
        
        //generate UUID for booking reference
            //reference: (Saryada, 2017)
        UUID uuid = UUID.randomUUID();
        String bookingRef = uuid.toString();
        
        try{
            //call method dbConnection to connect to database
            dbConnection();

            //create connection
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement s = conn.createStatement();

            //check book exists and more than 0 copies available
            //query if ISBN exists in books table
                //reference (Wright, 2012)
            String queryISBN = "SELECT * FROM books WHERE ISBN = " + "'" + ISBN + "'";
            s.execute(queryISBN);
            ResultSet rs = s.getResultSet();
            boolean isbnExists = rs.next();
            
            //first if loop - does book exist
            if (isbnExists){
                //check if copies are available
                int copiesAvailable = rs.getInt("copiesAvailable");
                
                //second if loop - are copies available
                if (copiesAvailable > 0){
                    //create query to add the values into the database
                    String query = "INSERT INTO bookings(reference, bookingDate, ISBN, bookTitle, name, surname, studentNum) VALUES ('"
                            + bookingRef + "', '"
                            + bookingDate + "', '"
                            + ISBN + "', '"
                            + title + "', '"
                            + name + "', '"
                            + surname + "', '"
                            + studentNum + "')";
                    
                    //execute insert query        
                    boolean result = s.execute(query);
                    
                    //decrease copies available by 1
                    String queryUpdate = "UPDATE books SET copiesAvailable = copiesAvailable - 1 WHERE ISBN = '" + ISBN +"'";
                    s.execute(queryUpdate);
                    
                    //give user their booking reference
                    JOptionPane.showMessageDialog(null, "Booking successful!\nYour reference number is: " + bookingRef, "Booking complete", PLAIN_MESSAGE);
                }
                //show error message
                else{
                    JOptionPane.showMessageDialog(null, "No copies available of: " + title, "Error", ERROR_MESSAGE);
                }  
            }
            //show error message 
            else{
                JOptionPane.showMessageDialog(null, "No book found with ISBN: " + ISBN, "Error", ERROR_MESSAGE);
            }
            
            //refresh table view by calling dbConnection()
            dbConnection();

            //close all connections
            s.close();
            rs.close();
            conn.close();              
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
    
    //method to return book 
    public void returnBook(){
        //create variables and store data from input dialog
        String bookingRef = "";
        String returnDate = "";
        String ISBN = "";
        
        //create input dialog
            //reference: (Hovercraft Full Of Eels [screen name], 2011)
        JTextField txtBooking = new JTextField(5);
        JTextField txtDate = new JTextField(5);
        JPanel pnl = new JPanel();
        GridLayout layoutInput = new GridLayout(2,0,10,10);
        pnl.setLayout(layoutInput);
        pnl.add(new JLabel("Booking reference: "));
        pnl.add(txtBooking);
        pnl.add(Box.createHorizontalStrut(15));
        pnl.add(new JLabel ("Return date: "));
        pnl.add(txtDate);
        
        int result = JOptionPane.showConfirmDialog(null, pnl, "Return book", JOptionPane.OK_CANCEL_OPTION);
        if (result == JOptionPane.OK_OPTION){
            bookingRef = txtBooking.getText();
            returnDate = txtDate.getText();
        }
        
        try{
            //call dbConnection to connect to database
            dbConnection();
            
            //create connection
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement s = conn.createStatement();
            
            //check booking exists in table:
            String queryCheck = "SELECT * FROM bookings WHERE reference = '" + bookingRef + "'";
            ResultSet rs = s.executeQuery(queryCheck);
            
            //create query to update bookings table
            String queryReturnDate = "UPDATE bookings SET returnDate = '" + returnDate + "' WHERE reference = '" + bookingRef + "'";
            
            //call getISBN() method to get the ISBN of the book
            ISBN = getISBN(bookingRef);

            //create query to increment available books if books are returned
            String incrementQuery = "UPDATE books SET copiesAvailable = copiesAvailable + 1 WHERE ISBN = '" + ISBN +"'";
            
            //check if reference exists:
            if (rs.next()){
                //reference exists
                
                //execute query to update return date
                s.execute(queryReturnDate);
                
                //execute increment query 
                s.execute(incrementQuery);
            }
            else {
                //reference does not exist
                JOptionPane.showMessageDialog(null, "Reference not found", "Error", ERROR_MESSAGE);
            }
            
            //refresh table view by calling dbConnection()
            dbConnection();

            //close all connections
            s.close();
            rs.close();
            conn.close(); 
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
    //method to get the ISBN using the reference number 
    public String getISBN(String ref){
        String bookingRef = ref;
        String ISBN = "";
        try{
            //create connection
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement s = conn.createStatement();
            
            String queryISBN = "SELECT ISBN FROM `javaassignment`.`bookings` WHERE reference = '" + bookingRef + "'";
            
            //create resultset
            ResultSet rs = s.executeQuery(queryISBN);
            
            if (rs.next()){
                ISBN = rs.getString("ISBN");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return ISBN;
    }
    
    //method to call the search methods
    public void dbSearch(){
        //call searchBooking method as there are no other search options available in bookings frame.
        searchBooking();
    }
    
    public void searchBooking(){
        //get reference from input dialog and store in variable
        String refNum = JOptionPane.showInputDialog("Enter the reference number of the booking you want to find: ");
        
        try{
             //create connection
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement s = conn.createStatement();
            
            //create query to search the database for the book record
            String query = "SELECT * FROM bookings WHERE reference = " + "'" + refNum + "'";
            
            //create resultset
            ResultSet rs = s.executeQuery(query);
            
            //check if reference exists
            if(rs.next()){
                //get values from table
                String bookingDate = rs.getString("bookingDate");
                String ISBN = rs.getString("ISBN");
                String title = rs.getString("bookTitle");
                String name = rs.getString("name");
                String surname = rs.getString("surname");
                String studentNum = rs.getString("studentNum");
                String returnDate = rs.getString("returnDate");
                
                //display results in dialog:
                JOptionPane.showMessageDialog(null, "SEARCH RESULTS: \n\n"
                        + "Reference number: " + refNum + "\n"
                        + "Booking date: " + bookingDate + "\n"
                        + "ISBN: " + ISBN + "\n"
                        + "Title: " + title + "\n"
                        + "Name: " + name + "\n"
                        + "Surname: " + surname + "\n"
                        + "Student number: " + studentNum + "\n"
                        + "Return date: " + returnDate, "Search", PLAIN_MESSAGE);
            }
            //display error message if booking does not exist
            else{
                JOptionPane.showMessageDialog(null, "No booking matching reference number: " + refNum + " found", "Search", ERROR_MESSAGE);
            }
            
            //close all connections
            rs.close();
            s.close();
            conn.close();  
        }
        catch(Exception e){
            e.printStackTrace();
        }
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
