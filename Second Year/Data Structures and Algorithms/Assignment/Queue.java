//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 2.1

public class Queue {
    private int front, rear, count;
    private Client[] data;

    //create new queue
    public Queue(int n){
      data = new Client[n];
      front = 0;
      rear = 0;
      count = 0;
    }

    //test to see whether the queue is empty
    public boolean isEmpty(){
      return (count == 0);
    }

    //test to see whether the queue is full
    public boolean isFull() {
      return (count == data.length);
    }

    //adds an item to the end of the queue
    public void enqueue(Client val) {
      data[rear] = val;
      rear = (rear + 1) % data.length;
      count++;
    }

    //remove an item from the front of a queue
    public Client dequeue() {
      Client value = data[front + 1];
      front = (front + 1) % data.length;
      count--;
      return value;
    }

    //display queue
    public void print() {
      for (int i = 0; i < data.length; i++) {
        if (i == front) {
          System.out.println(data[i] + "(f), ");
        } else if (i == rear) {
          System.out.println(data[i] + "(r), ");
        } else {
          System.out.println(data[i] + ", ");
        }
      }
  }
}
