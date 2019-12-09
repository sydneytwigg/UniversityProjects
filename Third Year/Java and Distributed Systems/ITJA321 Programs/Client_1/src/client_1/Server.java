package client_1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

/**
 *
 * @author Nathan Shava
 */
public class Server {

    /**
     * Constructor
     *
     * @throws java.io.IOException
     */
    public Server() throws IOException {

        ServerSocket serverSocket = new ServerSocket(8090); //Server must have the same port as the client port
        
        while (true) {
            Socket socket = serverSocket.accept();
            DataInputStream inputStream = new DataInputStream(socket.getInputStream());
            DataOutputStream outputStream = new DataOutputStream(socket.getOutputStream());
            outputStream.writeUTF("My name is Nathan");
            System.out.println("Client sent this: " + inputStream.readUTF()); //Gets input from Client
        }
    }
    
    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException {
        
        Server server = new Server();
    }

}

class Shape implements Runnable {

    public String triangle(){
    
        double area;
        area = ((25/2) * 6);
        
        return "Area of the triangle is: " + area;
    }
    
    public String rectangle(){
    
        double area;
        area = (25 * 10);
        
        return "Area of the rectangle is: " + area;
    }
    
    
    @Override
    public void run() {
        triangle();
        rectangle();
    }
    
}
