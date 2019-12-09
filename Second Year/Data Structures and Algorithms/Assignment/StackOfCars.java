//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 4

public class StackOfCars {
    public static void main(String [] args){
        Stack stack = new Stack(6);

        //cars: model, license plateNum
        stack.push(new Car("BMW", "WP 430-100"));
        stack.push(new Car("Toyota", "100-871 ZN"));
        stack.push(new Car("Jeep", "H80 O08 GP"));
        stack.push(new Car("Ford", "WP 098-192"));
        stack.push(new Car("Mercedes", "980-981 ZN"));
        stack.push(new Car("Volkswagen", "WP 879-091"));

        System.out.println("Stack size: " + stack.size());
        System.out.println(stack.pop());
        System.out.println(stack.peek());

        while (!stack.isEmpty()){
            Car value = stack.pop();
            System.out.println(value);
        }

        System.out.println("Stack empty: " + stack.isEmpty());
    }
}
