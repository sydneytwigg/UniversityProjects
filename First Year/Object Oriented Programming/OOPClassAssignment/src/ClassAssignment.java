//Sydney Twigg
//M8C3XRSN8
//OOP Class Assignment
//Last modified 21/09/2016

import javax.swing.*;

public class ClassAssignment extends JFrame {

    public ClassAssignment(){
        //title bar
        super ("Class Assignment");
        
        //set size
        setBounds (600,400, 450, 700);
        
        //exit program when window is closed
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //create components
        JPanel panel = new JPanel();
        JLabel lbl_ClassAssignment = new JLabel ("Class Assignment");
        JLabel lbl_Name = new JLabel ("Name");
        JLabel lbl_Surname = new JLabel("Surname");
        JLabel lbl_Age = new JLabel ("Age");
        JTextField txt_Name = new JTextField("");
        JTextField txt_Surname = new JTextField("");
        JTextField txt_Age = new JTextField("");
        JButton btn_update = new JButton("Update");
        JButton btn_cancel = new JButton("Cancel");
        
        //instantiate layout type
        GroupLayout layout = new GroupLayout(panel);
        //associate object with panel
        panel.setLayout(layout);
        
        //create horizontal group to define layout
        layout.setHorizontalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(73, 73, 73)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING)
                    .addComponent(lbl_Name)
                    .addComponent(lbl_Surname)
                    .addComponent(lbl_Age))
                .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.TRAILING, false)
                    .addComponent(txt_Age, GroupLayout.DEFAULT_SIZE, 70, Short.MAX_VALUE)
                    .addComponent(txt_Surname)
                    .addComponent(txt_Name))
                .addGap(96, 96, 96))
            .addGroup(layout.createSequentialGroup()
                .addGap(89, 89, 89)
                .addComponent(btn_update)
                .addGap(40, 40, 40)
                .addComponent(btn_cancel)
                .addContainerGap(132, Short.MAX_VALUE))
            .addGroup(GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(lbl_ClassAssignment)
                .addGap(146, 146, 146))
        );
        
        //create vertical group to define layout
        layout.setVerticalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(lbl_ClassAssignment)
                .addGap(58, 58, 58)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_Name,GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE,GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_Name))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_Surname, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_Surname))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_Age)
                    .addComponent(txt_Age, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED, 45, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_update)
                    .addComponent(btn_cancel))
                .addGap(21, 21, 21))
        );
     
        //add panel to content pane
        getContentPane().add(panel);
        pack();
        
        //set visibility to true to display 
        setVisible(true);
            
    }
    public static void main(String args[]) {
        ClassAssignment ca = new ClassAssignment();
        
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
