//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 2.1
import java.util.Scanner;

public class QueueOfClients {
    public static void main(String [] args){
      //set queue size to 10, as per the client limit per day
      Queue mq = new Queue(10);
      Scanner sc = new Scanner(System.in);

      //loop to input 10 client's details per day
      for (int i = 0; i < 10; i++){
        System.out.println("Enter client name:");
        String name = sc.next();
        System.out.println("Enter contact details:");
        String contactDetails = sc.next();
        mq.enqueue(new Client(name, contactDetails));
      }

      //display queue
      System.out.println("Salon Queue:");
      mq.print();
      System.out.println();
    }
}
