public class Node{

  public int value;
  public Node left;
  public Node right;

  public Node(int value){
    this.value = value;
  }

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

public class plainBinarySearchTree{
  public Node root;
  public int height;

  //create a new node to be inserted
  public void insert;
}
