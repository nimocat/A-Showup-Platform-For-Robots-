package myRobot.pojo;



/**
 * AbstractCart entity provides the base persistence definition of the Cart entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCart  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String username;
     private Integer proId;
     private Integer number;


    // Constructors

    /** default constructor */
    public AbstractCart() {
    }

    
    /** full constructor */
    public AbstractCart(String username, Integer proId, Integer number) {
        this.username = username;
        this.proId = proId;
        this.number = number;
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

    public Integer getProId() {
        return this.proId;
    }
    
    public void setProId(Integer proId) {
        this.proId = proId;
    }

    public Integer getNumber() {
        return this.number;
    }
    
    public void setNumber(Integer number) {
        this.number = number;
    }
   








}