package myRobot.pojo;



/**
 * AbstractProduct entity provides the base persistence definition of the Product entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractProduct  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String name;
     private Double price;
     private Integer number;
     private String detail;


    // Constructors

    /** default constructor */
    public AbstractProduct() {
    }

	/** minimal constructor */
    public AbstractProduct(String name) {
        this.name = name;
    }
    
    /** full constructor */
    public AbstractProduct(String name, Double price, Integer number, String detail) {
        this.name = name;
        this.price = price;
        this.number = number;
        this.detail = detail;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getNumber() {
        return this.number;
    }
    
    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getDetail() {
        return this.detail;
    }
    
    public void setDetail(String detail) {
        this.detail = detail;
    }
   








}