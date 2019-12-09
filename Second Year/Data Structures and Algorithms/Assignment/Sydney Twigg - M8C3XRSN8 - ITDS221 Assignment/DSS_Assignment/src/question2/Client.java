//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 2.1
package question2;

public class Client {
    private String name, contactDetails;
    
    public Client(String name, String contactDetails){
        this.name = name;
        this.contactDetails = contactDetails;
    }
    
    //getter
    public String getName(){
        return name;
    }
    
    //getter
    public String getContactDetails(){
        return contactDetails;
    }
    
    //toString class to display
    public String toString(){
        return "Name: " + getName() + " , Contact Details: " + getContactDetails();
    }
}
