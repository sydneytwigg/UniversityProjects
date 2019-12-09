//Object Oriented Programming Assignment Question 2
//This program calculates the payment structure of full time and part time lecturers, to output the part time net pay & tax, full time net pay & tax, and accumulated net pay & tax.
//Written by: Sydney Twigg
//Last modified: 14/09/2016
package pkg;

import java.util.Scanner;

//Inherits directly from FullTimeEmployee and indirectly from Employee through FullTimeEmployee. This class calculates the part time net pay and tax, as well as accumulated net pay and tax. 
//Main method is in this class, thus this class has the input and display functionality for the program.
public class PartTimeEmployee extends FullTimeEmployee {
    
    //Declare and initialise variables. hourlyRate set at R200 as specified in question.
    private Double hourlyRate = 200.0;
    //Variable to hold the number of hours worked by the employee per week, this allows for part time pay calculations.
    private int hoursWorked;
    
    //Constructor to recieve the variables from the parent classes using super, as well as to recieve the hoursWorked variable.
    public PartTimeEmployee(String name, String surname, Double gross, int hoursWorked) {
        super(name, surname, gross);  
        this.hoursWorked = hoursWorked;
    }

    //This allows for the hoursWorked variable to be used in other methods.
    public int getHoursWorked() {
        return hoursWorked;
    }
    
    //Calculate the monthly part time salary based on hours worked per week.
    public Double partTimeSalary(){
        //hoursWorked is recieved using the getHoursWorked accessor.
        int hoursWorked = getHoursWorked();
        
        //* 4 to make it monthly pay
        Double partTimeSalary = (hoursWorked * hourlyRate) * 4;
        
        return partTimeSalary;
    }
    
    //inherited abstract method, this calculates the tax on the part time pay earned.
    @Override
    double CalculateTax(){
        //hoursWorked is recieved using the getHoursWorked accessor.
        int hoursWorked = getHoursWorked();
        Double tax;
        Double taxPerc = 0.0; 
        //recieved from the method to calculate the part time salary and stored as a variable.
        Double partTimeSalary = partTimeSalary();
        
        //if-else statement to determine the tax percentage based on how many part time hours they work per week. 
        if (hoursWorked <= 10){
            taxPerc = 0.05;
        }
        else if (hoursWorked > 10){
            taxPerc = 0.075;
        }
        
        //calculate the tax amount based on the outcome of the if-else statement
        tax = partTimeSalary * taxPerc;
        return tax;
    }
    
    //inherited abstract method, this calculates the employees part time net pay.
    @Override
    double CalculateNet() {
        //recieve the calculated tax amount from the CalculateTax method and stored as a variable
        Double tax = CalculateTax();
        //receive the calculated part time salary and stored as a variable
        Double partTimeSalary = partTimeSalary();
        
        //calculate part time net
        Double net = partTimeSalary - tax;
        
        return net; 
    }
    
    //method to calculate accumulated tax, the sum of the part time and full time tax.
    public Double accumulatedTax() {
        //recieve full time tax from the FullTimeEmployee class and store as a variable.
        Double fullTimeTax = super.calculateTax();
        //recieve part time tax from CalculateTax method and store as a variable.
        Double partTimeTax = CalculateTax();
        
        //calculate the sum of the part time and full time tax
        Double accumulatedTax = fullTimeTax + partTimeTax;
        
        return accumulatedTax;
    }
    
    //method to calculate the sum of the part time and full time net pay
    public Double accumulatedNet() {
        //recieve full time net from the FullTimeEmployee class and store as a variable
        Double fullTimeNet = super.calculateNet();
        //recieve part time net from CalculateNet method and store as a variable
        Double partTimeNet = CalculateNet();
        
        //calculate the sum of the part time and full time net pay
        Double accumulatedNet = fullTimeNet + partTimeNet;
        
        return accumulatedNet; 
    }
    
    //method to display all information on the employee
    public void displayAll(){
       //display
        System.out.println("EMPLOYEE INFORMATION");
        System.out.println("Name: " + name);
        System.out.println("Surmane: " + surname);
        System.out.println("Gross: R" + gross);
        //amounts are recieved from methods in this class as well as methods from FullTimeEmployee using the super function
        System.out.println("Hours worked per week: " + getHoursWorked());
        System.out.println("Full Time Net: R" + super.calculateNet());
        System.out.println("Part Time Net: R" + CalculateNet());
        System.out.println("Accumulated Net: R" + accumulatedNet());
        System.out.println("Full Time Tax: R" + super.calculateTax());
        System.out.println("Part Time Tax: R" + CalculateTax());
        System.out.println("Accumulated Tax: R" + accumulatedTax());
    }
    
    //main method
    public static void main(String [] args){
        //Declare variables that will be used to capture inputted data
        String name, surname;
        Double gross;
        int hoursWorked;
        
        //instantiate scanner
        Scanner sc = new Scanner(System.in);
        
        //get user inputs 
        System.out.println("Enter name: ");
        name = sc.next();
        System.out.println("Enter surname: ");
        surname = sc.next();
        System.out.println("Enter gross: ");
        gross = sc.nextDouble();
        System.out.println("Enter hours worked per week: ");
        hoursWorked = sc.nextInt();
        
        //instantiate an object of the PartTimeEmployee class and call the constructor
        PartTimeEmployee obj = new PartTimeEmployee(name, surname, gross, hoursWorked);
        
        //call the displayAll method to display outputs
        obj.displayAll();   
    } 
}
//end class