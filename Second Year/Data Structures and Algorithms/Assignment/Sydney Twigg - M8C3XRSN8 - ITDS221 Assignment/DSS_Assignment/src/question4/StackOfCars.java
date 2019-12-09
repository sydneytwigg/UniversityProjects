//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 4

package question4;

import java.util.Scanner;

public class StackOfCars {


    public static void main(String [] args){
        StackOfCars stack = new StackOfCars();
        stack.testStack();
    }

    public void testStack(){
        //create an object of stack class
        Stack stack = new Stack(6);

        Scanner sc = new Scanner(System.in);

        //initialise variables
        char ch;
        String model, plateNum;

        //create menu to test
        do{
            System.out.println("\nStack Operations");
            System.out.println("1. push");
            System.out.println("2. pop");
            System.out.println("3. size");
            System.out.println("4. peek");

            int choice = sc.nextInt();

            switch(choice){
                case 1:
                    try{
                      System.out.println("Enter model: ");
                      model = sc.next();
                      System.out.println("Enter plate number: ");
                      plateNum = sc.next();
                      stack.push(new Car(model, plateNum));
                    }
                    catch (Exception e){
                      System.out.println("Error: " + e.getMessage());
                    }
                    break;
                case 2:
                    try{
                      System.out.println("Removed: " + stack.pop());
                    }
                    catch (Exception e){
                      System.out.println("Error: " + e.getMessage());
                    }
                    break;
                case 3:
                    System.out.println("Cars available: " + stack.size());
                    break;
                case 4:
                    try{
                      System.out.println("Next car available: " + stack.peek());
                    }
                    catch (Exception e){
                      System.out.println("Error: " + e.getMessage());
                    }
                    break;
                default:
                    System.out.println("Invalid entry");
                    break;
            }

            System.out.println("Do you want to continue (Type y or n) \n");
            ch = sc.next().charAt(0);
        }
        while (ch == 'Y'||ch == 'y');
    }
}
