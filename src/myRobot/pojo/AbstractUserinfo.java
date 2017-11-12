package myRobot.pojo;



/**
 * AbstractUserinfo entity provides the base persistence definition of the Userinfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUserinfo  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String username;
     private String password;
     private String emailaddress;


    // Constructors

    /** default constructor */
    public AbstractUserinfo() {
    }

	/** minimal constructor */
    public AbstractUserinfo(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    /** full constructor */
    public AbstractUserinfo(String username, String password, String emailaddress) {
        this.username = username;
        this.password = password;
        this.emailaddress = emailaddress;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailaddress() {
        return this.emailaddress;
    }
    
    public void setEmailaddress(String emailaddress) {
        this.emailaddress = emailaddress;
    }
   








}