package myRobot.pojo;



/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */
public class Userinfo extends AbstractUserinfo implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public Userinfo() {
    }

	/** minimal constructor */
    public Userinfo(String username, String password) {
        super(username, password);        
    }
    
    /** full constructor */
    public Userinfo(String username, String password, String emailaddress) {
        super(username, password, emailaddress);        
    }
   
}
