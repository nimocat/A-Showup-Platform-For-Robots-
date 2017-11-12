package myRobot.pojo;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
public class Order extends AbstractOrder implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** full constructor */
	public Order(String username, Integer proId, Integer number, String ordernum) {
		super(username, proId, number, ordernum);
	}

}
