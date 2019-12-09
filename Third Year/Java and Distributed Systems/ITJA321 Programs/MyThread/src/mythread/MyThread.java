package mythread;

import java.util.Scanner;

/**
 *
 * @author Nathan Shava
 */
public class MyThread {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        /**
         * Instantiate thread class and start executing tasks
         */
        Thread thread = new Thread(new Work());
        Thread thread2 = new Thread(new Work());

        Work1 myWork = new Work1();
        myWork.start();

    }

}

/**
 * Outer class Work
 */
class Work implements Runnable {

    void triangle(double base, double height) {

        System.out.println("The area of the triangle is: "
                + ((base / 2) * height));
    }

    void rectangle(double length, double width) {

        System.out.println("The area of the rectangle is: "
                + (length * width));
    }

    void circle(double radius) {

        System.out.println("The area of the circle is: "
                + (Math.PI * Math.pow(radius, 2)));
    }

    void printTriangle() {

        for (int row = 0; row < 7; row++) {

            for (int inner = row; inner > 0; inner--) {
                System.out.print("*");
            }
            System.out.println();
        }
    }

    /**
     *
     */
    @Override
    public void run() {
        /**
         * Call methods
         */
        this.printTriangle();
        /**
         * Scanner object
         */
        Scanner input = new Scanner(System.in);
        /**
         * Capture triangle specs
         */
        System.out.println("Enter the base of the triangle: ");
        double base = input.nextDouble();
        System.out.println("Enter the height of the triangle: ");
        double height = input.nextDouble();
        this.triangle(6, 8);
        /**
         * Capture rectangle specs
         */
        System.out.println("-------------------------------------");
        System.out.println("Enter the length of the rectangle: ");
        double length = input.nextDouble();
        System.out.println("Enter the width of the rectangle: ");
        double width = input.nextDouble();
        this.rectangle(15, 8);
        /**
         * Capture circle specs
         */
        System.out.println("--------------------------------------");
        System.out.println("Enter the radius of the circle: ");
        double radius = input.nextDouble();
        this.circle(22.5);
    }

}

class Work1 extends Thread {

    void printNumbers() {

        for (int value = 300; value < 950; value++) {

            if ((value % 3 != 0 && value % 4 != 0)) {
                int row = 0;

                while (row < 9) {
                    System.out.print(value + ", ");
                    row++;
                }

                System.out.println();
            }
        }
    }

    void printTriangle() {

        for (int level = 0; level < 10; level++) {

            for (int star = 0; star < level; star++) {
                System.out.print("*");
            }
            System.out.println("");
        }
    }

    @Override
    public void run() {
        printNumbers();
        printTriangle();
    }
}
