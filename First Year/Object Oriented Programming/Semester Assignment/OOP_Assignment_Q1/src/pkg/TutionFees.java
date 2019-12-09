//Object Oriented Programming Assignment Question 1.3
//Program to calculate and display tution fees in 10 years, with a 6% increase each year
//Written by: Sydney Twigg
//Last modified: 12/09/2016
package pkg;

import java.util.Scanner;

public class TutionFees {
    
    //Declare variables; currentFee for the 2016 fee & expectedFee for the fee in 2026
    private Double currentFee;
    private Double expectedFee;
    
    //Constructor for the class, currentFee is initialised in this as it will be inputted
    public TutionFees(Double currentFee){
        this.currentFee = currentFee;
    }
    
    //calculate the fees, and recieve the 2016 fee into the method
    public void calcFee(Double currentFee){
        //initalise the expected fee to the current fee as a starting point
        this.expectedFee = currentFee;
        
        //calculate the expected fee by running it through a for loop 10 times, adding the 6% each time to the previous number
        for (int i = 0; i < 9; i++){
            this.expectedFee = expectedFee + (expectedFee * 0.06);
            
            //test calculation - used to test the output
            //System.out.println();
            //System.out.println(this.expectedFee);
        }
    }
    
    //output method to display the fee in 2026
    public void displayAll(){
        System.out.println("Expected fee: " + expectedFee);
    }
    
    public static void main(String [] args){
        //create a variable to hold the user inputted fee
        Double currentFee;
        
        //get the user inputted fee
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter current fee: ");
        currentFee = sc.nextDouble();
        
        //Instantiate an object of the TutionFees class and call the constructor
        TutionFees tf = new TutionFees(currentFee);
        
        //call the methods from the class to run them
        tf.calcFee(currentFee);
        tf.displayAll();
    }
}
//end class