THREADS

//Main Class
public static void main(String[]args){
  //Instantiate Threads
  Thread thread = new Thread(new Task1());
  Thread thread1 = new Thread(new Task2());

  //Run Threads
  thread.start();
  thread1.start();
}

//Task Classes
class Task1 implements Runnable{
  public Task1(){
    //Do stuff
  }

  public void run(){
    Task1();
  }
}

class Task2 extends Thread{

  public Task2(){
    //Do stuff
  }

  public void run(){
    Task2();
  }
}

--------------------------------------------------------------------------------
SERVER AND CLIENT

public class Server(){
  public Server() throws IOException{
    //Create server socket on port 8060
    ServerSocket serverSocket = new ServerSocket(8060);

    //Create a socket to connect to the client
    Socket socket = serverSocket.accept();

    //Declare input and output streams
    DataInputStream inputStream = new DataInputStream(socket.getInputStream());
    DataOutputStream outputStream = new DataOutputStream(socket.getOutputStream());

    //Write to stream
    inputStream.writeUTF("Hello client");

    //Read from stream
    System.out.println("Message from client " + outputStream.readUTF());
  }

  public static void main(String[] args){
    Server server = new Server();
  }
}

public class Client(){
  public Client() throws IOException{
    //Create socket to connect to the server on port 8060
    Socket socket = new Socket("localhost", 8060);

    //Declare input and output streams
    DataInputStream inputStream = new DataInputStream(socket.getInputStream());
    DataOutputStream outputStream = new DataOutputStream(socket.getOutputStream());

    //Write to stream
    inputStream.writeUTF("Hello server");

    //Read from stream
    System.out.println("Message from server " + outputStream.readUTF());
  }

  public static void main(String[] args){
    Client client = new Client();
  }
}
