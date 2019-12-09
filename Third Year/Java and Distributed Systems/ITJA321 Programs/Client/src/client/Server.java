package client;

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
     * @throws java.io.IOException
     */
    public Server() throws IOException{
        
        ServerSocket serverSocket = new ServerSocket(8090); //Server must have the same port as the client port
        Socket socket = serverSocket.accept();
        DataInputStream inputStream = new DataInputStream(socket.getInputStream());
        DataOutputStream outputStream = new DataOutputStream(socket.getOutputStream());
        outputStream.writeUTF("My name is Nathan");
        System.out.println("Client sent this: " + inputStream.readUTF()); //Gets input from Client
    }
    
    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException {
        Server server = new Server();
    }
}
