/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package heapsort;

/**
 *
 * @author Sydney Twigg
 */
public class HeapSort {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Heap hs = new Heap();
        
        
        hs.getInput();
        hs.sort();
        hs.display();
    }
    
}
