
import java.util.Scanner;

public class LabTech extends Employer{
    private String name;
    private Double grossPay;
    
    public LabTech(String name, Double grossPay){
        this.name = name;
        this.grossPay = grossPay;
    }
    
    @Override
    public double calcNet(){
        Double tax;
        tax = grossPay * 0.14;
        netPay = grossPay - tax;
        return netPay;
    }
    
    public static void main(String [] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter name: ");
        String name = sc.next();
        System.out.println("Enter gross: ");
        Double gross = sc.nextDouble();
        
        LabTech lab = new LabTech(name, gross);
       
        
        System.out.println("Name: " + name);
        System.out.println("Net pay: " + lab.calcNet());
    }
}
