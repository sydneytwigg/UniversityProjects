package tree;

/**
 *
 * @author Sydney Twigg
 */
public class BinarySearchTree {
    public Node root;
    public int height;
    
    //create new node to be inserted
    public void insert (int value){
        Node node = new Node(value);   
        
        if (root == null){
            root = node;
            return;
        }
        
        insertRec(root, node);
        height = this.heightOfBinaryTree(root);
    }
    
    private void insertRec(Node latestRoot, Node node){
        if ((int)latestRoot.value > (int)node.value) {
            if (latestRoot.left == null){
                latestRoot.left = node;
                return;
            }
            else {
                insertRec(latestRoot.left, node);
            }
        }
        else{
            if (latestRoot.right == null) {
                latestRoot.right = node;
                return;
            }
            else{
                insertRec(latestRoot.right, node);
            }
        }
    }
    
    public int heightOfBinaryTree(Node node){
        if (node == null){
            return 0;
        }
        else{
            return 1 + Math.max(heightOfBinaryTree(node.left), heightOfBinaryTree(node.right));
        }
    }
    
    public int findMinimum() {
        if (root == null){
            return 0;
        }
        
        Node currNode = root;
        
        while (currNode.left != null){
            currNode = currNode.left;
        }
        
        return currNode.value;
    }
    
    public int findMaximum(){
        if (root == null){
            return 0;
        }
        
        Node currNode = root;
           
        while (currNode.right != null){
        currNode = currNode.right;
        }
        
        return currNode.value;
    }
}
