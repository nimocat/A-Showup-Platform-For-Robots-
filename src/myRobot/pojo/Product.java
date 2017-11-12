package myRobot.pojo;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */
public class Product extends AbstractProduct implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** minimal constructor */
	public Product(String name) {
		super(name);
	}

	/** full constructor */
	public Product(String name, Double price, Integer number, String detail) {
		super(name, price, number, detail);
	}

}
