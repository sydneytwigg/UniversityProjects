//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 4

public class Stack {
    private int size;
    private Car[] stackArray;
    private int top;

    //create a new stack
    public Stack(int size){
        size = size;
        stackArray = new Car[size];
        top = -1;
    }

    //add a new item - car - to the top of the stack
    public void push(Car c){
        stackArray[++top] = c;
    }

    //remove item from the top of the stack
    public Car pop(){
        return stackArray[top--];
    }

    //return the top item from the stack, without removing it
    public Car peek(){
        return stackArray[top];
    }

    //returns the number of items
    public int size()
        return size;
    }

    public boolean isEmpty(){
        return top == -1;
    }
}
