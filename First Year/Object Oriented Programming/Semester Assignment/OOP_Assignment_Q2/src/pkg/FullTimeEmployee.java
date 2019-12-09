//Object Oriented Programming Assignment Question 2
//This program calculates the payment structure of full time and part time lecturers, to output the part time net pay & tax, full time net pay & tax, and accumulated net pay & tax.
//Written by: Sydney Twigg
//Last modified: 14/09/2016
package pkg;

//Class that part time employee will inherit from, this calculates the full time employee tax and net pay
public class FullTimeEmployee extends Employee{

    //constructor class - using super to recieve name, surname and gross from Employee
    public FullTimeEmployee(String name, String surname, Double gross) {
        super(name, surname, gross);
    }
    
    //accessors
    public String getName() {
        return name;
    }
    
    public String getSurname() {
        return surname;
    }
    
    public Double getGross() {
        return gross;
    }
    
    //mutators
    public void setName(String name) {
        this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setGross(Double gross) {
        this.gross = gross;
    }     
    
    //This method is to calculate the employees tax on their gross pay
    Double calculateTax(){
        Double tax;
        tax = getGross() * 0.11;
        return tax; 
    }
    
    //This method is to calculate the employees net based on gross and tax as calculated above.
    Double calculateNet(){
        Double tax = calculateTax();
        Double net;
        net = getGross() - tax;
        return net;
    }

    //abstract method from Employee, has no functionality as it is only allowing the PartTimeEmployee class to inherit from Employee through FullTimeEmployee
    @Override
    double CalculateNet() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
    //abstract method from Employee, has no functionality as it is only allowing the PartTimeEmployee class to inherit from Employee through FullTimeEmployee
    @Override
    double CalculateTax() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
}
//end class