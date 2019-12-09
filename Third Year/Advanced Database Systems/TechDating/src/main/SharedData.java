
package main;

/**
 *
 * @author Sydney Twigg
 */
public class SharedData {
    public static String username;
    public static String memberID;
    
    public static void setUsername(String username){
        SharedData.username = username;
    }
    
    public static String getUsername(){
        return username;
    }

    public static String getMemberID() {
        return memberID;
    }

    public static void setMemberID(String memberID) {
        SharedData.memberID = memberID;
    }
    
    
}
