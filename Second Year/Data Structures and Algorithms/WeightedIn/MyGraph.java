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
public class MyGraph {

    private int[][] adj; // Adjacency matrix
    private Vertex[] vertexList;

    public MyGraph(int size) {
        // initialise the adjacency matrix
        adj = new int[size][size];
        for (int row = 0; row < size; row++) {
            for (int column = 0; column < size; column++) {
                adj[row][column] = 0;
            }
        }
        // initialise the vertex list
        vertexList = new Vertex[size];
        for (int i = 0; i < vertexList.length; i++) {
            vertexList[i] = new Vertex(i);
            vertexList[i].setLabel(i);
            vertexList[i].setWasVisited(false);
        }
    }

    public void addEdge(int i, int j, int weight) {
        adj[i][j] = weight;
        adj[j][i] = weight;
    }

    public void addVertex(int i) {
        vertexList[i] = new Vertex(i);
    }

    public void displayVertex(int i) {
        System.out.print(vertexList[i].getLabel() + " ");
    }

    public int getAdjUnvisitedVertex(int i) {
        int pos = 0;
        while (pos < adj.length) {
            if (adj[i][pos] > 0 && !vertexList[pos].isWasVisited()) {
                return pos;
            }
            pos++;
        }
        return -1;
    }

    public void dfs() {
        MyStack aStack = new MyStack(adj.length);
        // begin at vertex 0;
        vertexList[0].setWasVisited(true);
        aStack.push(0);
        while (!aStack.isEmpty()) {
            int u = aStack.peek();
            int v = getAdjUnvisitedVertex(u);
            if (v == -1) {
                int garbage = aStack.pop();
            } else {
                vertexList[v].setWasVisited(true);
                aStack.push(v);
                displayVertex(u);
                displayVertex(v);
                System.out.println(" ");
            }
        }
        for (int i = 0; i < vertexList.length; i++) {
            vertexList[i].setWasVisited(false);
        }

    }

    public void bfs() {
        MyQueue q = new MyQueue(adj.length);
        // begin at vertex 0
        q.enqueue(0);
        while (!q.isEmpty()) {
            int u = q.dequeue();
            vertexList[u].setWasVisited(true);
            for (int v = 0; v < adj.length; v++) {
                if (adj[u][v] > 0 && !vertexList[v].isWasVisited()) {
                    displayVertex(u);
                    displayVertex(v);
                    System.out.println(" ");
                    q.enqueue(v);
                }
            }
        }
        for (Vertex v : vertexList) {
            v.setWasVisited(false);
        }
    }

    public void kruskal() {
        DisjointSetForest ds = new DisjointSetForest(adj.length);

        // initialise the disjoint set
        for (int i = 0; i < vertexList.length; i++) {
            ds.makeSet(i);
        }
        
        // set up a list of edges from our adjacency matrix
        // instantiate edge array
        EdgeArray ea = new EdgeArray(2*adj.length);
        for (int i = 0; i < ea.getEdge().length; i++) {
            ea.getEdge()[i] = new Edge();
        }
        
        // extract edges from the adjacency matrix
        int count = 0;
        for (int i = 0; i < adj.length; i++) {
            for (int j = 0; j < adj[i].length; j++) {
                if (adj[i][j] > 0 && adj[j][i] > 0) {
                    ea.getEdge()[count].setU(i);
                    ea.getEdge()[count].setV(j);
                    ea.getEdge()[count].setWeight(adj[i][j]);
                    count++;
                }
            }
        }
        
        // Kruskal's algorithm using our disjoint set forest
        ea.sort();  // edge sort into ascending weight order
        
        for (int i = 0; i < ea.getEdge().length; i++) {
            Edge e = ea.getEdge()[i];
            if (ds.find(e.getU()) != ds.find(e.getV())) {
                displayVertex(e.getU());
                displayVertex(e.getV());
                System.out.print(" " + e.getWeight());
                System.out.println(" ");
                ds.union(e.getU(), e.getV());
            }
        }
    }

    @Override
    public String toString() {
        String buffer = "\nAdjacency Matrix\n";
        for (int row = 0; row < adj.length; row++) {
            for (int column = 0; column < adj.length; column++) {
                buffer = buffer + adj[row][column] + ", ";
            }
            buffer = buffer + "\n";
        }
        buffer += "\nVertex List\n";
        for (int i = 0; i < vertexList.length; i++) {
            buffer = buffer + vertexList[i].getLabel() + ", ";
        }
        buffer = buffer + "\n";
        return buffer;
    }

}
