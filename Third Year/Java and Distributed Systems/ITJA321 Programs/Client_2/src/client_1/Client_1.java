package client_1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

/**
 *
 * @author Nathan
 */
public class Client_1 {
    
    /**
     * Constructor
     * @throws java.io.IOException
     */
    public Client_1() throws IOException{
        
        Socket socket = new Socket("localhost", 8090); //Client must have the same port as the server port
        DataInputStream inputStream = new DataInputStream(socket.getInputStream());
        DataOutputStream outputStream = new DataOutputStream(socket.getOutputStream());
        outputStream.writeUTF("Client");
        System.out.println("The Server said: " + inputStream.readUTF());
    }

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException {
        
        Client_1 client_1 = new Client_1();
    }
    
}
