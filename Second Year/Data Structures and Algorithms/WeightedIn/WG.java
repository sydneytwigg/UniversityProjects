/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wg;

/**
 *
 * @author MakhuraneT
 */
public class WG {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int n = 6;
        MyGraph gr = new MyGraph(n);
        gr.addVertex(0);
        gr.addVertex(1);
        gr.addVertex(2);
        gr.addVertex(3);
        gr.addVertex(4);
        gr.addVertex(5);
        
        // addEdge(u, v, weight)
        gr.addEdge(0, 1, 3000);
        gr.addEdge(0, 2, 1000);
        gr.addEdge(2, 3, 6000);
        gr.addEdge(3, 4, 7000);
        gr.addEdge(3, 5, 1000);
        
        System.out.println(gr.toString());
        
        System.out.println("\nDepth First Search\n");
        gr.dfs();
        
        System.out.println("\nBreadth First Search\n");
        gr.bfs();
        
        
        System.out.println("\nMinimum Spanning Tree\n");
        gr.kruskal();
    }
    
}
