//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 4

package question4;

public class Stack {
    private int size;
    private Car[] stackArray;
    private int top;

    //create empty stack
    public Stack(int size){
        size = size;
        stackArray = new Car[size];
        top = -1;
    }

    //add item - car - to the top of the stack
    public void push(Car c){
        stackArray[++top] = c;
    }

    //remove the top item from the stack
    public Car pop(){
        return stackArray[top--];
    }

    //View the top item of the stack
    public Car peek(){
        return stackArray[top];
    }

    //Return the size of the stack
    public int size(){
        return size;
    }

    //test if the stack is empty
    public boolean isEmpty(){
        return top == -1;
    }
}
