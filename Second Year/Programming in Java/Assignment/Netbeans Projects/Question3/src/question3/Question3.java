//Author: Sydney Twigg
//Student Number: M8C3XRSN8
//Last Modified: 25/02/2017
//ITJA211 Assignment Question 3

/*Write a method called ‘reverse’ that returns an array which is the reverse of the one it
receives and then write the main method that uses your ‘reverse’ method to print the
reverse of the number array below.
int [] numbers = {34, 78, 2, 4, 5}; */

package question3;

public class Question3 {

    public static void main(String[] args) {
        //declare and initialise the given array numbers
        int [] numbers = {34, 78, 2, 4, 5};
        
        //display the given loop using a for loop
        System.out.println("Array: ");
        for(int i = 0; i < 5; i++){
            System.out.print(numbers[i] + "\t");
        }
        
        //get the returned array from reverse() and store in variable
        int [] reversedNumbers = reverse(numbers);
        
        //display the reversed array using a for loop
        System.out.println("\nReversed array: ");
        for (int i = 0; i < 5; i++){
            System.out.print(reversedNumbers[i] + "\t");
        }
    }
    
    //Method reverse recieves the array numbers and returns the reverse of the array
    //Return type is int [] to return an array - 
        //reference:(Chase, 2008)
    public static int [] reverse(int [] array){
        int [] reverseArray = array; //declare new array with the same size as the numbers array
        
        //"To reverse an int array, you swap items up until you reach the midpoint" - 
            //reference: (Gotovos, 2016)
        //"Iterate over only half of the inputArray (inputArray.length / 2). 
        //For every ith element, swap it with (inputArray.length-1-i)th element." 
            //reference: (Bablad, 2016)
        
        //length/2 ensures that the elements are not swapped twice in the array - only up to the midpoint
        for(int i = 0; i < reverseArray.length/2; i++){ 
            int temp = reverseArray[i];
            reverseArray[i] = reverseArray[reverseArray.length - i - 1];
            reverseArray[reverseArray.length - i - 1] = temp;
        }
        
        //return the reversed array
        return reverseArray;
    }  
}
