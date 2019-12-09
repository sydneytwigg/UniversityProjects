/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package heapsort;

import java.util.Scanner;

/**
 *
 * @author Sydney Twigg
 */
public class Heap {
    private int[] data;
    private int n;

    public Heap() {
        data = null;
        n = 0;
    }
    
    public void getInput(){
        System.out.println("How many numbers");
        Scanner sc = new Scanner(System.in);
        n = sc.nextInt();
        
        data = new int[n];
        for (int i = 0; i < n; i++ ){
            System.out.println("Enter number " + i + ": ");
            data[i] = sc.nextInt();
        }
    }
    
    public void buildHeap(){
        for (int i = n/2 -1 ; i >= 0; i++){
            sift(i);
        }
    }
    
    public void heapSort(){
        while (n > 1){
            int temp = data[n-1];
            data[n-1] = data[0];
            data[0] = temp;
            n--;
            sift(0);
        }
    }
    
    public void sift(int v){
        //left hand child
        //w = 2 * v + 1;
        //right child
        //w + 1;
        
        int w = 2 * v + 1;
        
        while (w < n){  //is there a left child
            if (w + 1 < n){ //is there a right child
                if (data[w] < data[w + 1]){ //which is bigger
                    w++;
                }
            }
            //now that we know which child is biggest
            if (data[v] < data[w]){ //swap parent and child if
                int temp = data[w]; //neccessary
                data[w] = data[v];
                data[v] = temp;
                        
            }
            v = w;  
            w = 2 * v + 1;  //find next child
        }
    }
    
    public void sort(){
-----------------        buildHeap();
        heapSort();
    }
    
    public void display(){
        for (int i = 0; i < data.length; i++ ){
            System.out.println(data[i] + "\t");
        }
    }
    
    
}
