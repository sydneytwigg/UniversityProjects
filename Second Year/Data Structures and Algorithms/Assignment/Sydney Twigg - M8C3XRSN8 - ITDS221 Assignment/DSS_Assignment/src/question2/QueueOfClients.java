//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 2.1
package question2;

import java.util.Scanner;

public class QueueOfClients {
    public static void main(String [] args){
        //set queue size to 10, as per the client limit per day
        QueueOfClients queue = new QueueOfClients();

        //call test class
        queue.testQueue();
    }

    public void testQueue(){
        //create an object of stack class
        Queue queue = new Queue(10);

        Scanner sc = new Scanner(System.in);

        //initialise variables
        char ch;
        String clientName, contactDetails;

        //create menu to test
        do{
            System.out.println("\nStack Operations");
            System.out.println("1. enqueue");
            System.out.println("2. dequeue");
            System.out.println("3. size");
            System.out.println("4. view front");
            System.out.println("5. check full");
            System.out.println("6. check empty");
            System.out.println("7. view queue");

            int choice = sc.nextInt();

            switch(choice){
                case 1: //enqueue
                    try{
                      System.out.println("Enter client name: ");
                      clientName = sc.next();
                      System.out.println("Enter contact details: ");
                      contactDetails = sc.next();
                      queue.enqueue(new Client(clientName, contactDetails));
                    }
                    catch (Exception e){
                      System.out.println("Error: " + e.getMessage());
                    }
                    break;
                case 2: //dequeue
                    try{
                      System.out.println("Served client: " + queue.dequeue());
                    }
                    catch (Exception e){
                      System.out.println("Error: " + e.getMessage());
                    }
                    break;
                case 3: //size
                    System.out.println("Client's booked for today: " + queue.size());
                    break;
                case 4: //front
                    try{
                      System.out.println("Next client booking: " + queue.front());
                    }
                    catch (Exception e){
                      System.out.println("Error: " + e.getMessage());
                    }
                    break;
                case 5: //isFull
                    System.out.println("Full status: " + queue.isFull());
                  break;
                case 6: //isEmpty
                    System.out.println("Empty status: " + queue.isEmpty());
                  break;
                case 7: //view queue
                    System.out.println("Salon Queue:");
                    queue.print();
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
