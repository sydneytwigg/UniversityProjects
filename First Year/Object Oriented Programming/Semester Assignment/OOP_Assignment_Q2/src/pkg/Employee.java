//Object Oriented Programming Assignment Question 2
//This program calculates the payment structure of full time and part time lecturers, to output the part time net pay & tax, full time net pay & tax, and accumulated net pay & tax.
//Written by: Sydney Twigg
//Last modified: 14/09/2016
package pkg;

//Abstract class that FullTimeEmployee and PartTimeEmployee will inherit from
abstract public class Employee {
    //declare variables that will be used throughout the program
    String name;
    String surname;
    double gross;
    
    //abstract method to calculate net salary
    abstract double CalculateNet();
    
    //abstract method to calculate tax
    abstract double CalculateTax();
  
    //create a constructor in order to access the variables in the child classes, using the super function
    public Employee(String name, String surname, double gross){
        this.name = name;
        this.surname = surname;
        this.gross = gross;
    }
}
//end class
