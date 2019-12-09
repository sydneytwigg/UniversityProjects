//Author: Sydney Twigg
//Student Number: M8C3XRSN8
//Last Modified: 30/03/2017
//ITJA211 Assignment Question 1

package question1;

import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class HomePage extends JFrame implements ActionListener {

//Create components
    //Create panel
    JPanel panel = new JPanel();
    
    //Create labels
    JLabel lblHeading = new JLabel("Library System Navigation Page");
    JLabel lblBookHeading = new JLabel("Books Menu");
    JLabel lblStudentHeading = new JLabel("Students Menu");
    JLabel lblBookingHeading = new JLabel("Bookings Menu");
    
    //Create blank labels to fill spaces on the grid layout
    JLabel lblSpace1 = new JLabel("  "); 
    JLabel lblSpace2 = new JLabel("  ");
    JLabel lblSpace3 = new JLabel("  ");
    JLabel lblSpace4 = new JLabel("  ");
    JLabel lblSpace5 = new JLabel("  ");
    JLabel lblSpace6 = new JLabel("  ");
    JLabel lblSpace7 = new JLabel("  ");

    
    //Create buttons
    JButton btnViewBook = new JButton("View Books");
    JButton btnViewStudDetails = new JButton("View Students");
    JButton btnViewBooking = new JButton("View Bookings");
    JButton btnHelp = new JButton ("Help");
    JButton btnAbout = new JButton("About");
    JButton btnExit = new JButton("Exit");
    
    public HomePage() {
    //Set up the frame
        //Set title bar text
        super("Library Management System");
        //Set frame size
        this.getContentPane().setPreferredSize(new Dimension(1000, 500));
        //Set layout - 6 rows x 3 columns
        GridLayout layout = new GridLayout(0, 3, 10, 10);
        panel.setLayout(layout);
        //Set default close operation
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
    
    //Centre all labels 
        //reference: (Oracle, 2016)
        lblHeading.setHorizontalAlignment(JLabel.CENTER);
        lblBookHeading.setHorizontalAlignment(JLabel.CENTER);
        lblStudentHeading.setHorizontalAlignment(JLabel.CENTER);
        lblBookingHeading.setHorizontalAlignment(JLabel.CENTER);
        
    //Add components to the panel - components must be added in the order that they will appear
        //Row 1
        panel.add(lblSpace1);
        panel.add(lblHeading);
        panel.add(lblSpace2);
        //Row 2
        panel.add(lblBookHeading);
        panel.add(lblStudentHeading);
        panel.add(lblBookingHeading);
        //Row 3
        panel.add(btnViewBook);
        panel.add(btnViewStudDetails);
        panel.add(btnViewBooking);
        //Row 4
        panel.add(lblSpace5);
        panel.add(lblSpace6);
        panel.add(lblSpace7);
        //Row 5
        panel.add(btnExit);
        panel.add(btnAbout);
        panel.add(btnHelp);
    
    //Add the panel to the frame
        this.getContentPane().add(panel);
        this.pack();
        
    //Ensure the panel is visible
        this.setVisible(true);
        
    //Add action listeners to the buttons
    btnViewBook.addActionListener(this); 
    btnViewStudDetails.addActionListener(this); 
    btnViewBooking.addActionListener(this); 
    btnHelp.addActionListener(this); 
    btnAbout.addActionListener(this);
    btnExit.addActionListener(this); 
    }

    //Method to add functionality to buttons on the frame
    @Override
    public void actionPerformed(ActionEvent e) {
        Object source = e.getSource();
        

         if (source.equals(btnViewBook)){           //view all books
            this.dispose();
            AvailableBooks booksFrame = new AvailableBooks();
            booksFrame.setVisible(true);
        }
        else if (source.equals(btnViewStudDetails)){    //view student details
            this.dispose();
            StudentDetails studFrame = new StudentDetails();
            studFrame.setVisible(true);
        }
        else if (source.equals(btnViewBooking)){        //view all bookings
            this.dispose();
            ViewBookings bookingFrame = new ViewBookings();
            bookingFrame.setVisible(true);
        }
        else if (source.equals(btnHelp)){               //help dialog
            JOptionPane.showMessageDialog(null, "Help: Home Page\n\nThis page allows you to navigate through the program. \n\n"
                    + "Navigation instructions: \n"
                    + "To view all available books, click the “View Books” button under Books Menu. \n"
                    + "To view student details, click the “View Students” button under Students Menu. \n"
                    + "To view booking details, click the “View Bookings” button under Bookings Menu."
                    , "Help", JOptionPane.PLAIN_MESSAGE);
        }
        else if (source.equals(btnAbout)){              //about dialog
             JOptionPane.showMessageDialog(null, "This program is a library management system\ndesigned for CIT to allow users to"
                     + "search \nand manage library books, manage students \nregistered at the library and "
                     + "manage \nstudent bookings for selected books."
                     + "\n\nAuthor: Sydney Twigg \n\nStudent Number: M8C3XRSN8 "
                     + "\n\nDate Last Modified: March 2017", "About", JOptionPane.PLAIN_MESSAGE);
        }
        else if (source.equals(btnExit)){               //exit program
            System.exit(0);
        }
    }
    
    public static void main(String args[]) {
        HomePage page = new HomePage();
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
