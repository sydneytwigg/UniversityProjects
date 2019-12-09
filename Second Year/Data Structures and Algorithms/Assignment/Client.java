//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 2.1

public class Client {
    //declare variables
    private String name, contactDetails;

    public Client(String name, String contactDetails){
        this.name = name;
        this.contactDetails = contactDetails;
    }

    //getters for name and contactDetails
    public String getName(){
        return name;
    }

    public String getContactDetails(){
        return contactDetails;
    }

    //toString class to display
    public String toString(){
        return "Name: " + getName() + " , Contact Details: " + getContactDetails();
    }
}
