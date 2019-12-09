
package tree;

/**
 *
 * @author Sydney Twigg
 */
public class Node {
    public int value;
    public Node left;
    public Node right;
    
    public Node(int value){
        this.value = value;
    }
    
    public int compareTo(int a){
        if (this.value == a){
            return 0;
        }
        else if (this.value > a){
            return 1;
        }
        else {
            return -1;
        }
    }
}


