package client_1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nathan Shava
 */
public class Server {

    /**
     * Constructor
     * @throws java.io.IOException
     */
    public Server() throws IOException {

        ServerSocket serverSocket = new ServerSocket(8090); //Server must have the same port as the client port

        while (true) {
            Socket socket = serverSocket.accept();
            Thread thread = new Thread(new Shape(socket));
            thread.start();

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

    Socket socket = new Socket();
    DataInputStream inputStream;
    DataOutputStream outputStream;

    public Shape(Socket soc) throws IOException {
        this.socket = soc;
        inputStream = new DataInputStream(socket.getInputStream());
        outputStream = new DataOutputStream(socket.getOutputStream());

    }

    public String triangle() {

        double area;
        area = ((25 / 2) * 6);

        return "Area of the triangle is: " + area;
    }

    public String rectangle() {

        double area;
        area = (25 * 10);

        return "Area of the rectangle is: " + area;
    }

    @Override
    public void run() {

        try {
            String check = inputStream.readUTF();
            
            if (check.equals("Ndai")) {
                
                outputStream.writeUTF(triangle());
            } else {

                System.out.println(rectangle());
            }
        } catch (IOException ex) {
            Logger.getLogger(Shape.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
