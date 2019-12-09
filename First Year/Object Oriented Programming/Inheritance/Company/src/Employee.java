
public class Employee extends Company {

    private String name;
    private Double grossPay;
    
    public Employee(String name, Double grossPay){
        this.name = name;
        this.grossPay = grossPay;
    }
    
    @Override
    Double calcNet() {
        Double tax = grossPay * 0.14;
        netPay = grossPay - tax;
        return netPay;
    }
    
    public static void main (String [] args){
        Employee emp = new Employee("Ndai", 20.50);
        System.out.println("Name: " + emp.name);
        System.out.println("Net pay: " + emp.calcNet());
    }
    
}
