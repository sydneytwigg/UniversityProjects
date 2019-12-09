//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 2.1
package question2;

public class Queue {

    private int front, rear, count, size;
    private Client[] data;

    //create empty queue
    public Queue(int n){
        data = new Client[n];
        front = 0;
        rear = 0;
        count = 0;
    }

    //test whether or not the queue is empty
    public boolean isEmpty(){
        return (count == 0);
    }

    //test whether or not the queue is full
    public boolean isFull() {
        return (count == data.length);
    }

    //add item - client - to the end of the queue
    public void enqueue(Client val) {
        data[rear] = val;
        rear = (rear + 1) % data.length;
        count++;
    }

    //remove item - client - from the front of the queue
    public Client dequeue() {
        Client value = data[front + 1];
        front = (front + 1) % data.length;
        count--;
        return value;
    }

    //returns the client in the front of the queue
    public Client front() {
      return data[front];
    }

    //returns the size of the queue
    public int size(){
      return size;
    }

    //display the queue
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
